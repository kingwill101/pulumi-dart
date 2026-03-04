import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_blocklist_item_args.dart';
import 'rai_blocklist_item_properties_response.dart';
import 'system_data_response.dart';

/// Cognitive Services RaiBlocklist Item.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutRaiBlocklistItem
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var raiBlocklistItem = new AzureNative.CognitiveServices.RaiBlocklistItem("raiBlocklistItem", new()
///     {
///         AccountName = "accountName",
///         Properties = new AzureNative.CognitiveServices.Inputs.RaiBlocklistItemPropertiesArgs
///         {
///             IsRegex = false,
///             Pattern = "Pattern To Block",
///         },
///         RaiBlocklistItemName = "raiBlocklistItemName",
///         RaiBlocklistName = "raiBlocklistName",
///         ResourceGroupName = "resourceGroupName",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewRaiBlocklistItem(ctx, "raiBlocklistItem", &cognitiveservices.RaiBlocklistItemArgs{
/// 			AccountName: pulumi.String("accountName"),
/// 			Properties: &cognitiveservices.RaiBlocklistItemPropertiesArgs{
/// 				IsRegex: pulumi.Bool(false),
/// 				Pattern: pulumi.String("Pattern To Block"),
/// 			},
/// 			RaiBlocklistItemName: pulumi.String("raiBlocklistItemName"),
/// 			RaiBlocklistName:     pulumi.String("raiBlocklistName"),
/// 			ResourceGroupName:    pulumi.String("resourceGroupName"),
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
/// import com.pulumi.azurenative.cognitiveservices.RaiBlocklistItem;
/// import com.pulumi.azurenative.cognitiveservices.RaiBlocklistItemArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.RaiBlocklistItemPropertiesArgs;
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
///         var raiBlocklistItem = new RaiBlocklistItem("raiBlocklistItem", RaiBlocklistItemArgs.builder()
///             .accountName("accountName")
///             .properties(RaiBlocklistItemPropertiesArgs.builder()
///                 .isRegex(false)
///                 .pattern("Pattern To Block")
///                 .build())
///             .raiBlocklistItemName("raiBlocklistItemName")
///             .raiBlocklistName("raiBlocklistName")
///             .resourceGroupName("resourceGroupName")
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
/// const raiBlocklistItem = new azure_native.cognitiveservices.RaiBlocklistItem("raiBlocklistItem", {
///     accountName: "accountName",
///     properties: {
///         isRegex: false,
///         pattern: "Pattern To Block",
///     },
///     raiBlocklistItemName: "raiBlocklistItemName",
///     raiBlocklistName: "raiBlocklistName",
///     resourceGroupName: "resourceGroupName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rai_blocklist_item = azure_native.cognitiveservices.RaiBlocklistItem("raiBlocklistItem",
///     account_name="accountName",
///     properties={
///         "is_regex": False,
///         "pattern": "Pattern To Block",
///     },
///     rai_blocklist_item_name="raiBlocklistItemName",
///     rai_blocklist_name="raiBlocklistName",
///     resource_group_name="resourceGroupName")
///
/// ```
///
/// ```yaml
/// resources:
///   raiBlocklistItem:
///     type: azure-native:cognitiveservices:RaiBlocklistItem
///     properties:
///       accountName: accountName
///       properties:
///         isRegex: false
///         pattern: Pattern To Block
///       raiBlocklistItemName: raiBlocklistItemName
///       raiBlocklistName: raiBlocklistName
///       resourceGroupName: resourceGroupName
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
/// $ pulumi import azure-native:cognitiveservices:RaiBlocklistItem raiBlocklistItemName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/raiBlocklists/{raiBlocklistName}/raiBlocklistItems/{raiBlocklistItemName}
/// ```
class RaiBlocklistItem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource Etag.
  late final pulumi.Output<String> etag;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of Cognitive Services RaiBlocklist Item.
  late final pulumi.Output<RaiBlocklistItemPropertiesResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RaiBlocklistItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RaiBlocklistItem]. {@macro pulumi_cognitiveservices_rai_blocklist_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RaiBlocklistItem(
    String name, {
    RaiBlocklistItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cognitiveservices:RaiBlocklistItem',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RaiBlocklistItemPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
