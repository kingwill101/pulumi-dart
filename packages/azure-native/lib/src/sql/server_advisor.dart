import 'package:pulumi/pulumi.dart' as pulumi;
import 'recommended_action_response.dart';
import 'server_advisor_args.dart';

/// Database, Server or Elastic Pool Advisor.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2014-04-01, 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update server advisor
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverAdvisor = new AzureNative.Sql.ServerAdvisor("serverAdvisor", new()
///     {
///         AdvisorName = "CreateIndex",
///         AutoExecuteStatus = AzureNative.Sql.AutoExecuteStatus.Disabled,
///         ResourceGroupName = "workloadinsight-demos",
///         ServerName = "misosisvr",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewServerAdvisor(ctx, "serverAdvisor", &sql.ServerAdvisorArgs{
/// 			AdvisorName:       pulumi.String("CreateIndex"),
/// 			AutoExecuteStatus: sql.AutoExecuteStatusDisabled,
/// 			ResourceGroupName: pulumi.String("workloadinsight-demos"),
/// 			ServerName:        pulumi.String("misosisvr"),
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
/// import com.pulumi.azurenative.sql.ServerAdvisor;
/// import com.pulumi.azurenative.sql.ServerAdvisorArgs;
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
///         var serverAdvisor = new ServerAdvisor("serverAdvisor", ServerAdvisorArgs.builder()
///             .advisorName("CreateIndex")
///             .autoExecuteStatus("Disabled")
///             .resourceGroupName("workloadinsight-demos")
///             .serverName("misosisvr")
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
/// const serverAdvisor = new azure_native.sql.ServerAdvisor("serverAdvisor", {
///     advisorName: "CreateIndex",
///     autoExecuteStatus: azure_native.sql.AutoExecuteStatus.Disabled,
///     resourceGroupName: "workloadinsight-demos",
///     serverName: "misosisvr",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_advisor = azure_native.sql.ServerAdvisor("serverAdvisor",
///     advisor_name="CreateIndex",
///     auto_execute_status=azure_native.sql.AutoExecuteStatus.DISABLED,
///     resource_group_name="workloadinsight-demos",
///     server_name="misosisvr")
///
/// ```
///
/// ```yaml
/// resources:
///   serverAdvisor:
///     type: azure-native:sql:ServerAdvisor
///     properties:
///       advisorName: CreateIndex
///       autoExecuteStatus: Disabled
///       resourceGroupName: workloadinsight-demos
///       serverName: misosisvr
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
/// $ pulumi import azure-native:sql:ServerAdvisor CreateIndex /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/advisors/{advisorName}
/// ```
class ServerAdvisor extends pulumi.CustomResource {
  /// Gets the status of availability of this advisor to customers. Possible values are 'GA', 'PublicPreview', 'LimitedPublicPreview' and 'PrivatePreview'.
  late final pulumi.Output<String> advisorStatus;
  /// Gets the auto-execute status (whether to let the system execute the recommendations) of this advisor. Possible values are 'Enabled' and 'Disabled'
  late final pulumi.Output<String> autoExecuteStatus;
  /// Gets the resource from which current value of auto-execute status is inherited. Auto-execute status can be set on (and inherited from) different levels in the resource hierarchy. Possible values are 'Subscription', 'Server', 'ElasticPool', 'Database' and 'Default' (when status is not explicitly set on any level).
  late final pulumi.Output<String> autoExecuteStatusInheritedFrom;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource kind.
  late final pulumi.Output<String> kind;
  /// Gets the time when the current resource was analyzed for recommendations by this advisor.
  late final pulumi.Output<String> lastChecked;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Gets that status of recommendations for this advisor and reason for not having any recommendations. Possible values include, but are not limited to, 'Ok' (Recommendations available),LowActivity (not enough workload to analyze), 'DbSeemsTuned' (Database is doing well), etc.
  late final pulumi.Output<String> recommendationsStatus;
  /// Gets the recommended actions for this advisor.
  late final pulumi.Output<List<RecommendedActionResponse>> recommendedActions;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ServerAdvisor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerAdvisor]. {@macro pulumi_sql_server_advisor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerAdvisor(
    String name, {
    ServerAdvisorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ServerAdvisor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advisorStatus = registerOutput<String>('advisorStatus');
    this.autoExecuteStatus = registerOutput<String>('autoExecuteStatus');
    this.autoExecuteStatusInheritedFrom = registerOutput<String>('autoExecuteStatusInheritedFrom');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.kind = registerOutput<String>('kind');
    this.lastChecked = registerOutput<String>('lastChecked');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.recommendationsStatus = registerOutput<String>('recommendationsStatus');
    this.recommendedActions = registerOutput<List<RecommendedActionResponse>>('recommendedActions');
    this.type = registerOutput<String>('type');
  }
}
