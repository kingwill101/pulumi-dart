import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_access_args.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// PrivateAccesses tracked resource.
///
/// Uses Azure REST API version 2024-03-22-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-27-preview.
///
/// Other available API versions: 2023-10-27-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native chaos [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a private access resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateAccess = new AzureNative.Chaos.PrivateAccess("privateAccess", new()
///     {
///         Location = "centraluseuap",
///         PrivateAccessName = "myPrivateAccess",
///         ResourceGroupName = "myResourceGroup",
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
/// 	chaos "github.com/pulumi/pulumi-azure-native-sdk/chaos/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chaos.NewPrivateAccess(ctx, "privateAccess", &chaos.PrivateAccessArgs{
/// 			Location:          pulumi.String("centraluseuap"),
/// 			PrivateAccessName: pulumi.String("myPrivateAccess"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.chaos.PrivateAccess;
/// import com.pulumi.azurenative.chaos.PrivateAccessArgs;
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
///         var privateAccess = new PrivateAccess("privateAccess", PrivateAccessArgs.builder()
///             .location("centraluseuap")
///             .privateAccessName("myPrivateAccess")
///             .resourceGroupName("myResourceGroup")
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
/// const privateAccess = new azure_native.chaos.PrivateAccess("privateAccess", {
///     location: "centraluseuap",
///     privateAccessName: "myPrivateAccess",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_access = azure_native.chaos.PrivateAccess("privateAccess",
///     location="centraluseuap",
///     private_access_name="myPrivateAccess",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   privateAccess:
///     type: azure-native:chaos:PrivateAccess
///     properties:
///       location: centraluseuap
///       privateAccessName: myPrivateAccess
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update a private access resource with publicNetworkAccess
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateAccess = new AzureNative.Chaos.PrivateAccess("privateAccess", new()
///     {
///         Location = "centraluseuap",
///         PrivateAccessName = "myPrivateAccess",
///         PublicNetworkAccess = AzureNative.Chaos.PublicNetworkAccessOption.Enabled,
///         ResourceGroupName = "myResourceGroup",
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
/// 	chaos "github.com/pulumi/pulumi-azure-native-sdk/chaos/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chaos.NewPrivateAccess(ctx, "privateAccess", &chaos.PrivateAccessArgs{
/// 			Location:            pulumi.String("centraluseuap"),
/// 			PrivateAccessName:   pulumi.String("myPrivateAccess"),
/// 			PublicNetworkAccess: pulumi.String(chaos.PublicNetworkAccessOptionEnabled),
/// 			ResourceGroupName:   pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.chaos.PrivateAccess;
/// import com.pulumi.azurenative.chaos.PrivateAccessArgs;
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
///         var privateAccess = new PrivateAccess("privateAccess", PrivateAccessArgs.builder()
///             .location("centraluseuap")
///             .privateAccessName("myPrivateAccess")
///             .publicNetworkAccess("Enabled")
///             .resourceGroupName("myResourceGroup")
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
/// const privateAccess = new azure_native.chaos.PrivateAccess("privateAccess", {
///     location: "centraluseuap",
///     privateAccessName: "myPrivateAccess",
///     publicNetworkAccess: azure_native.chaos.PublicNetworkAccessOption.Enabled,
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_access = azure_native.chaos.PrivateAccess("privateAccess",
///     location="centraluseuap",
///     private_access_name="myPrivateAccess",
///     public_network_access=azure_native.chaos.PublicNetworkAccessOption.ENABLED,
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   privateAccess:
///     type: azure-native:chaos:PrivateAccess
///     properties:
///       location: centraluseuap
///       privateAccessName: myPrivateAccess
///       publicNetworkAccess: Enabled
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:chaos:PrivateAccess myPrivateAccess /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Chaos/privateAccesses/{privateAccessName}
/// ```
class PrivateAccess extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// A readonly collection of private endpoint connection. Currently only one endpoint connection is supported.
  late final pulumi.Output<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// Most recent provisioning state for the given privateAccess resource.
  late final pulumi.Output<String> provisioningState;
  /// Public Network Access Control for PrivateAccess resource.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateAccess]. {@macro pulumi_chaos_private_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateAccess(
    String name, {
    PrivateAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:chaos:PrivateAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>>('privateEndpointConnections');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
