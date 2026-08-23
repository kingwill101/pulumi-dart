import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_blocklist_args.dart';
import 'rai_blocklist_properties_response.dart';
import 'system_data_response.dart';

/// Cognitive Services RaiBlocklist.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutRaiBlocklist
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var raiBlocklist = new AzureNative.CognitiveServices.RaiBlocklist("raiBlocklist", new()
///     {
///         AccountName = "accountName",
///         Properties = new AzureNative.CognitiveServices.Inputs.RaiBlocklistPropertiesArgs
///         {
///             Description = "Basic blocklist description",
///         },
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
/// 		_, err := cognitiveservices.NewRaiBlocklist(ctx, "raiBlocklist", &cognitiveservices.RaiBlocklistArgs{
/// 			AccountName: pulumi.String("accountName"),
/// 			Properties: &cognitiveservices.RaiBlocklistPropertiesArgs{
/// 				Description: pulumi.String("Basic blocklist description"),
/// 			},
/// 			RaiBlocklistName:  pulumi.String("raiBlocklistName"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
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
/// resource "azure-native_cognitiveservices_raiblocklist" "raiBlocklist" {
///   account_name = "accountName"
///   properties = {
///     description = "Basic blocklist description"
///   }
///   rai_blocklist_name  = "raiBlocklistName"
///   resource_group_name = "resourceGroupName"
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
/// import com.pulumi.azurenative.cognitiveservices.RaiBlocklist;
/// import com.pulumi.azurenative.cognitiveservices.RaiBlocklistArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.RaiBlocklistPropertiesArgs;
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
///         var raiBlocklist = new RaiBlocklist("raiBlocklist", RaiBlocklistArgs.builder()
///             .accountName("accountName")
///             .properties(RaiBlocklistPropertiesArgs.builder()
///                 .description("Basic blocklist description")
///                 .build())
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
/// const raiBlocklist = new azure_native.cognitiveservices.RaiBlocklist("raiBlocklist", {
///     accountName: "accountName",
///     properties: {
///         description: "Basic blocklist description",
///     },
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
/// rai_blocklist = azure_native.cognitiveservices.RaiBlocklist("raiBlocklist",
///     account_name="accountName",
///     properties={
///         "description": "Basic blocklist description",
///     },
///     rai_blocklist_name="raiBlocklistName",
///     resource_group_name="resourceGroupName")
///
/// ```
///
/// ```yaml
/// resources:
///   raiBlocklist:
///     type: azure-native:cognitiveservices:RaiBlocklist
///     properties:
///       accountName: accountName
///       properties:
///         description: Basic blocklist description
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
/// $ pulumi import azure-native:cognitiveservices:RaiBlocklist raiBlocklistName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/raiBlocklists/{raiBlocklistName}
/// ```
class RaiBlocklist extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Etag.
  late final pulumi.Output<String> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of Cognitive Services RaiBlocklist.
  late final pulumi.Output<RaiBlocklistPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RaiBlocklist].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RaiBlocklist]. {@macro pulumi_cognitiveservices_rai_blocklist_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RaiBlocklist(
    String name, {
    RaiBlocklistArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cognitiveservices:RaiBlocklist',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RaiBlocklistPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RaiBlocklistPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
