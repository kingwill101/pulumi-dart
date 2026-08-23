import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_rai_blocklist_item_args.dart';
import 'rai_blocklist_item_properties_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-04-01-preview.
///
/// Other available API versions: 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create RaiBlocklist Item
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectionRaiBlocklistItem = new AzureNative.MachineLearningServices.ConnectionRaiBlocklistItem("connectionRaiBlocklistItem", new()
///     {
///         ConnectionName = "testConnection",
///         Properties = new AzureNative.MachineLearningServices.Inputs.RaiBlocklistItemPropertiesArgs
///         {
///             IsRegex = false,
///             Pattern = "Pattern To Block",
///         },
///         RaiBlocklistItemName = "raiBlocklistItemName",
///         RaiBlocklistName = "raiBlocklistName",
///         ResourceGroupName = "test-rg",
///         WorkspaceName = "aml-workspace-name",
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
/// 		_, err := machinelearningservices.NewConnectionRaiBlocklistItem(ctx, "connectionRaiBlocklistItem", &machinelearningservices.ConnectionRaiBlocklistItemArgs{
/// 			ConnectionName: pulumi.String("testConnection"),
/// 			Properties: &machinelearningservices.RaiBlocklistItemPropertiesArgs{
/// 				IsRegex: pulumi.Bool(false),
/// 				Pattern: pulumi.String("Pattern To Block"),
/// 			},
/// 			RaiBlocklistItemName: pulumi.String("raiBlocklistItemName"),
/// 			RaiBlocklistName:     pulumi.String("raiBlocklistName"),
/// 			ResourceGroupName:    pulumi.String("test-rg"),
/// 			WorkspaceName:        pulumi.String("aml-workspace-name"),
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
/// resource "azure-native_machinelearningservices_connectionraiblocklistitem" "connectionRaiBlocklistItem" {
///   connection_name = "testConnection"
///   properties = {
///     is_regex = false
///     pattern  = "Pattern To Block"
///   }
///   rai_blocklist_item_name = "raiBlocklistItemName"
///   rai_blocklist_name      = "raiBlocklistName"
///   resource_group_name     = "test-rg"
///   workspace_name          = "aml-workspace-name"
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
/// import com.pulumi.azurenative.machinelearningservices.ConnectionRaiBlocklistItem;
/// import com.pulumi.azurenative.machinelearningservices.ConnectionRaiBlocklistItemArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.RaiBlocklistItemPropertiesArgs;
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
///         var connectionRaiBlocklistItem = new ConnectionRaiBlocklistItem("connectionRaiBlocklistItem", ConnectionRaiBlocklistItemArgs.builder()
///             .connectionName("testConnection")
///             .properties(RaiBlocklistItemPropertiesArgs.builder()
///                 .isRegex(false)
///                 .pattern("Pattern To Block")
///                 .build())
///             .raiBlocklistItemName("raiBlocklistItemName")
///             .raiBlocklistName("raiBlocklistName")
///             .resourceGroupName("test-rg")
///             .workspaceName("aml-workspace-name")
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
/// const connectionRaiBlocklistItem = new azure_native.machinelearningservices.ConnectionRaiBlocklistItem("connectionRaiBlocklistItem", {
///     connectionName: "testConnection",
///     properties: {
///         isRegex: false,
///         pattern: "Pattern To Block",
///     },
///     raiBlocklistItemName: "raiBlocklistItemName",
///     raiBlocklistName: "raiBlocklistName",
///     resourceGroupName: "test-rg",
///     workspaceName: "aml-workspace-name",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connection_rai_blocklist_item = azure_native.machinelearningservices.ConnectionRaiBlocklistItem("connectionRaiBlocklistItem",
///     connection_name="testConnection",
///     properties={
///         "is_regex": False,
///         "pattern": "Pattern To Block",
///     },
///     rai_blocklist_item_name="raiBlocklistItemName",
///     rai_blocklist_name="raiBlocklistName",
///     resource_group_name="test-rg",
///     workspace_name="aml-workspace-name")
///
/// ```
///
/// ```yaml
/// resources:
///   connectionRaiBlocklistItem:
///     type: azure-native:machinelearningservices:ConnectionRaiBlocklistItem
///     properties:
///       connectionName: testConnection
///       properties:
///         isRegex: false
///         pattern: Pattern To Block
///       raiBlocklistItemName: raiBlocklistItemName
///       raiBlocklistName: raiBlocklistName
///       resourceGroupName: test-rg
///       workspaceName: aml-workspace-name
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
/// $ pulumi import azure-native:machinelearningservices:ConnectionRaiBlocklistItem raiBlocklistItemName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/connections/{connectionName}/raiBlocklists/{raiBlocklistName}/raiBlocklistItems/{raiBlocklistItemName}
/// ```
class ConnectionRaiBlocklistItem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// RAI Custom Blocklist Item properties.
  late final pulumi.Output<RaiBlocklistItemPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectionRaiBlocklistItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionRaiBlocklistItem]. {@macro pulumi_machinelearningservices_connection_rai_blocklist_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionRaiBlocklistItem(
    String name, {
    ConnectionRaiBlocklistItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:ConnectionRaiBlocklistItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RaiBlocklistItemPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RaiBlocklistItemPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
