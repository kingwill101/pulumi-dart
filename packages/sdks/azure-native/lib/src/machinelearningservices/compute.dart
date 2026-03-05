import 'package:pulumi/pulumi.dart' as pulumi;
import 'aksresponse.dart';
import 'compute_args.dart';
import 'managed_service_identity_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Machine Learning compute object wrapped into ARM resource envelope.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a AML Compute
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var compute = new AzureNative.MachineLearningServices.Compute("compute", new()
///     {
///         ComputeName = "compute123",
///         Location = "eastus",
///         Properties = new AzureNative.MachineLearningServices.Inputs.AmlComputeArgs
///         {
///             ComputeType = "AmlCompute",
///             Properties = new AzureNative.MachineLearningServices.Inputs.AmlComputePropertiesArgs
///             {
///                 EnableNodePublicIp = true,
///                 IsolatedNetwork = false,
///                 OsType = AzureNative.MachineLearningServices.OsType.Windows,
///                 RemoteLoginPortPublicAccess = AzureNative.MachineLearningServices.RemoteLoginPortPublicAccess.NotSpecified,
///                 ScaleSettings = new AzureNative.MachineLearningServices.Inputs.ScaleSettingsArgs
///                 {
///                     MaxNodeCount = 1,
///                     MinNodeCount = 0,
///                     NodeIdleTimeBeforeScaleDown = "PT5M",
///                 },
///                 VirtualMachineImage = new AzureNative.MachineLearningServices.Inputs.VirtualMachineImageArgs
///                 {
///                     Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/myImageGallery/images/myImageDefinition/versions/0.0.1",
///                 },
///                 VmPriority = AzureNative.MachineLearningServices.VmPriority.Dedicated,
///                 VmSize = "STANDARD_NC6",
///             },
///         },
///         ResourceGroupName = "testrg123",
///         WorkspaceName = "workspaces123",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewCompute(ctx, "compute", &machinelearningservices.ComputeArgs{
/// 			ComputeName: pulumi.String("compute123"),
/// 			Location:    pulumi.String("eastus"),
/// 			Properties: &machinelearningservices.AmlComputeArgs{
/// 				ComputeType: pulumi.String("AmlCompute"),
/// 				Properties: &machinelearningservices.AmlComputePropertiesArgs{
/// 					EnableNodePublicIp:          pulumi.Bool(true),
/// 					IsolatedNetwork:             pulumi.Bool(false),
/// 					OsType:                      pulumi.String(machinelearningservices.OsTypeWindows),
/// 					RemoteLoginPortPublicAccess: pulumi.String(machinelearningservices.RemoteLoginPortPublicAccessNotSpecified),
/// 					ScaleSettings: &machinelearningservices.ScaleSettingsArgs{
/// 						MaxNodeCount:                pulumi.Int(1),
/// 						MinNodeCount:                pulumi.Int(0),
/// 						NodeIdleTimeBeforeScaleDown: pulumi.String("PT5M"),
/// 					},
/// 					VirtualMachineImage: &machinelearningservices.VirtualMachineImageArgs{
/// 						Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/myImageGallery/images/myImageDefinition/versions/0.0.1"),
/// 					},
/// 					VmPriority: pulumi.String(machinelearningservices.VmPriorityDedicated),
/// 					VmSize:     pulumi.String("STANDARD_NC6"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			WorkspaceName:     pulumi.String("workspaces123"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.machinelearningservices.Compute;
/// import com.pulumi.azurenative.machinelearningservices.ComputeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var compute = new Compute("compute", ComputeArgs.builder()
///             .computeName("compute123")
///             .location("eastus")
///             .properties(AmlComputeArgs.builder()
///                 .computeType("AmlCompute")
///                 .properties(AmlComputePropertiesArgs.builder()
///                     .enableNodePublicIp(true)
///                     .isolatedNetwork(false)
///                     .osType("Windows")
///                     .remoteLoginPortPublicAccess("NotSpecified")
///                     .scaleSettings(ScaleSettingsArgs.builder()
///                         .maxNodeCount(1)
///                         .minNodeCount(0)
///                         .nodeIdleTimeBeforeScaleDown("PT5M")
///                         .build())
///                     .virtualMachineImage(VirtualMachineImageArgs.builder()
///                         .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/myImageGallery/images/myImageDefinition/versions/0.0.1")
///                         .build())
///                     .vmPriority("Dedicated")
///                     .vmSize("STANDARD_NC6")
///                     .build())
///                 .build())
///             .resourceGroupName("testrg123")
///             .workspaceName("workspaces123")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const compute = new azure_native.machinelearningservices.Compute("compute", {
///     computeName: "compute123",
///     location: "eastus",
///     properties: {
///         computeType: "AmlCompute",
///         properties: {
///             enableNodePublicIp: true,
///             isolatedNetwork: false,
///             osType: azure_native.machinelearningservices.OsType.Windows,
///             remoteLoginPortPublicAccess: azure_native.machinelearningservices.RemoteLoginPortPublicAccess.NotSpecified,
///             scaleSettings: {
///                 maxNodeCount: 1,
///                 minNodeCount: 0,
///                 nodeIdleTimeBeforeScaleDown: "PT5M",
///             },
///             virtualMachineImage: {
///                 id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/myImageGallery/images/myImageDefinition/versions/0.0.1",
///             },
///             vmPriority: azure_native.machinelearningservices.VmPriority.Dedicated,
///             vmSize: "STANDARD_NC6",
///         },
///     },
///     resourceGroupName: "testrg123",
///     workspaceName: "workspaces123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// compute = azure_native.machinelearningservices.Compute("compute",
///     compute_name="compute123",
///     location="eastus",
///     properties={
///         "compute_type": "AmlCompute",
///         "properties": {
///             "enable_node_public_ip": True,
///             "isolated_network": False,
///             "os_type": azure_native.machinelearningservices.OsType.WINDOWS,
///             "remote_login_port_public_access": azure_native.machinelearningservices.RemoteLoginPortPublicAccess.NOT_SPECIFIED,
///             "scale_settings": {
///                 "max_node_count": 1,
///                 "min_node_count": 0,
///                 "node_idle_time_before_scale_down": "PT5M",
///             },
///             "virtual_machine_image": {
///                 "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/myImageGallery/images/myImageDefinition/versions/0.0.1",
///             },
///             "vm_priority": azure_native.machinelearningservices.VmPriority.DEDICATED,
///             "vm_size": "STANDARD_NC6",
///         },
///     },
///     resource_group_name="testrg123",
///     workspace_name="workspaces123")
///
/// ```
///
/// ```yaml
/// resources:
///   compute:
///     type: azure-native:machinelearningservices:Compute
///     properties:
///       computeName: compute123
///       location: eastus
///       properties:
///         computeType: AmlCompute
///         properties:
///           enableNodePublicIp: true
///           isolatedNetwork: false
///           osType: Windows
///           remoteLoginPortPublicAccess: NotSpecified
///           scaleSettings:
///             maxNodeCount: 1
///             minNodeCount: 0
///             nodeIdleTimeBeforeScaleDown: PT5M
///           virtualMachineImage:
///             id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Compute/galleries/myImageGallery/images/myImageDefinition/versions/0.0.1
///           vmPriority: Dedicated
///           vmSize: STANDARD_NC6
///       resourceGroupName: testrg123
///       workspaceName: workspaces123
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a DataFactory Compute
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var compute = new AzureNative.MachineLearningServices.Compute("compute", new()
///     {
///         ComputeName = "compute123",
///         Location = "eastus",
///         Properties = new AzureNative.MachineLearningServices.Inputs.DataFactoryArgs
///         {
///             ComputeType = "DataFactory",
///         },
///         ResourceGroupName = "testrg123",
///         WorkspaceName = "workspaces123",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewCompute(ctx, "compute", &machinelearningservices.ComputeArgs{
/// 			ComputeName: pulumi.String("compute123"),
/// 			Location:    pulumi.String("eastus"),
/// 			Properties: &machinelearningservices.DataFactoryArgs{
/// 				ComputeType: pulumi.String("DataFactory"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			WorkspaceName:     pulumi.String("workspaces123"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.machinelearningservices.Compute;
/// import com.pulumi.azurenative.machinelearningservices.ComputeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var compute = new Compute("compute", ComputeArgs.builder()
///             .computeName("compute123")
///             .location("eastus")
///             .properties(DataFactoryArgs.builder()
///                 .computeType("DataFactory")
///                 .build())
///             .resourceGroupName("testrg123")
///             .workspaceName("workspaces123")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const compute = new azure_native.machinelearningservices.Compute("compute", {
///     computeName: "compute123",
///     location: "eastus",
///     properties: {
///         computeType: "DataFactory",
///     },
///     resourceGroupName: "testrg123",
///     workspaceName: "workspaces123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// compute = azure_native.machinelearningservices.Compute("compute",
///     compute_name="compute123",
///     location="eastus",
///     properties={
///         "compute_type": "DataFactory",
///     },
///     resource_group_name="testrg123",
///     workspace_name="workspaces123")
///
/// ```
///
/// ```yaml
/// resources:
///   compute:
///     type: azure-native:machinelearningservices:Compute
///     properties:
///       computeName: compute123
///       location: eastus
///       properties:
///         computeType: DataFactory
///       resourceGroupName: testrg123
///       workspaceName: workspaces123
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an AKS Compute
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var compute = new AzureNative.MachineLearningServices.Compute("compute", new()
///     {
///         ComputeName = "compute123",
///         Location = "eastus",
///         Properties = new AzureNative.MachineLearningServices.Inputs.AKSArgs
///         {
///             ComputeType = "AKS",
///         },
///         ResourceGroupName = "testrg123",
///         WorkspaceName = "workspaces123",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewCompute(ctx, "compute", &machinelearningservices.ComputeArgs{
/// 			ComputeName: pulumi.String("compute123"),
/// 			Location:    pulumi.String("eastus"),
/// 			Properties: &machinelearningservices.AKSArgs{
/// 				ComputeType: pulumi.String("AKS"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			WorkspaceName:     pulumi.String("workspaces123"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.machinelearningservices.Compute;
/// import com.pulumi.azurenative.machinelearningservices.ComputeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var compute = new Compute("compute", ComputeArgs.builder()
///             .computeName("compute123")
///             .location("eastus")
///             .properties(AKSArgs.builder()
///                 .computeType("AKS")
///                 .build())
///             .resourceGroupName("testrg123")
///             .workspaceName("workspaces123")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const compute = new azure_native.machinelearningservices.Compute("compute", {
///     computeName: "compute123",
///     location: "eastus",
///     properties: {
///         computeType: "AKS",
///     },
///     resourceGroupName: "testrg123",
///     workspaceName: "workspaces123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// compute = azure_native.machinelearningservices.Compute("compute",
///     compute_name="compute123",
///     location="eastus",
///     properties={
///         "compute_type": "AKS",
///     },
///     resource_group_name="testrg123",
///     workspace_name="workspaces123")
///
/// ```
///
/// ```yaml
/// resources:
///   compute:
///     type: azure-native:machinelearningservices:Compute
///     properties:
///       computeName: compute123
///       location: eastus
///       properties:
///         computeType: AKS
///       resourceGroupName: testrg123
///       workspaceName: workspaces123
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an ComputeInstance Compute
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var compute = new AzureNative.MachineLearningServices.Compute("compute", new()
///     {
///         ComputeName = "compute123",
///         Location = "eastus",
///         Properties = new AzureNative.MachineLearningServices.Inputs.ComputeInstanceArgs
///         {
///             ComputeType = "ComputeInstance",
///             Properties = new AzureNative.MachineLearningServices.Inputs.ComputeInstancePropertiesArgs
///             {
///                 ApplicationSharingPolicy = AzureNative.MachineLearningServices.ApplicationSharingPolicy.Personal,
///                 ComputeInstanceAuthorizationType = AzureNative.MachineLearningServices.ComputeInstanceAuthorizationType.Personal,
///                 CustomServices = new[]
///                 {
///                     new AzureNative.MachineLearningServices.Inputs.CustomServiceArgs
///                     {
///                         Docker = new AzureNative.MachineLearningServices.Inputs.DockerArgs
///                         {
///                             Privileged = true,
///                         },
///                         Endpoints = new[]
///                         {
///                             new AzureNative.MachineLearningServices.Inputs.EndpointArgs
///                             {
///                                 Name = "connect",
///                                 Protocol = AzureNative.MachineLearningServices.Protocol.Http,
///                                 Published = 8787,
///                                 Target = 8787,
///                             },
///                         },
///                         EnvironmentVariables =
///                         {
///                             { "test_variable", new AzureNative.MachineLearningServices.Inputs.EnvironmentVariableArgs
///                             {
///                                 Type = AzureNative.MachineLearningServices.EnvironmentVariableType.Local,
///                                 Value = "test_value",
///                             } },
///                         },
///                         Image = new AzureNative.MachineLearningServices.Inputs.ImageArgs
///                         {
///                             Reference = "ghcr.io/azure/rocker-rstudio-ml-verse:latest",
///                             Type = AzureNative.MachineLearningServices.ImageType.Docker,
///                         },
///                         Name = "rstudio",
///                         Volumes = new[]
///                         {
///                             new AzureNative.MachineLearningServices.Inputs.VolumeDefinitionArgs
///                             {
///                                 ReadOnly = false,
///                                 Source = "/home/azureuser/cloudfiles",
///                                 Target = "/home/azureuser/cloudfiles",
///                                 Type = AzureNative.MachineLearningServices.VolumeDefinitionType.Bind,
///                             },
///                         },
///                     },
///                 },
///                 PersonalComputeInstanceSettings = new AzureNative.MachineLearningServices.Inputs.PersonalComputeInstanceSettingsArgs
///                 {
///                     AssignedUser = new AzureNative.MachineLearningServices.Inputs.AssignedUserArgs
///                     {
///                         ObjectId = "00000000-0000-0000-0000-000000000000",
///                         TenantId = "00000000-0000-0000-0000-000000000000",
///                     },
///                 },
///                 SshSettings = new AzureNative.MachineLearningServices.Inputs.ComputeInstanceSshSettingsArgs
///                 {
///                     SshPublicAccess = AzureNative.MachineLearningServices.SshPublicAccess.Disabled,
///                 },
///                 Subnet = new AzureNative.MachineLearningServices.Inputs.ResourceIdArgs
///                 {
///                     Id = "test-subnet-resource-id",
///                 },
///                 VmSize = "STANDARD_NC6",
///             },
///         },
///         ResourceGroupName = "testrg123",
///         WorkspaceName = "workspaces123",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewCompute(ctx, "compute", &machinelearningservices.ComputeArgs{
/// 			ComputeName: pulumi.String("compute123"),
/// 			Location:    pulumi.String("eastus"),
/// 			Properties: &machinelearningservices.ComputeInstanceArgs{
/// 				ComputeType: pulumi.String("ComputeInstance"),
/// 				Properties: &machinelearningservices.ComputeInstancePropertiesArgs{
/// 					ApplicationSharingPolicy:         pulumi.String(machinelearningservices.ApplicationSharingPolicyPersonal),
/// 					ComputeInstanceAuthorizationType: pulumi.String(machinelearningservices.ComputeInstanceAuthorizationTypePersonal),
/// 					CustomServices: machinelearningservices.CustomServiceArray{
/// 						&machinelearningservices.CustomServiceArgs{
/// 							Docker: &machinelearningservices.DockerArgs{
/// 								Privileged: pulumi.Bool(true),
/// 							},
/// 							Endpoints: machinelearningservices.EndpointArray{
/// 								&machinelearningservices.EndpointArgs{
/// 									Name:      pulumi.String("connect"),
/// 									Protocol:  pulumi.String(machinelearningservices.ProtocolHttp),
/// 									Published: pulumi.Int(8787),
/// 									Target:    pulumi.Int(8787),
/// 								},
/// 							},
/// 							EnvironmentVariables: machinelearningservices.EnvironmentVariableMap{
/// 								"test_variable": &machinelearningservices.EnvironmentVariableArgs{
/// 									Type:  pulumi.String(machinelearningservices.EnvironmentVariableTypeLocal),
/// 									Value: pulumi.String("test_value"),
/// 								},
/// 							},
/// 							Image: &machinelearningservices.ImageArgs{
/// 								Reference: pulumi.String("ghcr.io/azure/rocker-rstudio-ml-verse:latest"),
/// 								Type:      pulumi.String(machinelearningservices.ImageTypeDocker),
/// 							},
/// 							Name: pulumi.String("rstudio"),
/// 							Volumes: machinelearningservices.VolumeDefinitionArray{
/// 								&machinelearningservices.VolumeDefinitionArgs{
/// 									ReadOnly: pulumi.Bool(false),
/// 									Source:   pulumi.String("/home/azureuser/cloudfiles"),
/// 									Target:   pulumi.String("/home/azureuser/cloudfiles"),
/// 									Type:     pulumi.String(machinelearningservices.VolumeDefinitionTypeBind),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					PersonalComputeInstanceSettings: &machinelearningservices.PersonalComputeInstanceSettingsArgs{
/// 						AssignedUser: &machinelearningservices.AssignedUserArgs{
/// 							ObjectId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 							TenantId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 						},
/// 					},
/// 					SshSettings: &machinelearningservices.ComputeInstanceSshSettingsArgs{
/// 						SshPublicAccess: pulumi.String(machinelearningservices.SshPublicAccessDisabled),
/// 					},
/// 					Subnet: &machinelearningservices.ResourceIdArgs{
/// 						Id: pulumi.String("test-subnet-resource-id"),
/// 					},
/// 					VmSize: pulumi.String("STANDARD_NC6"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			WorkspaceName:     pulumi.String("workspaces123"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.machinelearningservices.Compute;
/// import com.pulumi.azurenative.machinelearningservices.ComputeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var compute = new Compute("compute", ComputeArgs.builder()
///             .computeName("compute123")
///             .location("eastus")
///             .properties(ComputeInstanceArgs.builder()
///                 .computeType("ComputeInstance")
///                 .properties(ComputeInstancePropertiesArgs.builder()
///                     .applicationSharingPolicy("Personal")
///                     .computeInstanceAuthorizationType("personal")
///                     .customServices(CustomServiceArgs.builder()
///                         .docker(DockerArgs.builder()
///                             .privileged(true)
///                             .build())
///                         .endpoints(EndpointArgs.builder()
///                             .name("connect")
///                             .protocol("http")
///                             .published(8787)
///                             .target(8787)
///                             .build())
///                         .environmentVariables(Map.of("test_variable", EnvironmentVariableArgs.builder()
///                             .type("local")
///                             .value("test_value")
///                             .build()))
///                         .image(ImageArgs.builder()
///                             .reference("ghcr.io/azure/rocker-rstudio-ml-verse:latest")
///                             .type("docker")
///                             .build())
///                         .name("rstudio")
///                         .volumes(VolumeDefinitionArgs.builder()
///                             .readOnly(false)
///                             .source("/home/azureuser/cloudfiles")
///                             .target("/home/azureuser/cloudfiles")
///                             .type("bind")
///                             .build())
///                         .build())
///                     .personalComputeInstanceSettings(PersonalComputeInstanceSettingsArgs.builder()
///                         .assignedUser(AssignedUserArgs.builder()
///                             .objectId("00000000-0000-0000-0000-000000000000")
///                             .tenantId("00000000-0000-0000-0000-000000000000")
///                             .build())
///                         .build())
///                     .sshSettings(ComputeInstanceSshSettingsArgs.builder()
///                         .sshPublicAccess("Disabled")
///                         .build())
///                     .subnet(ResourceIdArgs.builder()
///                         .id("test-subnet-resource-id")
///                         .build())
///                     .vmSize("STANDARD_NC6")
///                     .build())
///                 .build())
///             .resourceGroupName("testrg123")
///             .workspaceName("workspaces123")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const compute = new azure_native.machinelearningservices.Compute("compute", {
///     computeName: "compute123",
///     location: "eastus",
///     properties: {
///         computeType: "ComputeInstance",
///         properties: {
///             applicationSharingPolicy: azure_native.machinelearningservices.ApplicationSharingPolicy.Personal,
///             computeInstanceAuthorizationType: azure_native.machinelearningservices.ComputeInstanceAuthorizationType.Personal,
///             customServices: [{
///                 docker: {
///                     privileged: true,
///                 },
///                 endpoints: [{
///                     name: "connect",
///                     protocol: azure_native.machinelearningservices.Protocol.Http,
///                     published: 8787,
///                     target: 8787,
///                 }],
///                 environmentVariables: {
///                     test_variable: {
///                         type: azure_native.machinelearningservices.EnvironmentVariableType.Local,
///                         value: "test_value",
///                     },
///                 },
///                 image: {
///                     reference: "ghcr.io/azure/rocker-rstudio-ml-verse:latest",
///                     type: azure_native.machinelearningservices.ImageType.Docker,
///                 },
///                 name: "rstudio",
///                 volumes: [{
///                     readOnly: false,
///                     source: "/home/azureuser/cloudfiles",
///                     target: "/home/azureuser/cloudfiles",
///                     type: azure_native.machinelearningservices.VolumeDefinitionType.Bind,
///                 }],
///             }],
///             personalComputeInstanceSettings: {
///                 assignedUser: {
///                     objectId: "00000000-0000-0000-0000-000000000000",
///                     tenantId: "00000000-0000-0000-0000-000000000000",
///                 },
///             },
///             sshSettings: {
///                 sshPublicAccess: azure_native.machinelearningservices.SshPublicAccess.Disabled,
///             },
///             subnet: {
///                 id: "test-subnet-resource-id",
///             },
///             vmSize: "STANDARD_NC6",
///         },
///     },
///     resourceGroupName: "testrg123",
///     workspaceName: "workspaces123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// compute = azure_native.machinelearningservices.Compute("compute",
///     compute_name="compute123",
///     location="eastus",
///     properties={
///         "compute_type": "ComputeInstance",
///         "properties": {
///             "application_sharing_policy": azure_native.machinelearningservices.ApplicationSharingPolicy.PERSONAL,
///             "compute_instance_authorization_type": azure_native.machinelearningservices.ComputeInstanceAuthorizationType.PERSONAL,
///             "custom_services": [{
///                 "docker": {
///                     "privileged": True,
///                 },
///                 "endpoints": [{
///                     "name": "connect",
///                     "protocol": azure_native.machinelearningservices.Protocol.HTTP,
///                     "published": 8787,
///                     "target": 8787,
///                 }],
///                 "environment_variables": {
///                     "test_variable": {
///                         "type": azure_native.machinelearningservices.EnvironmentVariableType.LOCAL,
///                         "value": "test_value",
///                     },
///                 },
///                 "image": {
///                     "reference": "ghcr.io/azure/rocker-rstudio-ml-verse:latest",
///                     "type": azure_native.machinelearningservices.ImageType.DOCKER,
///                 },
///                 "name": "rstudio",
///                 "volumes": [{
///                     "read_only": False,
///                     "source": "/home/azureuser/cloudfiles",
///                     "target": "/home/azureuser/cloudfiles",
///                     "type": azure_native.machinelearningservices.VolumeDefinitionType.BIND,
///                 }],
///             }],
///             "personal_compute_instance_settings": {
///                 "assigned_user": {
///                     "object_id": "00000000-0000-0000-0000-000000000000",
///                     "tenant_id": "00000000-0000-0000-0000-000000000000",
///                 },
///             },
///             "ssh_settings": {
///                 "ssh_public_access": azure_native.machinelearningservices.SshPublicAccess.DISABLED,
///             },
///             "subnet": {
///                 "id": "test-subnet-resource-id",
///             },
///             "vm_size": "STANDARD_NC6",
///         },
///     },
///     resource_group_name="testrg123",
///     workspace_name="workspaces123")
///
/// ```
///
/// ```yaml
/// resources:
///   compute:
///     type: azure-native:machinelearningservices:Compute
///     properties:
///       computeName: compute123
///       location: eastus
///       properties:
///         computeType: ComputeInstance
///         properties:
///           applicationSharingPolicy: Personal
///           computeInstanceAuthorizationType: personal
///           customServices:
///             - docker:
///                 privileged: true
///               endpoints:
///                 - name: connect
///                   protocol: http
///                   published: 8787
///                   target: 8787
///               environmentVariables:
///                 test_variable:
///                   type: local
///                   value: test_value
///               image:
///                 reference: ghcr.io/azure/rocker-rstudio-ml-verse:latest
///                 type: docker
///               name: rstudio
///               volumes:
///                 - readOnly: false
///                   source: /home/azureuser/cloudfiles
///                   target: /home/azureuser/cloudfiles
///                   type: bind
///           personalComputeInstanceSettings:
///             assignedUser:
///               objectId: 00000000-0000-0000-0000-000000000000
///               tenantId: 00000000-0000-0000-0000-000000000000
///           sshSettings:
///             sshPublicAccess: Disabled
///           subnet:
///             id: test-subnet-resource-id
///           vmSize: STANDARD_NC6
///       resourceGroupName: testrg123
///       workspaceName: workspaces123
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an ComputeInstance Compute with Schedules
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var compute = new AzureNative.MachineLearningServices.Compute("compute", new()
///     {
///         ComputeName = "compute123",
///         Location = "eastus",
///         Properties = new AzureNative.MachineLearningServices.Inputs.ComputeInstanceArgs
///         {
///             ComputeType = "ComputeInstance",
///             Properties = new AzureNative.MachineLearningServices.Inputs.ComputeInstancePropertiesArgs
///             {
///                 ApplicationSharingPolicy = AzureNative.MachineLearningServices.ApplicationSharingPolicy.Personal,
///                 ComputeInstanceAuthorizationType = AzureNative.MachineLearningServices.ComputeInstanceAuthorizationType.Personal,
///                 PersonalComputeInstanceSettings = new AzureNative.MachineLearningServices.Inputs.PersonalComputeInstanceSettingsArgs
///                 {
///                     AssignedUser = new AzureNative.MachineLearningServices.Inputs.AssignedUserArgs
///                     {
///                         ObjectId = "00000000-0000-0000-0000-000000000000",
///                         TenantId = "00000000-0000-0000-0000-000000000000",
///                     },
///                 },
///                 Schedules = new AzureNative.MachineLearningServices.Inputs.ComputeSchedulesArgs
///                 {
///                     ComputeStartStop = new[]
///                     {
///                         new AzureNative.MachineLearningServices.Inputs.ComputeStartStopScheduleArgs
///                         {
///                             Action = AzureNative.MachineLearningServices.ComputePowerAction.Stop,
///                             Cron = new AzureNative.MachineLearningServices.Inputs.CronArgs
///                             {
///                                 Expression = "0 18 * * *",
///                                 StartTime = "2021-04-23T01:30:00",
///                                 TimeZone = "Pacific Standard Time",
///                             },
///                             Status = AzureNative.MachineLearningServices.ScheduleStatus.Enabled,
///                             TriggerType = AzureNative.MachineLearningServices.ComputeTriggerType.Cron,
///                         },
///                     },
///                 },
///                 SshSettings = new AzureNative.MachineLearningServices.Inputs.ComputeInstanceSshSettingsArgs
///                 {
///                     SshPublicAccess = AzureNative.MachineLearningServices.SshPublicAccess.Disabled,
///                 },
///                 VmSize = "STANDARD_NC6",
///             },
///         },
///         ResourceGroupName = "testrg123",
///         WorkspaceName = "workspaces123",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewCompute(ctx, "compute", &machinelearningservices.ComputeArgs{
/// 			ComputeName: pulumi.String("compute123"),
/// 			Location:    pulumi.String("eastus"),
/// 			Properties: &machinelearningservices.ComputeInstanceArgs{
/// 				ComputeType: pulumi.String("ComputeInstance"),
/// 				Properties: &machinelearningservices.ComputeInstancePropertiesArgs{
/// 					ApplicationSharingPolicy:         pulumi.String(machinelearningservices.ApplicationSharingPolicyPersonal),
/// 					ComputeInstanceAuthorizationType: pulumi.String(machinelearningservices.ComputeInstanceAuthorizationTypePersonal),
/// 					PersonalComputeInstanceSettings: &machinelearningservices.PersonalComputeInstanceSettingsArgs{
/// 						AssignedUser: &machinelearningservices.AssignedUserArgs{
/// 							ObjectId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 							TenantId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 						},
/// 					},
/// 					Schedules: &machinelearningservices.ComputeSchedulesArgs{
/// 						ComputeStartStop: machinelearningservices.ComputeStartStopScheduleArray{
/// 							&machinelearningservices.ComputeStartStopScheduleArgs{
/// 								Action: pulumi.String(machinelearningservices.ComputePowerActionStop),
/// 								Cron: &machinelearningservices.CronArgs{
/// 									Expression: pulumi.String("0 18 * * *"),
/// 									StartTime:  pulumi.String("2021-04-23T01:30:00"),
/// 									TimeZone:   pulumi.String("Pacific Standard Time"),
/// 								},
/// 								Status:      pulumi.String(machinelearningservices.ScheduleStatusEnabled),
/// 								TriggerType: pulumi.String(machinelearningservices.ComputeTriggerTypeCron),
/// 							},
/// 						},
/// 					},
/// 					SshSettings: &machinelearningservices.ComputeInstanceSshSettingsArgs{
/// 						SshPublicAccess: pulumi.String(machinelearningservices.SshPublicAccessDisabled),
/// 					},
/// 					VmSize: pulumi.String("STANDARD_NC6"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			WorkspaceName:     pulumi.String("workspaces123"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.machinelearningservices.Compute;
/// import com.pulumi.azurenative.machinelearningservices.ComputeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var compute = new Compute("compute", ComputeArgs.builder()
///             .computeName("compute123")
///             .location("eastus")
///             .properties(ComputeInstanceArgs.builder()
///                 .computeType("ComputeInstance")
///                 .properties(ComputeInstancePropertiesArgs.builder()
///                     .applicationSharingPolicy("Personal")
///                     .computeInstanceAuthorizationType("personal")
///                     .personalComputeInstanceSettings(PersonalComputeInstanceSettingsArgs.builder()
///                         .assignedUser(AssignedUserArgs.builder()
///                             .objectId("00000000-0000-0000-0000-000000000000")
///                             .tenantId("00000000-0000-0000-0000-000000000000")
///                             .build())
///                         .build())
///                     .schedules(ComputeSchedulesArgs.builder()
///                         .computeStartStop(ComputeStartStopScheduleArgs.builder()
///                             .action("Stop")
///                             .cron(CronArgs.builder()
///                                 .expression("0 18 * * *")
///                                 .startTime("2021-04-23T01:30:00")
///                                 .timeZone("Pacific Standard Time")
///                                 .build())
///                             .status("Enabled")
///                             .triggerType("Cron")
///                             .build())
///                         .build())
///                     .sshSettings(ComputeInstanceSshSettingsArgs.builder()
///                         .sshPublicAccess("Disabled")
///                         .build())
///                     .vmSize("STANDARD_NC6")
///                     .build())
///                 .build())
///             .resourceGroupName("testrg123")
///             .workspaceName("workspaces123")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const compute = new azure_native.machinelearningservices.Compute("compute", {
///     computeName: "compute123",
///     location: "eastus",
///     properties: {
///         computeType: "ComputeInstance",
///         properties: {
///             applicationSharingPolicy: azure_native.machinelearningservices.ApplicationSharingPolicy.Personal,
///             computeInstanceAuthorizationType: azure_native.machinelearningservices.ComputeInstanceAuthorizationType.Personal,
///             personalComputeInstanceSettings: {
///                 assignedUser: {
///                     objectId: "00000000-0000-0000-0000-000000000000",
///                     tenantId: "00000000-0000-0000-0000-000000000000",
///                 },
///             },
///             schedules: {
///                 computeStartStop: [{
///                     action: azure_native.machinelearningservices.ComputePowerAction.Stop,
///                     cron: {
///                         expression: "0 18 * * *",
///                         startTime: "2021-04-23T01:30:00",
///                         timeZone: "Pacific Standard Time",
///                     },
///                     status: azure_native.machinelearningservices.ScheduleStatus.Enabled,
///                     triggerType: azure_native.machinelearningservices.ComputeTriggerType.Cron,
///                 }],
///             },
///             sshSettings: {
///                 sshPublicAccess: azure_native.machinelearningservices.SshPublicAccess.Disabled,
///             },
///             vmSize: "STANDARD_NC6",
///         },
///     },
///     resourceGroupName: "testrg123",
///     workspaceName: "workspaces123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// compute = azure_native.machinelearningservices.Compute("compute",
///     compute_name="compute123",
///     location="eastus",
///     properties={
///         "compute_type": "ComputeInstance",
///         "properties": {
///             "application_sharing_policy": azure_native.machinelearningservices.ApplicationSharingPolicy.PERSONAL,
///             "compute_instance_authorization_type": azure_native.machinelearningservices.ComputeInstanceAuthorizationType.PERSONAL,
///             "personal_compute_instance_settings": {
///                 "assigned_user": {
///                     "object_id": "00000000-0000-0000-0000-000000000000",
///                     "tenant_id": "00000000-0000-0000-0000-000000000000",
///                 },
///             },
///             "schedules": {
///                 "compute_start_stop": [{
///                     "action": azure_native.machinelearningservices.ComputePowerAction.STOP,
///                     "cron": {
///                         "expression": "0 18 * * *",
///                         "start_time": "2021-04-23T01:30:00",
///                         "time_zone": "Pacific Standard Time",
///                     },
///                     "status": azure_native.machinelearningservices.ScheduleStatus.ENABLED,
///                     "trigger_type": azure_native.machinelearningservices.ComputeTriggerType.CRON,
///                 }],
///             },
///             "ssh_settings": {
///                 "ssh_public_access": azure_native.machinelearningservices.SshPublicAccess.DISABLED,
///             },
///             "vm_size": "STANDARD_NC6",
///         },
///     },
///     resource_group_name="testrg123",
///     workspace_name="workspaces123")
///
/// ```
///
/// ```yaml
/// resources:
///   compute:
///     type: azure-native:machinelearningservices:Compute
///     properties:
///       computeName: compute123
///       location: eastus
///       properties:
///         computeType: ComputeInstance
///         properties:
///           applicationSharingPolicy: Personal
///           computeInstanceAuthorizationType: personal
///           personalComputeInstanceSettings:
///             assignedUser:
///               objectId: 00000000-0000-0000-0000-000000000000
///               tenantId: 00000000-0000-0000-0000-000000000000
///           schedules:
///             computeStartStop:
///               - action: Stop
///                 cron:
///                   expression: 0 18 * * *
///                   startTime: 2021-04-23T01:30:00
///                   timeZone: Pacific Standard Time
///                 status: Enabled
///                 triggerType: Cron
///           sshSettings:
///             sshPublicAccess: Disabled
///           vmSize: STANDARD_NC6
///       resourceGroupName: testrg123
///       workspaceName: workspaces123
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an ComputeInstance Compute with minimal inputs
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var compute = new AzureNative.MachineLearningServices.Compute("compute", new()
///     {
///         ComputeName = "compute123",
///         Location = "eastus",
///         Properties = new AzureNative.MachineLearningServices.Inputs.ComputeInstanceArgs
///         {
///             ComputeType = "ComputeInstance",
///             Properties = new AzureNative.MachineLearningServices.Inputs.ComputeInstancePropertiesArgs
///             {
///                 VmSize = "STANDARD_NC6",
///             },
///         },
///         ResourceGroupName = "testrg123",
///         WorkspaceName = "workspaces123",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewCompute(ctx, "compute", &machinelearningservices.ComputeArgs{
/// 			ComputeName: pulumi.String("compute123"),
/// 			Location:    pulumi.String("eastus"),
/// 			Properties: &machinelearningservices.ComputeInstanceArgs{
/// 				ComputeType: pulumi.String("ComputeInstance"),
/// 				Properties: &machinelearningservices.ComputeInstancePropertiesArgs{
/// 					VmSize: pulumi.String("STANDARD_NC6"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			WorkspaceName:     pulumi.String("workspaces123"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.machinelearningservices.Compute;
/// import com.pulumi.azurenative.machinelearningservices.ComputeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var compute = new Compute("compute", ComputeArgs.builder()
///             .computeName("compute123")
///             .location("eastus")
///             .properties(ComputeInstanceArgs.builder()
///                 .computeType("ComputeInstance")
///                 .properties(ComputeInstancePropertiesArgs.builder()
///                     .vmSize("STANDARD_NC6")
///                     .build())
///                 .build())
///             .resourceGroupName("testrg123")
///             .workspaceName("workspaces123")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const compute = new azure_native.machinelearningservices.Compute("compute", {
///     computeName: "compute123",
///     location: "eastus",
///     properties: {
///         computeType: "ComputeInstance",
///         properties: {
///             vmSize: "STANDARD_NC6",
///         },
///     },
///     resourceGroupName: "testrg123",
///     workspaceName: "workspaces123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// compute = azure_native.machinelearningservices.Compute("compute",
///     compute_name="compute123",
///     location="eastus",
///     properties={
///         "compute_type": "ComputeInstance",
///         "properties": {
///             "vm_size": "STANDARD_NC6",
///         },
///     },
///     resource_group_name="testrg123",
///     workspace_name="workspaces123")
///
/// ```
///
/// ```yaml
/// resources:
///   compute:
///     type: azure-native:machinelearningservices:Compute
///     properties:
///       computeName: compute123
///       location: eastus
///       properties:
///         computeType: ComputeInstance
///         properties:
///           vmSize: STANDARD_NC6
///       resourceGroupName: testrg123
///       workspaceName: workspaces123
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update a AML Compute
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var compute = new AzureNative.MachineLearningServices.Compute("compute", new()
///     {
///         ComputeName = "compute123",
///         Location = "eastus",
///         Properties = new AzureNative.MachineLearningServices.Inputs.AmlComputeArgs
///         {
///             ComputeType = "AmlCompute",
///             Description = "some compute",
///             Properties = new AzureNative.MachineLearningServices.Inputs.AmlComputePropertiesArgs
///             {
///                 ScaleSettings = new AzureNative.MachineLearningServices.Inputs.ScaleSettingsArgs
///                 {
///                     MaxNodeCount = 4,
///                     MinNodeCount = 4,
///                     NodeIdleTimeBeforeScaleDown = "PT5M",
///                 },
///             },
///         },
///         ResourceGroupName = "testrg123",
///         WorkspaceName = "workspaces123",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewCompute(ctx, "compute", &machinelearningservices.ComputeArgs{
/// 			ComputeName: pulumi.String("compute123"),
/// 			Location:    pulumi.String("eastus"),
/// 			Properties: &machinelearningservices.AmlComputeArgs{
/// 				ComputeType: pulumi.String("AmlCompute"),
/// 				Description: pulumi.String("some compute"),
/// 				Properties: &machinelearningservices.AmlComputePropertiesArgs{
/// 					ScaleSettings: &machinelearningservices.ScaleSettingsArgs{
/// 						MaxNodeCount:                pulumi.Int(4),
/// 						MinNodeCount:                pulumi.Int(4),
/// 						NodeIdleTimeBeforeScaleDown: pulumi.String("PT5M"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			WorkspaceName:     pulumi.String("workspaces123"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.machinelearningservices.Compute;
/// import com.pulumi.azurenative.machinelearningservices.ComputeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var compute = new Compute("compute", ComputeArgs.builder()
///             .computeName("compute123")
///             .location("eastus")
///             .properties(AmlComputeArgs.builder()
///                 .computeType("AmlCompute")
///                 .description("some compute")
///                 .properties(AmlComputePropertiesArgs.builder()
///                     .scaleSettings(ScaleSettingsArgs.builder()
///                         .maxNodeCount(4)
///                         .minNodeCount(4)
///                         .nodeIdleTimeBeforeScaleDown("PT5M")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("testrg123")
///             .workspaceName("workspaces123")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const compute = new azure_native.machinelearningservices.Compute("compute", {
///     computeName: "compute123",
///     location: "eastus",
///     properties: {
///         computeType: "AmlCompute",
///         description: "some compute",
///         properties: {
///             scaleSettings: {
///                 maxNodeCount: 4,
///                 minNodeCount: 4,
///                 nodeIdleTimeBeforeScaleDown: "PT5M",
///             },
///         },
///     },
///     resourceGroupName: "testrg123",
///     workspaceName: "workspaces123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// compute = azure_native.machinelearningservices.Compute("compute",
///     compute_name="compute123",
///     location="eastus",
///     properties={
///         "compute_type": "AmlCompute",
///         "description": "some compute",
///         "properties": {
///             "scale_settings": {
///                 "max_node_count": 4,
///                 "min_node_count": 4,
///                 "node_idle_time_before_scale_down": "PT5M",
///             },
///         },
///     },
///     resource_group_name="testrg123",
///     workspace_name="workspaces123")
///
/// ```
///
/// ```yaml
/// resources:
///   compute:
///     type: azure-native:machinelearningservices:Compute
///     properties:
///       computeName: compute123
///       location: eastus
///       properties:
///         computeType: AmlCompute
///         description: some compute
///         properties:
///           scaleSettings:
///             maxNodeCount: 4
///             minNodeCount: 4
///             nodeIdleTimeBeforeScaleDown: PT5M
///       resourceGroupName: testrg123
///       workspaceName: workspaces123
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update an AKS Compute
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var compute = new AzureNative.MachineLearningServices.Compute("compute", new()
///     {
///         ComputeName = "compute123",
///         Location = "eastus",
///         Properties = new AzureNative.MachineLearningServices.Inputs.AKSArgs
///         {
///             ComputeType = "AKS",
///             Description = "some compute",
///             Properties = new AzureNative.MachineLearningServices.Inputs.AKSSchemaPropertiesArgs
///             {
///                 AgentCount = 4,
///             },
///             ResourceId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/Microsoft.ContainerService/managedClusters/compute123-56826-c9b00420020b2",
///         },
///         ResourceGroupName = "testrg123",
///         WorkspaceName = "workspaces123",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewCompute(ctx, "compute", &machinelearningservices.ComputeArgs{
/// 			ComputeName: pulumi.String("compute123"),
/// 			Location:    pulumi.String("eastus"),
/// 			Properties: &machinelearningservices.AKSArgs{
/// 				ComputeType: pulumi.String("AKS"),
/// 				Description: pulumi.String("some compute"),
/// 				Properties: &machinelearningservices.AKSSchemaPropertiesArgs{
/// 					AgentCount: pulumi.Int(4),
/// 				},
/// 				ResourceId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/Microsoft.ContainerService/managedClusters/compute123-56826-c9b00420020b2"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			WorkspaceName:     pulumi.String("workspaces123"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.machinelearningservices.Compute;
/// import com.pulumi.azurenative.machinelearningservices.ComputeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var compute = new Compute("compute", ComputeArgs.builder()
///             .computeName("compute123")
///             .location("eastus")
///             .properties(AKSArgs.builder()
///                 .computeType("AKS")
///                 .description("some compute")
///                 .properties(AKSSchemaPropertiesArgs.builder()
///                     .agentCount(4)
///                     .build())
///                 .resourceId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/Microsoft.ContainerService/managedClusters/compute123-56826-c9b00420020b2")
///                 .build())
///             .resourceGroupName("testrg123")
///             .workspaceName("workspaces123")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const compute = new azure_native.machinelearningservices.Compute("compute", {
///     computeName: "compute123",
///     location: "eastus",
///     properties: {
///         computeType: "AKS",
///         description: "some compute",
///         properties: {
///             agentCount: 4,
///         },
///         resourceId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/Microsoft.ContainerService/managedClusters/compute123-56826-c9b00420020b2",
///     },
///     resourceGroupName: "testrg123",
///     workspaceName: "workspaces123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// compute = azure_native.machinelearningservices.Compute("compute",
///     compute_name="compute123",
///     location="eastus",
///     properties={
///         "compute_type": "AKS",
///         "description": "some compute",
///         "properties": {
///             "agent_count": 4,
///         },
///         "resource_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/Microsoft.ContainerService/managedClusters/compute123-56826-c9b00420020b2",
///     },
///     resource_group_name="testrg123",
///     workspace_name="workspaces123")
///
/// ```
///
/// ```yaml
/// resources:
///   compute:
///     type: azure-native:machinelearningservices:Compute
///     properties:
///       computeName: compute123
///       location: eastus
///       properties:
///         computeType: AKS
///         description: some compute
///         properties:
///           agentCount: 4
///         resourceId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/Microsoft.ContainerService/managedClusters/compute123-56826-c9b00420020b2
///       resourceGroupName: testrg123
///       workspaceName: workspaces123
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:machinelearningservices:Compute compute123 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/computes/{computeName}
/// ```
class Compute extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The identity of the resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// Specifies the location of the resource.
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Compute properties
  late final pulumi.Output<AKSResponse> properties;

  /// The sku of the workspace.
  late final pulumi.Output<SkuResponse?> sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Contains resource tags defined as key/value pairs.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Compute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Compute]. {@macro pulumi_machinelearningservices_compute_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Compute(
    String name, {
    ComputeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:Compute',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AKSResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AKSResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sku = registerOutput<SkuResponse?>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
