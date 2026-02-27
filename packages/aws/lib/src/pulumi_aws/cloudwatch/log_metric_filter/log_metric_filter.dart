import 'package:pulumi/pulumi.dart' as pulumi;
import '../log_metric_filter_metric_transformation/log_metric_filter_metric_transformation.dart';
import 'log_metric_filter_args.dart';

/// Provides a CloudWatch Log Metric Filter resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Log Metric Filter using the `log_group_name:name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logMetricFilter:LogMetricFilter test /aws/lambda/function:test
/// ```
class LogMetricFilter extends pulumi.CustomResource {
  /// Whether the metric filter will be applied on the transformed version of the log events instead of the original ingested log events. Defaults to `false`. Valid only for log groups that have an active log transformer.
  late final pulumi.Output<bool> applyOnTransformedLogs;

  /// The name of the log group to associate the metric filter with.
  late final pulumi.Output<String> logGroupName;

  /// A block defining collection of information needed to define how metric data gets emitted. See below.
  late final pulumi.Output<LogMetricFilterMetricTransformation>
      metricTransformation;

  /// A name for the metric filter.
  late final pulumi.Output<String> name;

  /// A valid [CloudWatch Logs filter pattern](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/FilterAndPatternSyntax.html)
  /// for extracting metric data out of ingested log events.
  late final pulumi.Output<String> pattern;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  LogMetricFilter(
    String name, {
    LogMetricFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logMetricFilter:LogMetricFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applyOnTransformedLogs =
        registerOutput<bool>('applyOnTransformedLogs');
    this.logGroupName = registerOutput<String>('logGroupName');
    this.metricTransformation =
        registerOutput<LogMetricFilterMetricTransformation>(
            'metricTransformation');
    this.name = registerOutput<String>('name');
    this.pattern = registerOutput<String>('pattern');
    this.region = registerOutput<String>('region');
  }
}
