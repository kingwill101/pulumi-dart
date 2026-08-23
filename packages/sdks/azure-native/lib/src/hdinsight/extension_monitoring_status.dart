import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_monitoring_status_args.dart';

/// The cluster monitoring status response.
///
/// Uses Azure REST API version 2024-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-06-01, 2023-04-15-preview, 2023-08-15-preview, 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Enable cluster monitoring
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var extensionMonitoringStatus = new AzureNative.HDInsight.ExtensionMonitoringStatus("extensionMonitoringStatus", new()
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
/// 		_, err := hdinsight.NewExtensionMonitoringStatus(ctx, "extensionMonitoringStatus", &hdinsight.ExtensionMonitoringStatusArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_hdinsight_extensionmonitoringstatus" "extensionMonitoringStatus" {
///   cluster_name        = "cluster1"
///   primary_key         = "**********"
///   resource_group_name = "rg1"
///   workspace_id        = "a2090ead-8c9f-4fba-b70e-533e3e003163"
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
/// import com.pulumi.azurenative.hdinsight.ExtensionMonitoringStatus;
/// import com.pulumi.azurenative.hdinsight.ExtensionMonitoringStatusArgs;
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
///         var extensionMonitoringStatus = new ExtensionMonitoringStatus("extensionMonitoringStatus", ExtensionMonitoringStatusArgs.builder()
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
/// const extensionMonitoringStatus = new azure_native.hdinsight.ExtensionMonitoringStatus("extensionMonitoringStatus", {
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
/// extension_monitoring_status = azure_native.hdinsight.ExtensionMonitoringStatus("extensionMonitoringStatus",
///     cluster_name="cluster1",
///     primary_key="**********",
///     resource_group_name="rg1",
///     workspace_id="a2090ead-8c9f-4fba-b70e-533e3e003163")
///
/// ```
///
/// ```yaml
/// resources:
///   extensionMonitoringStatus:
///     type: azure-native:hdinsight:ExtensionMonitoringStatus
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
/// $ pulumi import azure-native:hdinsight:ExtensionMonitoringStatus myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/extensions/clustermonitoring
/// ```
class ExtensionMonitoringStatus extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The status of the monitor on the HDInsight cluster.
  late final pulumi.Output<bool?> clusterMonitoringEnabled;
  /// The workspace ID of the monitor on the HDInsight cluster.
  late final pulumi.Output<String?> workspaceId;

  /// Creates a new [ExtensionMonitoringStatus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExtensionMonitoringStatus]. {@macro pulumi_hdinsight_extension_monitoring_status_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExtensionMonitoringStatus(
    String name, {
    ExtensionMonitoringStatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hdinsight:ExtensionMonitoringStatus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterMonitoringEnabled = registerOutput<bool?>('clusterMonitoringEnabled');
    workspaceId = registerOutput<String?>('workspaceId');
  }
}
