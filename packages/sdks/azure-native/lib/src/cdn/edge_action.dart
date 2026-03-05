import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_action_args.dart';
import 'sku_type_response.dart';
import 'system_data_response.dart';

/// Concrete tracked resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2024-07-22-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateEdgeAction
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var edgeAction = new AzureNative.Cdn.EdgeAction("edgeAction", new()
///     {
///         EdgeActionName = "edgeAction1",
///         Location = "global",
///         ResourceGroupName = "testrg",
///         Sku = new AzureNative.Cdn.Inputs.SkuTypeArgs
///         {
///             Name = "Standard",
///             Tier = "Standard",
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewEdgeAction(ctx, "edgeAction", &cdn.EdgeActionArgs{
/// 			EdgeActionName:    pulumi.String("edgeAction1"),
/// 			Location:          pulumi.String("global"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			Sku: &cdn.SkuTypeArgs{
/// 				Name: pulumi.String("Standard"),
/// 				Tier: pulumi.String("Standard"),
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
/// import com.pulumi.azurenative.cdn.EdgeAction;
/// import com.pulumi.azurenative.cdn.EdgeActionArgs;
/// import com.pulumi.azurenative.cdn.inputs.SkuTypeArgs;
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
///         var edgeAction = new EdgeAction("edgeAction", EdgeActionArgs.builder()
///             .edgeActionName("edgeAction1")
///             .location("global")
///             .resourceGroupName("testrg")
///             .sku(SkuTypeArgs.builder()
///                 .name("Standard")
///                 .tier("Standard")
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
/// const edgeAction = new azure_native.cdn.EdgeAction("edgeAction", {
///     edgeActionName: "edgeAction1",
///     location: "global",
///     resourceGroupName: "testrg",
///     sku: {
///         name: "Standard",
///         tier: "Standard",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// edge_action = azure_native.cdn.EdgeAction("edgeAction",
///     edge_action_name="edgeAction1",
///     location="global",
///     resource_group_name="testrg",
///     sku={
///         "name": "Standard",
///         "tier": "Standard",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   edgeAction:
///     type: azure-native:cdn:EdgeAction
///     properties:
///       edgeActionName: edgeAction1
///       location: global
///       resourceGroupName: testrg
///       sku:
///         name: Standard
///         tier: Standard
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
/// $ pulumi import azure-native:cdn:EdgeAction edgeAction1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/edgeActions/{edgeActionName}
/// ```
class EdgeAction extends pulumi.CustomResource {
  /// A list of attachments for the edge action
  late final pulumi.Output<List<Map<String, dynamic>>> attachments;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state of the edge action
  late final pulumi.Output<String> provisioningState;

  /// The sku type of the edge action
  late final pulumi.Output<SkuTypeResponse> sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EdgeAction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EdgeAction]. {@macro pulumi_cdn_edge_action_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EdgeAction(
    String name, {
    EdgeActionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cdn:EdgeAction',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attachments = registerOutput<List<Map<String, dynamic>>>('attachments');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<SkuTypeResponse>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SkuTypeResponse.fromMap(
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
