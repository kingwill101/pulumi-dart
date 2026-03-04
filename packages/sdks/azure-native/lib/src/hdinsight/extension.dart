import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_args.dart';

/// The cluster monitoring status response.
///
/// Uses Azure REST API version 2024-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-06-01, 2023-04-15-preview, 2023-08-15-preview, 2025-01-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hdinsight [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a monitoring extension on Hadoop Linux cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var extension = new AzureNative.HDInsight.Extension("extension", new()
///     {
///         ClusterName = "cluster1",
///         ExtensionName = "clustermonitoring",
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
/// 		_, err := hdinsight.NewExtension(ctx, "extension", &hdinsight.ExtensionArgs{
/// 			ClusterName:       pulumi.String("cluster1"),
/// 			ExtensionName:     pulumi.String("clustermonitoring"),
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
/// import com.pulumi.azurenative.hdinsight.Extension;
/// import com.pulumi.azurenative.hdinsight.ExtensionArgs;
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
///             .clusterName("cluster1")
///             .extensionName("clustermonitoring")
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
/// const extension = new azure_native.hdinsight.Extension("extension", {
///     clusterName: "cluster1",
///     extensionName: "clustermonitoring",
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
/// extension = azure_native.hdinsight.Extension("extension",
///     cluster_name="cluster1",
///     extension_name="clustermonitoring",
///     primary_key="**********",
///     resource_group_name="rg1",
///     workspace_id="a2090ead-8c9f-4fba-b70e-533e3e003163")
///
/// ```
///
/// ```yaml
/// resources:
///   extension:
///     type: azure-native:hdinsight:Extension
///     properties:
///       clusterName: cluster1
///       extensionName: clustermonitoring
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
/// $ pulumi import azure-native:hdinsight:Extension myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/extensions/{extensionName}
/// ```
class Extension extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The status of the monitor on the HDInsight cluster.
  late final pulumi.Output<bool?> clusterMonitoringEnabled;

  /// The workspace ID of the monitor on the HDInsight cluster.
  late final pulumi.Output<String?> workspaceId;

  /// Creates a new [Extension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Extension]. {@macro pulumi_hdinsight_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Extension(
    String name, {
    ExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hdinsight:Extension',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterMonitoringEnabled = registerOutput<bool?>(
      'clusterMonitoringEnabled',
    );
    workspaceId = registerOutput<String?>('workspaceId');
  }
}
