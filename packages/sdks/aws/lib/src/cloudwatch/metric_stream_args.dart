// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_stream_exclude_filter.dart';
import 'metric_stream_include_filter.dart';
import 'metric_stream_statistics_configuration.dart';

/// {@template pulumi_cloudwatch_metric_stream_metric_stream_args_doc}
/// The set of arguments for MetricStream.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_metric_stream_metric_stream_args_doc}
class MetricStreamArgs {
  /// List of exclusive metric filters. If you specify this parameter, the stream sends metrics from all metric namespaces except for the namespaces and the conditional metric names that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is excluded. Conflicts with `include_filter`.
  final pulumi.Input<List<MetricStreamExcludeFilter>>? excludeFilters;
  /// ARN of the Amazon Kinesis Firehose delivery stream to use for this metric stream.
  final pulumi.Input<String> firehoseArn;
  /// List of inclusive metric filters. If you specify this parameter, the stream sends only the conditional metric names from the metric namespaces that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is included. Conflicts with `exclude_filter`.
  final pulumi.Input<List<MetricStreamIncludeFilter>>? includeFilters;
  /// If you are creating a metric stream in a monitoring account, specify true to include metrics from source accounts that are linked to this monitoring account, in the metric stream. The default is false. For more information about linking accounts, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
  final pulumi.Input<bool>? includeLinkedAccountsMetrics;
  /// Friendly name of the metric stream. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Output format for the stream. Possible values are `json`, `opentelemetry0.7`, and `opentelemetry1.0`. For more information about output formats, see [Metric streams output formats](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-formats.html).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> outputFormat;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM role that this metric stream will use to access Amazon Kinesis Firehose resources. For more information about role permissions, see [Trust between CloudWatch and Kinesis Data Firehose](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html).
  final pulumi.Input<String> roleArn;
  /// For each entry in this array, you specify one or more metrics and the list of additional statistics to stream for those metrics. The additional statistics that you can stream depend on the stream's `output_format`. If the OutputFormat is `json`, you can stream any additional statistic that is supported by CloudWatch, listed in [CloudWatch statistics definitions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html.html). If the OutputFormat is `opentelemetry0.7` or `opentelemetry1.0`, you can stream percentile statistics (p99 etc.). See details below.
  final pulumi.Input<List<MetricStreamStatisticsConfiguration>>? statisticsConfigurations;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MetricStreamArgs].
  /// [excludeFilters] List of exclusive metric filters. If you specify this parameter, the stream sends metrics from all metric namespaces except for the namespaces and the conditional metric names that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is excluded. Conflicts with `include_filter`.
  /// [firehoseArn] ARN of the Amazon Kinesis Firehose delivery stream to use for this metric stream.
  /// [includeFilters] List of inclusive metric filters. If you specify this parameter, the stream sends only the conditional metric names from the metric namespaces that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is included. Conflicts with `exclude_filter`.
  /// [includeLinkedAccountsMetrics] If you are creating a metric stream in a monitoring account, specify true to include metrics from source accounts that are linked to this monitoring account, in the metric stream. The default is false. For more information about linking accounts, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
  /// [name] Friendly name of the metric stream. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`.
  /// [outputFormat] Output format for the stream. Possible values are `json`, `opentelemetry0.7`, and `opentelemetry1.0`. For more information about output formats, see [Metric streams output formats](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-formats.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role that this metric stream will use to access Amazon Kinesis Firehose resources. For more information about role permissions, see [Trust between CloudWatch and Kinesis Data Firehose](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html).
  /// [statisticsConfigurations] For each entry in this array, you specify one or more metrics and the list of additional statistics to stream for those metrics. The additional statistics that you can stream depend on the stream's `output_format`. If the OutputFormat is `json`, you can stream any additional statistic that is supported by CloudWatch, listed in [CloudWatch statistics definitions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html.html). If the OutputFormat is `opentelemetry0.7` or `opentelemetry1.0`, you can stream percentile statistics (p99 etc.). See details below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  MetricStreamArgs({
    pulumi.Output<List<MetricStreamExcludeFilter>>? excludeFilters,
    required pulumi.Output<String> firehoseArn,
    pulumi.Output<List<MetricStreamIncludeFilter>>? includeFilters,
    pulumi.Output<bool>? includeLinkedAccountsMetrics,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    required pulumi.Output<String> outputFormat,
    pulumi.Output<String>? region,
    required pulumi.Output<String> roleArn,
    pulumi.Output<List<MetricStreamStatisticsConfiguration>>? statisticsConfigurations,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      excludeFilters = pulumi.Input.asOptionalInput<List<MetricStreamExcludeFilter>>(excludeFilters),
      firehoseArn = pulumi.Input.asInput<String>(firehoseArn),
      includeFilters = pulumi.Input.asOptionalInput<List<MetricStreamIncludeFilter>>(includeFilters),
      includeLinkedAccountsMetrics = pulumi.Input.asOptionalInput<bool>(includeLinkedAccountsMetrics),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      outputFormat = pulumi.Input.asInput<String>(outputFormat),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asInput<String>(roleArn),
      statisticsConfigurations = pulumi.Input.asOptionalInput<List<MetricStreamStatisticsConfiguration>>(statisticsConfigurations),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeFilters': ?pulumi.Input.mapOptionalInputValue<List<MetricStreamExcludeFilter>, List<Map<String, dynamic>>>(excludeFilters, (value) => pulumi.Input.encodeList<MetricStreamExcludeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firehoseArn': firehoseArn,
      'includeFilters': ?pulumi.Input.mapOptionalInputValue<List<MetricStreamIncludeFilter>, List<Map<String, dynamic>>>(includeFilters, (value) => pulumi.Input.encodeList<MetricStreamIncludeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includeLinkedAccountsMetrics': ?includeLinkedAccountsMetrics,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'outputFormat': outputFormat,
      'region': ?region,
      'roleArn': roleArn,
      'statisticsConfigurations': ?pulumi.Input.mapOptionalInputValue<List<MetricStreamStatisticsConfiguration>, List<Map<String, dynamic>>>(statisticsConfigurations, (value) => pulumi.Input.encodeList<MetricStreamStatisticsConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory MetricStreamArgs.fromMap(Map<String, dynamic> map) {
    return MetricStreamArgs(
      excludeFilters: map['excludeFilters'] == null ? null : pulumi.Output.create<List<MetricStreamExcludeFilter>>(pulumi.Input.decodeList<MetricStreamExcludeFilter>(map['excludeFilters'], (value) => MetricStreamExcludeFilter.fromMap((value as Map).cast<String, dynamic>()))),
      firehoseArn: pulumi.Output.create<String>(map['firehoseArn'] as String),
      includeFilters: map['includeFilters'] == null ? null : pulumi.Output.create<List<MetricStreamIncludeFilter>>(pulumi.Input.decodeList<MetricStreamIncludeFilter>(map['includeFilters'], (value) => MetricStreamIncludeFilter.fromMap((value as Map).cast<String, dynamic>()))),
      includeLinkedAccountsMetrics: map['includeLinkedAccountsMetrics'] == null ? null : pulumi.Output.create<bool>(map['includeLinkedAccountsMetrics'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      outputFormat: pulumi.Output.create<String>(map['outputFormat'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: pulumi.Output.create<String>(map['roleArn'] as String),
      statisticsConfigurations: map['statisticsConfigurations'] == null ? null : pulumi.Output.create<List<MetricStreamStatisticsConfiguration>>(pulumi.Input.decodeList<MetricStreamStatisticsConfiguration>(map['statisticsConfigurations'], (value) => MetricStreamStatisticsConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

