import 'package:pulumi/pulumi.dart' as pulumi;
import '../metric_stream_exclude_filter/metric_stream_exclude_filter.dart';
import '../metric_stream_include_filter/metric_stream_include_filter.dart';
import '../metric_stream_statistics_configuration/metric_stream_statistics_configuration.dart';
import 'metric_stream_args.dart';

/// Provides a CloudWatch Metric Stream resource.
///
/// ## Example Usage
///
/// ### Filters
///
///
///
/// ### Additional Statistics
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch metric streams using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/metricStream:MetricStream sample sample-stream-name
/// ```
class MetricStream extends pulumi.CustomResource {
  /// ARN of the metric stream.
  late final pulumi.Output<String> arn;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the metric stream was created.
  late final pulumi.Output<String> creationDate;

  /// List of exclusive metric filters. If you specify this parameter, the stream sends metrics from all metric namespaces except for the namespaces and the conditional metric names that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is excluded. Conflicts with `include_filter`.
  late final pulumi.Output<List<MetricStreamExcludeFilter>?> excludeFilters;

  /// ARN of the Amazon Kinesis Firehose delivery stream to use for this metric stream.
  late final pulumi.Output<String> firehoseArn;

  /// List of inclusive metric filters. If you specify this parameter, the stream sends only the conditional metric names from the metric namespaces that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is included. Conflicts with `exclude_filter`.
  late final pulumi.Output<List<MetricStreamIncludeFilter>?> includeFilters;

  /// If you are creating a metric stream in a monitoring account, specify true to include metrics from source accounts that are linked to this monitoring account, in the metric stream. The default is false. For more information about linking accounts, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
  late final pulumi.Output<bool?> includeLinkedAccountsMetrics;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the metric stream was last updated.
  late final pulumi.Output<String> lastUpdateDate;

  /// Friendly name of the metric stream. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Output format for the stream. Possible values are `json`, `opentelemetry0.7`, and `opentelemetry1.0`. For more information about output formats, see [Metric streams output formats](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-formats.html).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> outputFormat;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the IAM role that this metric stream will use to access Amazon Kinesis Firehose resources. For more information about role permissions, see [Trust between CloudWatch and Kinesis Data Firehose](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html).
  late final pulumi.Output<String> roleArn;

  /// State of the metric stream. Possible values are `running` and `stopped`.
  late final pulumi.Output<String> state;

  /// For each entry in this array, you specify one or more metrics and the list of additional statistics to stream for those metrics. The additional statistics that you can stream depend on the stream's `output_format`. If the OutputFormat is `json`, you can stream any additional statistic that is supported by CloudWatch, listed in [CloudWatch statistics definitions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html.html). If the OutputFormat is `opentelemetry0.7` or `opentelemetry1.0`, you can stream percentile statistics (p99 etc.). See details below.
  late final pulumi.Output<List<MetricStreamStatisticsConfiguration>?>
      statisticsConfigurations;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  MetricStream(
    String name, {
    MetricStreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/metricStream:MetricStream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationDate = registerOutput<String>('creationDate');
    this.excludeFilters =
        registerOutput<List<MetricStreamExcludeFilter>?>('excludeFilters');
    this.firehoseArn = registerOutput<String>('firehoseArn');
    this.includeFilters =
        registerOutput<List<MetricStreamIncludeFilter>?>('includeFilters');
    this.includeLinkedAccountsMetrics =
        registerOutput<bool?>('includeLinkedAccountsMetrics');
    this.lastUpdateDate = registerOutput<String>('lastUpdateDate');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.outputFormat = registerOutput<String>('outputFormat');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.state = registerOutput<String>('state');
    this.statisticsConfigurations =
        registerOutput<List<MetricStreamStatisticsConfiguration>?>(
            'statisticsConfigurations');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
