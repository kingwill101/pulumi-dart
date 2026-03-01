import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_args.dart';
import 'per_node_extension_state_response.dart';
import 'system_data_response.dart';

/// Details of a particular extension in HCI Cluster.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-12-15-preview, 2023-02-01, 2023-03-01, 2023-06-01, 2023-08-01, 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Arc Extension
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var extension = new AzureNative.AzureStackHCI.Extension("extension", new()
///     {
///         ArcSettingName = "default",
///         ClusterName = "myCluster",
///         EnableAutomaticUpgrade = false,
///         ExtensionName = "MicrosoftMonitoringAgent",
///         ProtectedSettings = new Dictionary<string, object?>
///         {
///             ["workspaceKey"] = "xx",
///         },
///         Publisher = "Microsoft.Compute",
///         ResourceGroupName = "test-rg",
///         Settings = new Dictionary<string, object?>
///         {
///             ["workspaceId"] = "xx",
///         },
///         Type = "MicrosoftMonitoringAgent",
///         TypeHandlerVersion = "1.10",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewExtension(ctx, "extension", &azurestackhci.ExtensionArgs{
/// 			ArcSettingName:         pulumi.String("default"),
/// 			ClusterName:            pulumi.String("myCluster"),
/// 			EnableAutomaticUpgrade: pulumi.Bool(false),
/// 			ExtensionName:          pulumi.String("MicrosoftMonitoringAgent"),
/// 			ProtectedSettings: pulumi.Any(map[string]interface{}{
/// 				"workspaceKey": "xx",
/// 			}),
/// 			Publisher:         pulumi.String("Microsoft.Compute"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			Settings: pulumi.Any(map[string]interface{}{
/// 				"workspaceId": "xx",
/// 			}),
/// 			Type:               pulumi.String("MicrosoftMonitoringAgent"),
/// 			TypeHandlerVersion: pulumi.String("1.10"),
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
/// import com.pulumi.azurenative.azurestackhci.Extension;
/// import com.pulumi.azurenative.azurestackhci.ExtensionArgs;
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
///         var extension = new Extension("extension", ExtensionArgs.builder()
///             .arcSettingName("default")
///             .clusterName("myCluster")
///             .enableAutomaticUpgrade(false)
///             .extensionName("MicrosoftMonitoringAgent")
///             .protectedSettings(Map.of("workspaceKey", "xx"))
///             .publisher("Microsoft.Compute")
///             .resourceGroupName("test-rg")
///             .settings(Map.of("workspaceId", "xx"))
///             .type("MicrosoftMonitoringAgent")
///             .typeHandlerVersion("1.10")
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
/// const extension = new azure_native.azurestackhci.Extension("extension", {
///     arcSettingName: "default",
///     clusterName: "myCluster",
///     enableAutomaticUpgrade: false,
///     extensionName: "MicrosoftMonitoringAgent",
///     protectedSettings: {
///         workspaceKey: "xx",
///     },
///     publisher: "Microsoft.Compute",
///     resourceGroupName: "test-rg",
///     settings: {
///         workspaceId: "xx",
///     },
///     type: "MicrosoftMonitoringAgent",
///     typeHandlerVersion: "1.10",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// extension = azure_native.azurestackhci.Extension("extension",
///     arc_setting_name="default",
///     cluster_name="myCluster",
///     enable_automatic_upgrade=False,
///     extension_name="MicrosoftMonitoringAgent",
///     protected_settings={
///         "workspaceKey": "xx",
///     },
///     publisher="Microsoft.Compute",
///     resource_group_name="test-rg",
///     settings={
///         "workspaceId": "xx",
///     },
///     type="MicrosoftMonitoringAgent",
///     type_handler_version="1.10")
///
/// ```
///
/// ```yaml
/// resources:
///   extension:
///     type: azure-native:azurestackhci:Extension
///     properties:
///       arcSettingName: default
///       clusterName: myCluster
///       enableAutomaticUpgrade: false
///       extensionName: MicrosoftMonitoringAgent
///       protectedSettings:
///         workspaceKey: xx
///       publisher: Microsoft.Compute
///       resourceGroupName: test-rg
///       settings:
///         workspaceId: xx
///       type: MicrosoftMonitoringAgent
///       typeHandlerVersion: '1.10'
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
/// $ pulumi import azure-native:azurestackhci:Extension MicrosoftMonitoringAgent /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/clusters/{clusterName}/arcSettings/{arcSettingName}/extensions/{extensionName}
/// ```
class Extension extends pulumi.CustomResource {
  /// Aggregate state of Arc Extensions across the nodes in this HCI cluster.
  late final pulumi.Output<String> aggregateState;
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  late final pulumi.Output<bool?> autoUpgradeMinorVersion;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  late final pulumi.Output<bool?> enableAutomaticUpgrade;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  late final pulumi.Output<String?> forceUpdateTag;
  /// Indicates if the extension is managed by azure or the user.
  late final pulumi.Output<String> managedBy;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// State of Arc Extension in each of the nodes.
  late final pulumi.Output<List<PerNodeExtensionStateResponse>> perNodeExtensionDetails;
  /// Protected settings (may contain secrets).
  late final pulumi.Output<dynamic> protectedSettings;
  /// Provisioning state of the Extension proxy resource.
  late final pulumi.Output<String> provisioningState;
  /// The name of the extension handler publisher.
  late final pulumi.Output<String?> publisher;
  /// Json formatted public settings for the extension.
  late final pulumi.Output<dynamic> settings;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Specifies the version of the script handler. Latest version would be used if not specified.
  late final pulumi.Output<String?> typeHandlerVersion;

  /// Creates a new [Extension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Extension]. {@macro pulumi_azurestackhci_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Extension(
    String name, {
    ExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:Extension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aggregateState = registerOutput<String>('aggregateState');
    this.autoUpgradeMinorVersion = registerOutput<bool?>('autoUpgradeMinorVersion');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.enableAutomaticUpgrade = registerOutput<bool?>('enableAutomaticUpgrade');
    this.forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    this.managedBy = registerOutput<String>('managedBy');
    this.name = registerOutput<String>('name');
    this.perNodeExtensionDetails = registerOutput<List<PerNodeExtensionStateResponse>>('perNodeExtensionDetails');
    this.protectedSettings = registerOutput<dynamic>('protectedSettings');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publisher = registerOutput<String?>('publisher');
    this.settings = registerOutput<dynamic>('settings');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
    this.typeHandlerVersion = registerOutput<String?>('typeHandlerVersion');
  }
}
