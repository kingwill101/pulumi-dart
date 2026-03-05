import 'package:pulumi/pulumi.dart' as pulumi;
import 'script_args.dart';
import 'system_data_response.dart';

/// Class representing a database script.
///
/// Uses Azure REST API version 2024-04-13. In version 2.x of the Azure Native provider, it used API version 2022-12-29.
///
/// Other available API versions: 2021-01-01, 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoScriptsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var script = new AzureNative.Kusto.Script("script", new()
///     {
///         ClusterName = "kustoCluster",
///         ContinueOnErrors = true,
///         DatabaseName = "KustoDatabase8",
///         ForceUpdateTag = "2bcf3c21-ffd1-4444-b9dd-e52e00ee53fe",
///         PrincipalPermissionsAction = AzureNative.Kusto.PrincipalPermissionsAction.RemovePermissionOnScriptCompletion,
///         ResourceGroupName = "kustorptest",
///         ScriptLevel = AzureNative.Kusto.ScriptLevel.Database,
///         ScriptName = "kustoScript",
///         ScriptUrl = "https://mysa.blob.core.windows.net/container/script.txt",
///         ScriptUrlSasToken = "?sv=2019-02-02&st=2019-04-29T22%3A18%3A26Z&se=2019-04-30T02%3A23%3A26Z&sr=b&sp=rw&sip=168.1.5.60-168.1.5.70&spr=https&sig=********************************",
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewScript(ctx, "script", &kusto.ScriptArgs{
/// 			ClusterName:                pulumi.String("kustoCluster"),
/// 			ContinueOnErrors:           pulumi.Bool(true),
/// 			DatabaseName:               pulumi.String("KustoDatabase8"),
/// 			ForceUpdateTag:             pulumi.String("2bcf3c21-ffd1-4444-b9dd-e52e00ee53fe"),
/// 			PrincipalPermissionsAction: pulumi.String(kusto.PrincipalPermissionsActionRemovePermissionOnScriptCompletion),
/// 			ResourceGroupName:          pulumi.String("kustorptest"),
/// 			ScriptLevel:                pulumi.String(kusto.ScriptLevelDatabase),
/// 			ScriptName:                 pulumi.String("kustoScript"),
/// 			ScriptUrl:                  pulumi.String("https://mysa.blob.core.windows.net/container/script.txt"),
/// 			ScriptUrlSasToken:          pulumi.String("?sv=2019-02-02&st=2019-04-29T22%3A18%3A26Z&se=2019-04-30T02%3A23%3A26Z&sr=b&sp=rw&sip=168.1.5.60-168.1.5.70&spr=https&sig=********************************"),
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
/// import com.pulumi.azurenative.kusto.Script;
/// import com.pulumi.azurenative.kusto.ScriptArgs;
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
///         var script = new Script("script", ScriptArgs.builder()
///             .clusterName("kustoCluster")
///             .continueOnErrors(true)
///             .databaseName("KustoDatabase8")
///             .forceUpdateTag("2bcf3c21-ffd1-4444-b9dd-e52e00ee53fe")
///             .principalPermissionsAction("RemovePermissionOnScriptCompletion")
///             .resourceGroupName("kustorptest")
///             .scriptLevel("Database")
///             .scriptName("kustoScript")
///             .scriptUrl("https://mysa.blob.core.windows.net/container/script.txt")
///             .scriptUrlSasToken("?sv=2019-02-02&st=2019-04-29T22%3A18%3A26Z&se=2019-04-30T02%3A23%3A26Z&sr=b&sp=rw&sip=168.1.5.60-168.1.5.70&spr=https&sig=********************************")
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
/// const script = new azure_native.kusto.Script("script", {
///     clusterName: "kustoCluster",
///     continueOnErrors: true,
///     databaseName: "KustoDatabase8",
///     forceUpdateTag: "2bcf3c21-ffd1-4444-b9dd-e52e00ee53fe",
///     principalPermissionsAction: azure_native.kusto.PrincipalPermissionsAction.RemovePermissionOnScriptCompletion,
///     resourceGroupName: "kustorptest",
///     scriptLevel: azure_native.kusto.ScriptLevel.Database,
///     scriptName: "kustoScript",
///     scriptUrl: "https://mysa.blob.core.windows.net/container/script.txt",
///     scriptUrlSasToken: "?sv=2019-02-02&st=2019-04-29T22%3A18%3A26Z&se=2019-04-30T02%3A23%3A26Z&sr=b&sp=rw&sip=168.1.5.60-168.1.5.70&spr=https&sig=********************************",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// script = azure_native.kusto.Script("script",
///     cluster_name="kustoCluster",
///     continue_on_errors=True,
///     database_name="KustoDatabase8",
///     force_update_tag="2bcf3c21-ffd1-4444-b9dd-e52e00ee53fe",
///     principal_permissions_action=azure_native.kusto.PrincipalPermissionsAction.REMOVE_PERMISSION_ON_SCRIPT_COMPLETION,
///     resource_group_name="kustorptest",
///     script_level=azure_native.kusto.ScriptLevel.DATABASE,
///     script_name="kustoScript",
///     script_url="https://mysa.blob.core.windows.net/container/script.txt",
///     script_url_sas_token="?sv=2019-02-02&st=2019-04-29T22%3A18%3A26Z&se=2019-04-30T02%3A23%3A26Z&sr=b&sp=rw&sip=168.1.5.60-168.1.5.70&spr=https&sig=********************************")
///
/// ```
///
/// ```yaml
/// resources:
///   script:
///     type: azure-native:kusto:Script
///     properties:
///       clusterName: kustoCluster
///       continueOnErrors: true
///       databaseName: KustoDatabase8
///       forceUpdateTag: 2bcf3c21-ffd1-4444-b9dd-e52e00ee53fe
///       principalPermissionsAction: RemovePermissionOnScriptCompletion
///       resourceGroupName: kustorptest
///       scriptLevel: Database
///       scriptName: kustoScript
///       scriptUrl: https://mysa.blob.core.windows.net/container/script.txt
///       scriptUrlSasToken: ?sv=2019-02-02&st=2019-04-29T22%3A18%3A26Z&se=2019-04-30T02%3A23%3A26Z&sr=b&sp=rw&sip=168.1.5.60-168.1.5.70&spr=https&sig=********************************
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
/// $ pulumi import azure-native:kusto:Script kustoCluster/KustoDatabase8/kustoScript /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/databases/{databaseName}/scripts/{scriptName}
/// ```
class Script extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Flag that indicates whether to continue if one of the command fails.
  late final pulumi.Output<bool?> continueOnErrors;
  /// A unique string. If changed the script will be applied again.
  late final pulumi.Output<String?> forceUpdateTag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Indicates if the permissions for the script caller are kept following completion of the script.
  late final pulumi.Output<String?> principalPermissionsAction;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Differentiates between the type of script commands included - Database or Cluster. The default is Database.
  late final pulumi.Output<String?> scriptLevel;
  /// The url to the KQL script blob file. Must not be used together with scriptContent property
  late final pulumi.Output<String?> scriptUrl;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Script].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Script]. {@macro pulumi_kusto_script_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Script(
    String name, {
    ScriptArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:Script',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    continueOnErrors = registerOutput<bool?>('continueOnErrors');
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    this.name = registerOutput<String>('name');
    principalPermissionsAction = registerOutput<String?>('principalPermissionsAction');
    provisioningState = registerOutput<String>('provisioningState');
    scriptLevel = registerOutput<String?>('scriptLevel');
    scriptUrl = registerOutput<String?>('scriptUrl');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
