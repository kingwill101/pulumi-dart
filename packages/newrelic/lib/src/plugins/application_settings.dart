import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_settings_args.dart';
import 'application_settings_error_collector.dart';
import 'application_settings_transaction_tracer.dart';

/// > **NOTE:** Applications are not created by this resource, but are created by a reporting agent.
///
/// Use this resource to manage configuration for an application that already exists in New Relic.
///
/// > **WARNING:** We encourage you to use this resource to manage all application settings together, not just a few, to avoid potential issues like incompatibility or unexpected behavior.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const app = new newrelic.plugins.ApplicationSettings("app", {
///     guid: "Mxxxxxxxxxxxxxxxxxxxxx",
///     name: "Sample New Relic APM Application",
///     appApdexThreshold: 0.7,
///     useServerSideConfig: true,
///     transactionTracers: [{
///         explainQueryPlans: [{
///             queryPlanThresholdType: "VALUE",
///             queryPlanThresholdValue: 0.5,
///         }],
///         sql: {
///             recordSql: "RAW",
///         },
///         stackTraceThresholdValue: 0.5,
///         transactionThresholdType: "VALUE",
///         transactionThresholdValue: 0.5,
///     }],
///     errorCollectors: [{
///         expectedErrorClasses: [],
///         expectedErrorCodes: [],
///         ignoredErrorClasses: [],
///         ignoredErrorCodes: [],
///     }],
///     enableSlowSql: true,
///     tracerType: "NONE",
///     enableThreadProfiler: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// app = newrelic.plugins.ApplicationSettings("app",
///     guid="Mxxxxxxxxxxxxxxxxxxxxx",
///     name="Sample New Relic APM Application",
///     app_apdex_threshold=0.7,
///     use_server_side_config=True,
///     transaction_tracers=[{
///         "explain_query_plans": [{
///             "query_plan_threshold_type": "VALUE",
///             "query_plan_threshold_value": 0.5,
///         }],
///         "sql": {
///             "record_sql": "RAW",
///         },
///         "stack_trace_threshold_value": 0.5,
///         "transaction_threshold_type": "VALUE",
///         "transaction_threshold_value": 0.5,
///     }],
///     error_collectors=[{
///         "expected_error_classes": [],
///         "expected_error_codes": [],
///         "ignored_error_classes": [],
///         "ignored_error_codes": [],
///     }],
///     enable_slow_sql=True,
///     tracer_type="NONE",
///     enable_thread_profiler=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var app = new NewRelic.Plugins.ApplicationSettings("app", new()
///     {
///         Guid = "Mxxxxxxxxxxxxxxxxxxxxx",
///         Name = "Sample New Relic APM Application",
///         AppApdexThreshold = 0.7,
///         UseServerSideConfig = true,
///         TransactionTracers = new[]
///         {
///             new NewRelic.Plugins.Inputs.ApplicationSettingsTransactionTracerArgs
///             {
///                 ExplainQueryPlans = new[]
///                 {
///                     new NewRelic.Plugins.Inputs.ApplicationSettingsTransactionTracerExplainQueryPlanArgs
///                     {
///                         QueryPlanThresholdType = "VALUE",
///                         QueryPlanThresholdValue = 0.5,
///                     },
///                 },
///                 Sql = new NewRelic.Plugins.Inputs.ApplicationSettingsTransactionTracerSqlArgs
///                 {
///                     RecordSql = "RAW",
///                 },
///                 StackTraceThresholdValue = 0.5,
///                 TransactionThresholdType = "VALUE",
///                 TransactionThresholdValue = 0.5,
///             },
///         },
///         ErrorCollectors = new[]
///         {
///             new NewRelic.Plugins.Inputs.ApplicationSettingsErrorCollectorArgs
///             {
///                 ExpectedErrorClasses = new() { },
///                 ExpectedErrorCodes = new() { },
///                 IgnoredErrorClasses = new() { },
///                 IgnoredErrorCodes = new() { },
///             },
///         },
///         EnableSlowSql = true,
///         TracerType = "NONE",
///         EnableThreadProfiler = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/plugins"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := plugins.NewApplicationSettings(ctx, "app", &plugins.ApplicationSettingsArgs{
/// 			Guid:                pulumi.String("Mxxxxxxxxxxxxxxxxxxxxx"),
/// 			Name:                pulumi.String("Sample New Relic APM Application"),
/// 			AppApdexThreshold:   pulumi.Float64(0.7),
/// 			UseServerSideConfig: pulumi.Bool(true),
/// 			TransactionTracers: plugins.ApplicationSettingsTransactionTracerArray{
/// 				&plugins.ApplicationSettingsTransactionTracerArgs{
/// 					ExplainQueryPlans: plugins.ApplicationSettingsTransactionTracerExplainQueryPlanArray{
/// 						&plugins.ApplicationSettingsTransactionTracerExplainQueryPlanArgs{
/// 							QueryPlanThresholdType:  pulumi.String("VALUE"),
/// 							QueryPlanThresholdValue: pulumi.Float64(0.5),
/// 						},
/// 					},
/// 					Sql: &plugins.ApplicationSettingsTransactionTracerSqlArgs{
/// 						RecordSql: pulumi.String("RAW"),
/// 					},
/// 					StackTraceThresholdValue:  pulumi.Float64(0.5),
/// 					TransactionThresholdType:  pulumi.String("VALUE"),
/// 					TransactionThresholdValue: pulumi.Float64(0.5),
/// 				},
/// 			},
/// 			ErrorCollectors: plugins.ApplicationSettingsErrorCollectorArray{
/// 				&plugins.ApplicationSettingsErrorCollectorArgs{
/// 					ExpectedErrorClasses: pulumi.StringArray{},
/// 					ExpectedErrorCodes:   pulumi.StringArray{},
/// 					IgnoredErrorClasses:  pulumi.StringArray{},
/// 					IgnoredErrorCodes:    pulumi.StringArray{},
/// 				},
/// 			},
/// 			EnableSlowSql:        pulumi.Bool(true),
/// 			TracerType:           pulumi.String("NONE"),
/// 			EnableThreadProfiler: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.newrelic.plugins.ApplicationSettings;
/// import com.pulumi.newrelic.plugins.ApplicationSettingsArgs;
/// import com.pulumi.newrelic.plugins.inputs.ApplicationSettingsTransactionTracerArgs;
/// import com.pulumi.newrelic.plugins.inputs.ApplicationSettingsTransactionTracerSqlArgs;
/// import com.pulumi.newrelic.plugins.inputs.ApplicationSettingsErrorCollectorArgs;
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
///         var app = new ApplicationSettings("app", ApplicationSettingsArgs.builder()
///             .guid("Mxxxxxxxxxxxxxxxxxxxxx")
///             .name("Sample New Relic APM Application")
///             .appApdexThreshold(0.7)
///             .useServerSideConfig(true)
///             .transactionTracers(ApplicationSettingsTransactionTracerArgs.builder()
///                 .explainQueryPlans(ApplicationSettingsTransactionTracerExplainQueryPlanArgs.builder()
///                     .queryPlanThresholdType("VALUE")
///                     .queryPlanThresholdValue(0.5)
///                     .build())
///                 .sql(ApplicationSettingsTransactionTracerSqlArgs.builder()
///                     .recordSql("RAW")
///                     .build())
///                 .stackTraceThresholdValue(0.5)
///                 .transactionThresholdType("VALUE")
///                 .transactionThresholdValue(0.5)
///                 .build())
///             .errorCollectors(ApplicationSettingsErrorCollectorArgs.builder()
///                 .expectedErrorClasses()
///                 .expectedErrorCodes()
///                 .ignoredErrorClasses()
///                 .ignoredErrorCodes()
///                 .build())
///             .enableSlowSql(true)
///             .tracerType("NONE")
///             .enableThreadProfiler(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   app:
///     type: newrelic:plugins:ApplicationSettings
///     properties:
///       guid: Mxxxxxxxxxxxxxxxxxxxxx
///       name: Sample New Relic APM Application
///       appApdexThreshold: '0.7'
///       useServerSideConfig: true
///       transactionTracers:
///         - explainQueryPlans:
///             - queryPlanThresholdType: VALUE
///               queryPlanThresholdValue: '0.5'
///           sql:
///             recordSql: RAW
///           stackTraceThresholdValue: '0.5'
///           transactionThresholdType: VALUE
///           transactionThresholdValue: '0.5'
///       errorCollectors:
///         - expectedErrorClasses: []
///           expectedErrorCodes: []
///           ignoredErrorClasses: []
///           ignoredErrorCodes: []
///       enableSlowSql: true
///       tracerType: NONE
///       enableThreadProfiler: true
/// ```
///
/// ## Notes
///
/// > **NOTE:** The `newrelic.plugins.ApplicationSettings` resource cannot be deleted directly via Terraform. It can only reset application settings to their initial state.
///
/// ## Import
///
/// Applications can be imported using notation `application_guid`, e.g.
///
/// ```sh
/// $ pulumi import newrelic:plugins/applicationSettings:ApplicationSettings main Mzk1NzUyNHQVRJNTxBUE18QVBQTElDc4ODU1MzYx
/// ```
class ApplicationSettings extends pulumi.CustomResource {
  /// The acceptable response time limit (Apdex threshold) for the application.
  late final pulumi.Output<double?> appApdexThreshold;
  /// Dummy field to support backward compatibility of previous version.should be removed with next major version.
  late final pulumi.Output<bool?> enableRealUserMonitoring;
  /// Enable or disable the collection of slowest database queries in your traces.
  late final pulumi.Output<bool?> enableSlowSql;
  /// Enable or disable the collection of thread profiling data.
  late final pulumi.Output<bool?> enableThreadProfiler;
  /// Dummy field to support backward compatibility of previous version.should be removed with next major version.
  late final pulumi.Output<double?> endUserApdexThreshold;
  /// Configuration block for error collection. Including this block enables the error collector. The following arguments are supported:
  late final pulumi.Output<List<ApplicationSettingsErrorCollector>?> errorCollectors;
  /// The GUID of the application in New Relic APM.
  ///
  /// > **NOTE:** While the attribute `guid` is not mandatory at a schema level, it is recommended to use `guid` over `name`, as support for using `name` with this resource shall eventually be discontinued. Please see the note under `name` for more details.
  late final pulumi.Output<String> guid;
  late final pulumi.Output<bool> isImported;
  /// A custom name or alias you can give the application in New Relic APM.
  ///
  /// > **NOTE:** <b style="color:red;">Please refrain from using the deprecated attribute `name`</b>with the resource `newrelic.plugins.ApplicationSettings` and use `guid` instead. For more information on the usage of `guid` against `name` and associated implications if the resource is upgraded from an older version of the New Relic Terraform Provider, please see the note in this section below.
  late final pulumi.Output<String> name;
  /// Configures the type of tracer used. Valid values are `CROSS_APPLICATION_TRACER`, `DISTRIBUTED_TRACING`, `NONE`, `OPT_OUT`.
  late final pulumi.Output<String?> tracerType;
  /// Configuration block for transaction tracer. Providing this block enables transaction tracing. The following arguments are supported:
  late final pulumi.Output<List<ApplicationSettingsTransactionTracer>?> transactionTracers;
  /// Enable or disable server side monitoring for the New Relic application.
  late final pulumi.Output<bool?> useServerSideConfig;

  /// Creates a new [ApplicationSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationSettings]. {@macro pulumi_plugins_application_settings_application_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationSettings(
    String name, {
    ApplicationSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:plugins/applicationSettings:ApplicationSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appApdexThreshold = registerOutput<double?>('appApdexThreshold');
    this.enableRealUserMonitoring = registerOutput<bool?>('enableRealUserMonitoring');
    this.enableSlowSql = registerOutput<bool?>('enableSlowSql');
    this.enableThreadProfiler = registerOutput<bool?>('enableThreadProfiler');
    this.endUserApdexThreshold = registerOutput<double?>('endUserApdexThreshold');
    this.errorCollectors = registerOutput<List<ApplicationSettingsErrorCollector>?>('errorCollectors');
    this.guid = registerOutput<String>('guid');
    this.isImported = registerOutput<bool>('isImported');
    this.name = registerOutput<String>('name');
    this.tracerType = registerOutput<String?>('tracerType');
    this.transactionTracers = registerOutput<List<ApplicationSettingsTransactionTracer>?>('transactionTracers');
    this.useServerSideConfig = registerOutput<bool?>('useServerSideConfig');
  }
}
