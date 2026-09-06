import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_hsm_args.dart';
import 'network_profile_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Resource information with extended details.
///
/// Uses Azure REST API version 2024-06-30-preview. In version 2.x of the Azure Native provider, it used API version 2021-11-30.
///
/// Other available API versions: 2021-11-30, 2025-03-31, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hardwaresecuritymodules [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new or update an existing dedicated HSM
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dedicatedHsm = new AzureNative.HardwareSecurityModules.DedicatedHsm("dedicatedHsm", new()
///     {
///         Location = "westus",
///         Name = "hsm1",
///         NetworkProfile = new AzureNative.HardwareSecurityModules.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.HardwareSecurityModules.Inputs.NetworkInterfaceArgs
///                 {
///                     PrivateIpAddress = "1.0.0.1",
///                 },
///             },
///             Subnet = new AzureNative.HardwareSecurityModules.Inputs.ApiEntityReferenceArgs
///             {
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01",
///             },
///         },
///         ResourceGroupName = "hsm-group",
///         Sku = new AzureNative.HardwareSecurityModules.Inputs.SkuArgs
///         {
///             Name = AzureNative.HardwareSecurityModules.SkuName.SafeNet_Luna_Network_HSM_A790,
///         },
///         StampId = "stamp01",
///         Tags =
///         {
///             { "Dept", "hsm" },
///             { "Environment", "dogfood" },
///         },
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
/// 	hardwaresecuritymodules "github.com/pulumi/pulumi-azure-native-sdk/hardwaresecuritymodules/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hardwaresecuritymodules.NewDedicatedHsm(ctx, "dedicatedHsm", &hardwaresecuritymodules.DedicatedHsmArgs{
/// 			Location: pulumi.String("westus"),
/// 			Name:     pulumi.String("hsm1"),
/// 			NetworkProfile: &hardwaresecuritymodules.NetworkProfileArgs{
/// 				NetworkInterfaces: hardwaresecuritymodules.NetworkInterfaceArray{
/// 					&hardwaresecuritymodules.NetworkInterfaceArgs{
/// 						PrivateIpAddress: pulumi.String("1.0.0.1"),
/// 					},
/// 				},
/// 				Subnet: &hardwaresecuritymodules.ApiEntityReferenceArgs{
/// 					ResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("hsm-group"),
/// 			Sku: &hardwaresecuritymodules.SkuArgs{
/// 				Name: pulumi.String(hardwaresecuritymodules.SkuName_SafeNet_Luna_Network_HSM_A790),
/// 			},
/// 			StampId: pulumi.String("stamp01"),
/// 			Tags: pulumi.StringMap{
/// 				"Dept":        pulumi.String("hsm"),
/// 				"Environment": pulumi.String("dogfood"),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_hardwaresecuritymodules_dedicatedhsm" "dedicatedHsm" {
///   location = "westus"
///   name     = "hsm1"
///   network_profile = {
///     network_interfaces = [{
///       "privateIpAddress" = "1.0.0.1"
///     }]
///     subnet = {
///       resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01"
///     }
///   }
///   resource_group_name = "hsm-group"
///   sku = {
///     name = "SafeNet Luna Network HSM A790"
///   }
///   stamp_id = "stamp01"
///   tags = {
///     "Dept"        = "hsm"
///     "Environment" = "dogfood"
///   }
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
/// import com.pulumi.azurenative.hardwaresecuritymodules.DedicatedHsm;
/// import com.pulumi.azurenative.hardwaresecuritymodules.DedicatedHsmArgs;
/// import com.pulumi.azurenative.hardwaresecuritymodules.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.hardwaresecuritymodules.inputs.ApiEntityReferenceArgs;
/// import com.pulumi.azurenative.hardwaresecuritymodules.inputs.SkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var dedicatedHsm = new DedicatedHsm("dedicatedHsm", DedicatedHsmArgs.builder()
///             .location("westus")
///             .name("hsm1")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceArgs.builder()
///                     .privateIpAddress("1.0.0.1")
///                     .build())
///                 .subnet(ApiEntityReferenceArgs.builder()
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01")
///                     .build())
///                 .build())
///             .resourceGroupName("hsm-group")
///             .sku(SkuArgs.builder()
///                 .name("SafeNet Luna Network HSM A790")
///                 .build())
///             .stampId("stamp01")
///             .tags(Map.ofEntries(
///                 Map.entry("Dept", "hsm"),
///                 Map.entry("Environment", "dogfood")
///             ))
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
/// const dedicatedHsm = new azure_native.hardwaresecuritymodules.DedicatedHsm("dedicatedHsm", {
///     location: "westus",
///     name: "hsm1",
///     networkProfile: {
///         networkInterfaces: [{
///             privateIpAddress: "1.0.0.1",
///         }],
///         subnet: {
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01",
///         },
///     },
///     resourceGroupName: "hsm-group",
///     sku: {
///         name: azure_native.hardwaresecuritymodules.SkuName.SafeNet_Luna_Network_HSM_A790,
///     },
///     stampId: "stamp01",
///     tags: {
///         Dept: "hsm",
///         Environment: "dogfood",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dedicated_hsm = azure_native.hardwaresecuritymodules.DedicatedHsm("dedicatedHsm",
///     location="westus",
///     name="hsm1",
///     network_profile={
///         "network_interfaces": [{
///             "private_ip_address": "1.0.0.1",
///         }],
///         "subnet": {
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01",
///         },
///     },
///     resource_group_name="hsm-group",
///     sku={
///         "name": azure_native.hardwaresecuritymodules.SkuName.SAFE_NET_LUNA_NETWORK_HS_M_A790,
///     },
///     stamp_id="stamp01",
///     tags={
///         "Dept": "hsm",
///         "Environment": "dogfood",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dedicatedHsm:
///     type: azure-native:hardwaresecuritymodules:DedicatedHsm
///     properties:
///       location: westus
///       name: hsm1
///       networkProfile:
///         networkInterfaces:
///           - privateIpAddress: 1.0.0.1
///         subnet:
///           resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01
///       resourceGroupName: hsm-group
///       sku:
///         name: SafeNet Luna Network HSM A790
///       stampId: stamp01
///       tags:
///         Dept: hsm
///         Environment: dogfood
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new or update an existing payment HSM
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dedicatedHsm = new AzureNative.HardwareSecurityModules.DedicatedHsm("dedicatedHsm", new()
///     {
///         Location = "westus",
///         Name = "hsm1",
///         NetworkProfile = new AzureNative.HardwareSecurityModules.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.HardwareSecurityModules.Inputs.NetworkInterfaceArgs
///                 {
///                     PrivateIpAddress = "1.0.0.1",
///                 },
///             },
///             Subnet = new AzureNative.HardwareSecurityModules.Inputs.ApiEntityReferenceArgs
///             {
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01",
///             },
///         },
///         ResourceGroupName = "hsm-group",
///         Sku = new AzureNative.HardwareSecurityModules.Inputs.SkuArgs
///         {
///             Name = AzureNative.HardwareSecurityModules.SkuName.PayShield10K_LMK1_CPS60,
///         },
///         StampId = "stamp01",
///         Tags =
///         {
///             { "Dept", "hsm" },
///             { "Environment", "dogfood" },
///         },
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
/// 	hardwaresecuritymodules "github.com/pulumi/pulumi-azure-native-sdk/hardwaresecuritymodules/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hardwaresecuritymodules.NewDedicatedHsm(ctx, "dedicatedHsm", &hardwaresecuritymodules.DedicatedHsmArgs{
/// 			Location: pulumi.String("westus"),
/// 			Name:     pulumi.String("hsm1"),
/// 			NetworkProfile: &hardwaresecuritymodules.NetworkProfileArgs{
/// 				NetworkInterfaces: hardwaresecuritymodules.NetworkInterfaceArray{
/// 					&hardwaresecuritymodules.NetworkInterfaceArgs{
/// 						PrivateIpAddress: pulumi.String("1.0.0.1"),
/// 					},
/// 				},
/// 				Subnet: &hardwaresecuritymodules.ApiEntityReferenceArgs{
/// 					ResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("hsm-group"),
/// 			Sku: &hardwaresecuritymodules.SkuArgs{
/// 				Name: pulumi.String(hardwaresecuritymodules.SkuName_PayShield10K_LMK1_CPS60),
/// 			},
/// 			StampId: pulumi.String("stamp01"),
/// 			Tags: pulumi.StringMap{
/// 				"Dept":        pulumi.String("hsm"),
/// 				"Environment": pulumi.String("dogfood"),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_hardwaresecuritymodules_dedicatedhsm" "dedicatedHsm" {
///   location = "westus"
///   name     = "hsm1"
///   network_profile = {
///     network_interfaces = [{
///       "privateIpAddress" = "1.0.0.1"
///     }]
///     subnet = {
///       resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01"
///     }
///   }
///   resource_group_name = "hsm-group"
///   sku = {
///     name = "payShield10K_LMK1_CPS60"
///   }
///   stamp_id = "stamp01"
///   tags = {
///     "Dept"        = "hsm"
///     "Environment" = "dogfood"
///   }
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
/// import com.pulumi.azurenative.hardwaresecuritymodules.DedicatedHsm;
/// import com.pulumi.azurenative.hardwaresecuritymodules.DedicatedHsmArgs;
/// import com.pulumi.azurenative.hardwaresecuritymodules.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.hardwaresecuritymodules.inputs.ApiEntityReferenceArgs;
/// import com.pulumi.azurenative.hardwaresecuritymodules.inputs.SkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var dedicatedHsm = new DedicatedHsm("dedicatedHsm", DedicatedHsmArgs.builder()
///             .location("westus")
///             .name("hsm1")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceArgs.builder()
///                     .privateIpAddress("1.0.0.1")
///                     .build())
///                 .subnet(ApiEntityReferenceArgs.builder()
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01")
///                     .build())
///                 .build())
///             .resourceGroupName("hsm-group")
///             .sku(SkuArgs.builder()
///                 .name("payShield10K_LMK1_CPS60")
///                 .build())
///             .stampId("stamp01")
///             .tags(Map.ofEntries(
///                 Map.entry("Dept", "hsm"),
///                 Map.entry("Environment", "dogfood")
///             ))
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
/// const dedicatedHsm = new azure_native.hardwaresecuritymodules.DedicatedHsm("dedicatedHsm", {
///     location: "westus",
///     name: "hsm1",
///     networkProfile: {
///         networkInterfaces: [{
///             privateIpAddress: "1.0.0.1",
///         }],
///         subnet: {
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01",
///         },
///     },
///     resourceGroupName: "hsm-group",
///     sku: {
///         name: azure_native.hardwaresecuritymodules.SkuName.PayShield10K_LMK1_CPS60,
///     },
///     stampId: "stamp01",
///     tags: {
///         Dept: "hsm",
///         Environment: "dogfood",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dedicated_hsm = azure_native.hardwaresecuritymodules.DedicatedHsm("dedicatedHsm",
///     location="westus",
///     name="hsm1",
///     network_profile={
///         "network_interfaces": [{
///             "private_ip_address": "1.0.0.1",
///         }],
///         "subnet": {
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01",
///         },
///     },
///     resource_group_name="hsm-group",
///     sku={
///         "name": azure_native.hardwaresecuritymodules.SkuName.PAY_SHIELD10_K_LMK1_CPS60,
///     },
///     stamp_id="stamp01",
///     tags={
///         "Dept": "hsm",
///         "Environment": "dogfood",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dedicatedHsm:
///     type: azure-native:hardwaresecuritymodules:DedicatedHsm
///     properties:
///       location: westus
///       name: hsm1
///       networkProfile:
///         networkInterfaces:
///           - privateIpAddress: 1.0.0.1
///         subnet:
///           resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01
///       resourceGroupName: hsm-group
///       sku:
///         name: payShield10K_LMK1_CPS60
///       stampId: stamp01
///       tags:
///         Dept: hsm
///         Environment: dogfood
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new or update an existing payment HSM with management profile
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dedicatedHsm = new AzureNative.HardwareSecurityModules.DedicatedHsm("dedicatedHsm", new()
///     {
///         Location = "westus",
///         ManagementNetworkProfile = new AzureNative.HardwareSecurityModules.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.HardwareSecurityModules.Inputs.NetworkInterfaceArgs
///                 {
///                     PrivateIpAddress = "1.0.0.2",
///                 },
///             },
///             Subnet = new AzureNative.HardwareSecurityModules.Inputs.ApiEntityReferenceArgs
///             {
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01",
///             },
///         },
///         Name = "hsm1",
///         NetworkProfile = new AzureNative.HardwareSecurityModules.Inputs.NetworkProfileArgs
///         {
///             NetworkInterfaces = new[]
///             {
///                 new AzureNative.HardwareSecurityModules.Inputs.NetworkInterfaceArgs
///                 {
///                     PrivateIpAddress = "1.0.0.1",
///                 },
///             },
///             Subnet = new AzureNative.HardwareSecurityModules.Inputs.ApiEntityReferenceArgs
///             {
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01",
///             },
///         },
///         ResourceGroupName = "hsm-group",
///         Sku = new AzureNative.HardwareSecurityModules.Inputs.SkuArgs
///         {
///             Name = AzureNative.HardwareSecurityModules.SkuName.PayShield10K_LMK1_CPS60,
///         },
///         StampId = "stamp01",
///         Tags =
///         {
///             { "Dept", "hsm" },
///             { "Environment", "dogfood" },
///         },
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
/// 	hardwaresecuritymodules "github.com/pulumi/pulumi-azure-native-sdk/hardwaresecuritymodules/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hardwaresecuritymodules.NewDedicatedHsm(ctx, "dedicatedHsm", &hardwaresecuritymodules.DedicatedHsmArgs{
/// 			Location: pulumi.String("westus"),
/// 			ManagementNetworkProfile: &hardwaresecuritymodules.NetworkProfileArgs{
/// 				NetworkInterfaces: hardwaresecuritymodules.NetworkInterfaceArray{
/// 					&hardwaresecuritymodules.NetworkInterfaceArgs{
/// 						PrivateIpAddress: pulumi.String("1.0.0.2"),
/// 					},
/// 				},
/// 				Subnet: &hardwaresecuritymodules.ApiEntityReferenceArgs{
/// 					ResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01"),
/// 				},
/// 			},
/// 			Name: pulumi.String("hsm1"),
/// 			NetworkProfile: &hardwaresecuritymodules.NetworkProfileArgs{
/// 				NetworkInterfaces: hardwaresecuritymodules.NetworkInterfaceArray{
/// 					&hardwaresecuritymodules.NetworkInterfaceArgs{
/// 						PrivateIpAddress: pulumi.String("1.0.0.1"),
/// 					},
/// 				},
/// 				Subnet: &hardwaresecuritymodules.ApiEntityReferenceArgs{
/// 					ResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("hsm-group"),
/// 			Sku: &hardwaresecuritymodules.SkuArgs{
/// 				Name: pulumi.String(hardwaresecuritymodules.SkuName_PayShield10K_LMK1_CPS60),
/// 			},
/// 			StampId: pulumi.String("stamp01"),
/// 			Tags: pulumi.StringMap{
/// 				"Dept":        pulumi.String("hsm"),
/// 				"Environment": pulumi.String("dogfood"),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_hardwaresecuritymodules_dedicatedhsm" "dedicatedHsm" {
///   location = "westus"
///   management_network_profile = {
///     network_interfaces = [{
///       "privateIpAddress" = "1.0.0.2"
///     }]
///     subnet = {
///       resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01"
///     }
///   }
///   name = "hsm1"
///   network_profile = {
///     network_interfaces = [{
///       "privateIpAddress" = "1.0.0.1"
///     }]
///     subnet = {
///       resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01"
///     }
///   }
///   resource_group_name = "hsm-group"
///   sku = {
///     name = "payShield10K_LMK1_CPS60"
///   }
///   stamp_id = "stamp01"
///   tags = {
///     "Dept"        = "hsm"
///     "Environment" = "dogfood"
///   }
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
/// import com.pulumi.azurenative.hardwaresecuritymodules.DedicatedHsm;
/// import com.pulumi.azurenative.hardwaresecuritymodules.DedicatedHsmArgs;
/// import com.pulumi.azurenative.hardwaresecuritymodules.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.hardwaresecuritymodules.inputs.ApiEntityReferenceArgs;
/// import com.pulumi.azurenative.hardwaresecuritymodules.inputs.SkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var dedicatedHsm = new DedicatedHsm("dedicatedHsm", DedicatedHsmArgs.builder()
///             .location("westus")
///             .managementNetworkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceArgs.builder()
///                     .privateIpAddress("1.0.0.2")
///                     .build())
///                 .subnet(ApiEntityReferenceArgs.builder()
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01")
///                     .build())
///                 .build())
///             .name("hsm1")
///             .networkProfile(NetworkProfileArgs.builder()
///                 .networkInterfaces(NetworkInterfaceArgs.builder()
///                     .privateIpAddress("1.0.0.1")
///                     .build())
///                 .subnet(ApiEntityReferenceArgs.builder()
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01")
///                     .build())
///                 .build())
///             .resourceGroupName("hsm-group")
///             .sku(SkuArgs.builder()
///                 .name("payShield10K_LMK1_CPS60")
///                 .build())
///             .stampId("stamp01")
///             .tags(Map.ofEntries(
///                 Map.entry("Dept", "hsm"),
///                 Map.entry("Environment", "dogfood")
///             ))
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
/// const dedicatedHsm = new azure_native.hardwaresecuritymodules.DedicatedHsm("dedicatedHsm", {
///     location: "westus",
///     managementNetworkProfile: {
///         networkInterfaces: [{
///             privateIpAddress: "1.0.0.2",
///         }],
///         subnet: {
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01",
///         },
///     },
///     name: "hsm1",
///     networkProfile: {
///         networkInterfaces: [{
///             privateIpAddress: "1.0.0.1",
///         }],
///         subnet: {
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01",
///         },
///     },
///     resourceGroupName: "hsm-group",
///     sku: {
///         name: azure_native.hardwaresecuritymodules.SkuName.PayShield10K_LMK1_CPS60,
///     },
///     stampId: "stamp01",
///     tags: {
///         Dept: "hsm",
///         Environment: "dogfood",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dedicated_hsm = azure_native.hardwaresecuritymodules.DedicatedHsm("dedicatedHsm",
///     location="westus",
///     management_network_profile={
///         "network_interfaces": [{
///             "private_ip_address": "1.0.0.2",
///         }],
///         "subnet": {
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01",
///         },
///     },
///     name="hsm1",
///     network_profile={
///         "network_interfaces": [{
///             "private_ip_address": "1.0.0.1",
///         }],
///         "subnet": {
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01",
///         },
///     },
///     resource_group_name="hsm-group",
///     sku={
///         "name": azure_native.hardwaresecuritymodules.SkuName.PAY_SHIELD10_K_LMK1_CPS60,
///     },
///     stamp_id="stamp01",
///     tags={
///         "Dept": "hsm",
///         "Environment": "dogfood",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dedicatedHsm:
///     type: azure-native:hardwaresecuritymodules:DedicatedHsm
///     properties:
///       location: westus
///       managementNetworkProfile:
///         networkInterfaces:
///           - privateIpAddress: 1.0.0.2
///         subnet:
///           resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01
///       name: hsm1
///       networkProfile:
///         networkInterfaces:
///           - privateIpAddress: 1.0.0.1
///         subnet:
///           resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/hsm-group/providers/Microsoft.Network/virtualNetworks/stamp01/subnets/stamp01
///       resourceGroupName: hsm-group
///       sku:
///         name: payShield10K_LMK1_CPS60
///       stampId: stamp01
///       tags:
///         Dept: hsm
///         Environment: dogfood
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
/// $ pulumi import azure-native:hardwaresecuritymodules:DedicatedHsm hsm1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HardwareSecurityModules/dedicatedHSMs/{name}
/// ```
class DedicatedHsm extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Specifies the management network interfaces of the dedicated hsm.
  late final pulumi.Output<NetworkProfileResponse?> managementNetworkProfile;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Specifies the network interfaces of the dedicated hsm.
  late final pulumi.Output<NetworkProfileResponse?> networkProfile;
  /// Provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// SKU details
  late final pulumi.Output<SkuResponse> sku;
  /// This field will be used when RP does not support Availability zones.
  late final pulumi.Output<String?> stampId;
  /// Resource Status Message.
  late final pulumi.Output<String> statusMessage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The Dedicated Hsm zones.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [DedicatedHsm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedHsm]. {@macro pulumi_hardwaresecuritymodules_dedicated_hsm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedHsm(
    String name, {
    DedicatedHsmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hardwaresecuritymodules:DedicatedHsm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    managementNetworkProfile = registerOutput<NetworkProfileResponse?>('managementNetworkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse?>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stampId = registerOutput<String?>('stampId');
    statusMessage = registerOutput<String>('statusMessage');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [DedicatedHsm] resource.
  DedicatedHsm.reference(String urn)
    : super(
        'azure-native:hardwaresecuritymodules:DedicatedHsm',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    managementNetworkProfile = registerOutput<NetworkProfileResponse?>('managementNetworkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse?>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stampId = registerOutput<String?>('stampId');
    statusMessage = registerOutput<String>('statusMessage');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
