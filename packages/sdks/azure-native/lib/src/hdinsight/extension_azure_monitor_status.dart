import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_selected_configurations_response.dart';
import 'extension_azure_monitor_status_args.dart';

/// The azure monitor status response.
///
/// Uses Azure REST API version 2024-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-06-01, 2023-04-15-preview, 2023-08-15-preview, 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Enable azure monitor
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var extensionAzureMonitorStatus = new AzureNative.HDInsight.ExtensionAzureMonitorStatus("extensionAzureMonitorStatus", new()
///     {
///         ClusterName = "cluster1",
///         PrimaryKey = "**********",
///         ResourceGroupName = "rg1",
///         WorkspaceId = "a2090ead-8c9f-4fba-b70e-533e3e003163",
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
/// 	hdinsight "github.com/pulumi/pulumi-azure-native-sdk/hdinsight/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hdinsight.NewExtensionAzureMonitorStatus(ctx, "extensionAzureMonitorStatus", &hdinsight.ExtensionAzureMonitorStatusArgs{
/// 			ClusterName:       pulumi.String("cluster1"),
/// 			PrimaryKey:        pulumi.String("**********"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			WorkspaceId:       pulumi.String("a2090ead-8c9f-4fba-b70e-533e3e003163"),
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
/// import com.pulumi.azurenative.hdinsight.ExtensionAzureMonitorStatus;
/// import com.pulumi.azurenative.hdinsight.ExtensionAzureMonitorStatusArgs;
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
///         var extensionAzureMonitorStatus = new ExtensionAzureMonitorStatus("extensionAzureMonitorStatus", ExtensionAzureMonitorStatusArgs.builder()
///             .clusterName("cluster1")
///             .primaryKey("**********")
///             .resourceGroupName("rg1")
///             .workspaceId("a2090ead-8c9f-4fba-b70e-533e3e003163")
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
/// const extensionAzureMonitorStatus = new azure_native.hdinsight.ExtensionAzureMonitorStatus("extensionAzureMonitorStatus", {
///     clusterName: "cluster1",
///     primaryKey: "**********",
///     resourceGroupName: "rg1",
///     workspaceId: "a2090ead-8c9f-4fba-b70e-533e3e003163",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// extension_azure_monitor_status = azure_native.hdinsight.ExtensionAzureMonitorStatus("extensionAzureMonitorStatus",
///     cluster_name="cluster1",
///     primary_key="**********",
///     resource_group_name="rg1",
///     workspace_id="a2090ead-8c9f-4fba-b70e-533e3e003163")
///
/// ```
///
/// ```yaml
/// resources:
///   extensionAzureMonitorStatus:
///     type: azure-native:hdinsight:ExtensionAzureMonitorStatus
///     properties:
///       clusterName: cluster1
///       primaryKey: '**********'
///       resourceGroupName: rg1
///       workspaceId: a2090ead-8c9f-4fba-b70e-533e3e003163
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
/// $ pulumi import azure-native:hdinsight:ExtensionAzureMonitorStatus myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/extensions/azureMonitor
/// ```
class ExtensionAzureMonitorStatus extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The status of the monitor on the HDInsight cluster.
  late final pulumi.Output<bool?> clusterMonitoringEnabled;

  /// The selected configurations.
  late final pulumi.Output<AzureMonitorSelectedConfigurationsResponse?>
  selectedConfigurations;

  /// The workspace ID of the monitor on the HDInsight cluster.
  late final pulumi.Output<String?> workspaceId;

  /// Creates a new [ExtensionAzureMonitorStatus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExtensionAzureMonitorStatus]. {@macro pulumi_hdinsight_extension_azure_monitor_status_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExtensionAzureMonitorStatus(
    String name, {
    ExtensionAzureMonitorStatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hdinsight:ExtensionAzureMonitorStatus',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterMonitoringEnabled = registerOutput<bool?>(
      'clusterMonitoringEnabled',
    );
    selectedConfigurations =
        registerOutput<AzureMonitorSelectedConfigurationsResponse?>(
          'selectedConfigurations',
        );
    workspaceId = registerOutput<String?>('workspaceId');
  }
}
