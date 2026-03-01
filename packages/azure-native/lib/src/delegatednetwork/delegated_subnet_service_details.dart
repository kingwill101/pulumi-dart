import 'package:pulumi/pulumi.dart' as pulumi;
import 'controller_details_response.dart';
import 'delegated_subnet_service_details_args.dart';
import 'subnet_details_response.dart';

/// Represents an instance of a orchestrator.
///
/// Uses Azure REST API version 2023-06-27-preview. In version 2.x of the Azure Native provider, it used API version 2021-03-15.
///
/// Other available API versions: 2021-03-15, 2023-05-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native delegatednetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### put delegated subnet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var delegatedSubnetServiceDetails = new AzureNative.DelegatedNetwork.DelegatedSubnetServiceDetails("delegatedSubnetServiceDetails", new()
///     {
///         ControllerDetails = new AzureNative.DelegatedNetwork.Inputs.ControllerDetailsArgs
///         {
///             Id = "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/dnctestcontroller",
///         },
///         Location = "West US",
///         ResourceGroupName = "TestRG",
///         ResourceName = "delegated1",
///         SubnetDetails = new AzureNative.DelegatedNetwork.Inputs.SubnetDetailsArgs
///         {
///             Id = "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet",
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
/// 	delegatednetwork "github.com/pulumi/pulumi-azure-native-sdk/delegatednetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := delegatednetwork.NewDelegatedSubnetServiceDetails(ctx, "delegatedSubnetServiceDetails", &delegatednetwork.DelegatedSubnetServiceDetailsArgs{
/// 			ControllerDetails: &delegatednetwork.ControllerDetailsTypeArgs{
/// 				Id: pulumi.String("/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/dnctestcontroller"),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("TestRG"),
/// 			ResourceName:      pulumi.String("delegated1"),
/// 			SubnetDetails: &delegatednetwork.SubnetDetailsArgs{
/// 				Id: pulumi.String("/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.delegatednetwork.DelegatedSubnetServiceDetails;
/// import com.pulumi.azurenative.delegatednetwork.DelegatedSubnetServiceDetailsArgs;
/// import com.pulumi.azurenative.delegatednetwork.inputs.ControllerDetailsArgs;
/// import com.pulumi.azurenative.delegatednetwork.inputs.SubnetDetailsArgs;
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
///         var delegatedSubnetServiceDetails = new DelegatedSubnetServiceDetails("delegatedSubnetServiceDetails", DelegatedSubnetServiceDetailsArgs.builder()
///             .controllerDetails(ControllerDetailsArgs.builder()
///                 .id("/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/dnctestcontroller")
///                 .build())
///             .location("West US")
///             .resourceGroupName("TestRG")
///             .resourceName("delegated1")
///             .subnetDetails(SubnetDetailsArgs.builder()
///                 .id("/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet")
///                 .build())
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
/// const delegatedSubnetServiceDetails = new azure_native.delegatednetwork.DelegatedSubnetServiceDetails("delegatedSubnetServiceDetails", {
///     controllerDetails: {
///         id: "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/dnctestcontroller",
///     },
///     location: "West US",
///     resourceGroupName: "TestRG",
///     resourceName: "delegated1",
///     subnetDetails: {
///         id: "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// delegated_subnet_service_details = azure_native.delegatednetwork.DelegatedSubnetServiceDetails("delegatedSubnetServiceDetails",
///     controller_details={
///         "id": "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/dnctestcontroller",
///     },
///     location="West US",
///     resource_group_name="TestRG",
///     resource_name_="delegated1",
///     subnet_details={
///         "id": "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   delegatedSubnetServiceDetails:
///     type: azure-native:delegatednetwork:DelegatedSubnetServiceDetails
///     properties:
///       controllerDetails:
///         id: /subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/dnctestcontroller
///       location: West US
///       resourceGroupName: TestRG
///       resourceName: delegated1
///       subnetDetails:
///         id: /subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### put delegated subnet vnetblock
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var delegatedSubnetServiceDetails = new AzureNative.DelegatedNetwork.DelegatedSubnetServiceDetails("delegatedSubnetServiceDetails", new()
///     {
///         AllocationBlockPrefixSize = 27,
///         ControllerDetails = new AzureNative.DelegatedNetwork.Inputs.ControllerDetailsArgs
///         {
///             Id = "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/dnctestcontroller",
///         },
///         Location = "West US",
///         ResourceGroupName = "TestRG",
///         ResourceName = "delegated1",
///         SubnetDetails = new AzureNative.DelegatedNetwork.Inputs.SubnetDetailsArgs
///         {
///             Id = "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet",
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
/// 	delegatednetwork "github.com/pulumi/pulumi-azure-native-sdk/delegatednetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := delegatednetwork.NewDelegatedSubnetServiceDetails(ctx, "delegatedSubnetServiceDetails", &delegatednetwork.DelegatedSubnetServiceDetailsArgs{
/// 			AllocationBlockPrefixSize: pulumi.Int(27),
/// 			ControllerDetails: &delegatednetwork.ControllerDetailsTypeArgs{
/// 				Id: pulumi.String("/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/dnctestcontroller"),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("TestRG"),
/// 			ResourceName:      pulumi.String("delegated1"),
/// 			SubnetDetails: &delegatednetwork.SubnetDetailsArgs{
/// 				Id: pulumi.String("/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.delegatednetwork.DelegatedSubnetServiceDetails;
/// import com.pulumi.azurenative.delegatednetwork.DelegatedSubnetServiceDetailsArgs;
/// import com.pulumi.azurenative.delegatednetwork.inputs.ControllerDetailsArgs;
/// import com.pulumi.azurenative.delegatednetwork.inputs.SubnetDetailsArgs;
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
///         var delegatedSubnetServiceDetails = new DelegatedSubnetServiceDetails("delegatedSubnetServiceDetails", DelegatedSubnetServiceDetailsArgs.builder()
///             .allocationBlockPrefixSize(27)
///             .controllerDetails(ControllerDetailsArgs.builder()
///                 .id("/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/dnctestcontroller")
///                 .build())
///             .location("West US")
///             .resourceGroupName("TestRG")
///             .resourceName("delegated1")
///             .subnetDetails(SubnetDetailsArgs.builder()
///                 .id("/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet")
///                 .build())
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
/// const delegatedSubnetServiceDetails = new azure_native.delegatednetwork.DelegatedSubnetServiceDetails("delegatedSubnetServiceDetails", {
///     allocationBlockPrefixSize: 27,
///     controllerDetails: {
///         id: "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/dnctestcontroller",
///     },
///     location: "West US",
///     resourceGroupName: "TestRG",
///     resourceName: "delegated1",
///     subnetDetails: {
///         id: "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// delegated_subnet_service_details = azure_native.delegatednetwork.DelegatedSubnetServiceDetails("delegatedSubnetServiceDetails",
///     allocation_block_prefix_size=27,
///     controller_details={
///         "id": "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/dnctestcontroller",
///     },
///     location="West US",
///     resource_group_name="TestRG",
///     resource_name_="delegated1",
///     subnet_details={
///         "id": "/subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   delegatedSubnetServiceDetails:
///     type: azure-native:delegatednetwork:DelegatedSubnetServiceDetails
///     properties:
///       allocationBlockPrefixSize: 27
///       controllerDetails:
///         id: /subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.DelegatedNetwork/controller/dnctestcontroller
///       location: West US
///       resourceGroupName: TestRG
///       resourceName: delegated1
///       subnetDetails:
///         id: /subscriptions/613192d7-503f-477a-9cfe-4efc3ee2bd60/resourceGroups/TestRG/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet
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
/// $ pulumi import azure-native:delegatednetwork:DelegatedSubnetServiceDetails delegated1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DelegatedNetwork/delegatedSubnets/{resourceName}
/// ```
class DelegatedSubnetServiceDetails extends pulumi.CustomResource {
  /// Defines prefix size of CIDR blocks allocated to nodes in VnetBlock Mode.
  /// Delegated subnet's prefix size should be smaller than this by a minimum of 3.
  late final pulumi.Output<int?> allocationBlockPrefixSize;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Properties of the controller.
  late final pulumi.Output<ControllerDetailsResponse?> controllerDetails;
  /// Location of the resource.
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The current state of dnc delegated subnet resource.
  late final pulumi.Output<String> provisioningState;
  /// Resource guid.
  late final pulumi.Output<String> resourceGuid;
  /// subnet details
  late final pulumi.Output<SubnetDetailsResponse?> subnetDetails;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of resource.
  late final pulumi.Output<String> type;

  /// Creates a new [DelegatedSubnetServiceDetails].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DelegatedSubnetServiceDetails]. {@macro pulumi_delegatednetwork_delegated_subnet_service_details_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DelegatedSubnetServiceDetails(
    String name, {
    DelegatedSubnetServiceDetailsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:delegatednetwork:DelegatedSubnetServiceDetails',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocationBlockPrefixSize = registerOutput<int?>('allocationBlockPrefixSize');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.controllerDetails = registerOutput<ControllerDetailsResponse?>('controllerDetails');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceGuid = registerOutput<String>('resourceGuid');
    this.subnetDetails = registerOutput<SubnetDetailsResponse?>('subnetDetails');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
