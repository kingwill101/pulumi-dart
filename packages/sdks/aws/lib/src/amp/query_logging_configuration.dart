import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_logging_configuration_args.dart';
import 'query_logging_configuration_state.dart';
import 'query_logging_configuration_timeouts.dart';

/// Manages an Amazon Managed Service for Prometheus (AMP) Query Logging Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Workspace("example", {alias: "example"});
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {name: "/aws/prometheus/query-logs/example"});
/// const exampleQueryLoggingConfiguration = new aws.amp.QueryLoggingConfiguration("example", {
///     workspaceId: example.id,
///     destinations: [{
///         cloudwatchLogs: {
///             logGroupArn: pulumi.interpolate`${exampleLogGroup.arn}:*`,
///         },
///         filters: {
///             qspThreshold: 1000,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Workspace("example", alias="example")
/// example_log_group = aws.cloudwatch.LogGroup("example", name="/aws/prometheus/query-logs/example")
/// example_query_logging_configuration = aws.amp.QueryLoggingConfiguration("example",
///     workspace_id=example.id,
///     destinations=[{
///         "cloudwatch_logs": {
///             "log_group_arn": example_log_group.arn.apply(lambda arn: f"{arn}:*"),
///         },
///         "filters": {
///             "qsp_threshold": 1000,
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amp.Workspace("example", new()
///     {
///         Alias = "example",
///     });
///
///     var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "/aws/prometheus/query-logs/example",
///     });
///
///     var exampleQueryLoggingConfiguration = new Aws.Amp.QueryLoggingConfiguration("example", new()
///     {
///         WorkspaceId = example.Id,
///         Destinations = new[]
///         {
///             new Aws.Amp.Inputs.QueryLoggingConfigurationDestinationArgs
///             {
///                 CloudwatchLogs = new Aws.Amp.Inputs.QueryLoggingConfigurationDestinationCloudwatchLogsArgs
///                 {
///                     LogGroupArn = exampleLogGroup.Arn.Apply(arn => $"{arn}:*"),
///                 },
///                 Filters = new Aws.Amp.Inputs.QueryLoggingConfigurationDestinationFiltersArgs
///                 {
///                     QspThreshold = 1000,
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := amp.NewWorkspace(ctx, "example", &amp.WorkspaceArgs{
/// 			Alias: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("/aws/prometheus/query-logs/example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amp.NewQueryLoggingConfiguration(ctx, "example", &amp.QueryLoggingConfigurationArgs{
/// 			WorkspaceId: example.ID(),
/// 			Destinations: amp.QueryLoggingConfigurationDestinationArray{
/// 				&amp.QueryLoggingConfigurationDestinationArgs{
/// 					CloudwatchLogs: &amp.QueryLoggingConfigurationDestinationCloudwatchLogsArgs{
/// 						LogGroupArn: exampleLogGroup.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v:*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					Filters: &amp.QueryLoggingConfigurationDestinationFiltersArgs{
/// 						QspThreshold: pulumi.Int(1000),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceArgs;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.amp.QueryLoggingConfiguration;
/// import com.pulumi.aws.amp.QueryLoggingConfigurationArgs;
/// import com.pulumi.aws.amp.inputs.QueryLoggingConfigurationDestinationArgs;
/// import com.pulumi.aws.amp.inputs.QueryLoggingConfigurationDestinationCloudwatchLogsArgs;
/// import com.pulumi.aws.amp.inputs.QueryLoggingConfigurationDestinationFiltersArgs;
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
///         var example = new Workspace("example", WorkspaceArgs.builder()
///             .alias("example")
///             .build());
///
///         var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
///             .name("/aws/prometheus/query-logs/example")
///             .build());
///
///         var exampleQueryLoggingConfiguration = new QueryLoggingConfiguration("exampleQueryLoggingConfiguration", QueryLoggingConfigurationArgs.builder()
///             .workspaceId(example.id())
///             .destinations(QueryLoggingConfigurationDestinationArgs.builder()
///                 .cloudwatchLogs(QueryLoggingConfigurationDestinationCloudwatchLogsArgs.builder()
///                     .logGroupArn(exampleLogGroup.arn().applyValue(_arn -> String.format("%s:*", _arn)))
///                     .build())
///                 .filters(QueryLoggingConfigurationDestinationFiltersArgs.builder()
///                     .qspThreshold(1000)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Workspace
///     properties:
///       alias: example
///   exampleLogGroup:
///     type: aws:cloudwatch:LogGroup
///     name: example
///     properties:
///       name: /aws/prometheus/query-logs/example
///   exampleQueryLoggingConfiguration:
///     type: aws:amp:QueryLoggingConfiguration
///     name: example
///     properties:
///       workspaceId: ${example.id}
///       destinations:
///         - cloudwatchLogs:
///             logGroupArn: ${exampleLogGroup.arn}:*
///           filters:
///             qspThreshold: 1000
/// ```
class QueryLoggingConfiguration extends pulumi.CustomResource {
  /// Configuration block for the logging destinations. See `destinations`.
  late final pulumi.Output<List<Map<String, dynamic>>> destinations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<QueryLoggingConfigurationTimeouts?> timeouts;
  /// The ID of the AMP workspace for which to configure query logging.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [QueryLoggingConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QueryLoggingConfiguration]. {@macro pulumi_amp_query_logging_configuration_query_logging_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QueryLoggingConfiguration(
    String name, {
    QueryLoggingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/queryLoggingConfiguration:QueryLoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinations = registerOutput<List<Map<String, dynamic>>>('destinations');
    region = registerOutput<String>('region');
    timeouts = registerOutput<QueryLoggingConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueryLoggingConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [QueryLoggingConfiguration] resource's state with the given [name] and [id].
  static QueryLoggingConfiguration get(
    String name,
    pulumi.Input<String> id, {
    QueryLoggingConfigurationState? state,
  }) {
    return QueryLoggingConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QueryLoggingConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/queryLoggingConfiguration:QueryLoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinations = registerOutput<List<Map<String, dynamic>>>('destinations');
    region = registerOutput<String>('region');
    timeouts = registerOutput<QueryLoggingConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueryLoggingConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workspaceId = registerOutput<String>('workspaceId');
  }
}
