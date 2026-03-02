// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_stream_exclude_filter.dart';
import 'metric_stream_include_filter.dart';
import 'metric_stream_statistics_configuration.dart';

/// Input properties used for looking up and filtering MetricStream resources.
class MetricStreamState {
  /// ARN of the metric stream.
  final pulumi.Input<String>? arn;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the metric stream was created.
  final pulumi.Input<String>? creationDate;
  /// List of exclusive metric filters. If you specify this parameter, the stream sends metrics from all metric namespaces except for the namespaces and the conditional metric names that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is excluded. Conflicts with `include_filter`.
  final pulumi.Input<List<MetricStreamExcludeFilter>>? excludeFilters;
  /// ARN of the Amazon Kinesis Firehose delivery stream to use for this metric stream.
  final pulumi.Input<String>? firehoseArn;
  /// List of inclusive metric filters. If you specify this parameter, the stream sends only the conditional metric names from the metric namespaces that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is included. Conflicts with `exclude_filter`.
  final pulumi.Input<List<MetricStreamIncludeFilter>>? includeFilters;
  /// If you are creating a metric stream in a monitoring account, specify true to include metrics from source accounts that are linked to this monitoring account, in the metric stream. The default is false. For more information about linking accounts, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
  final pulumi.Input<bool>? includeLinkedAccountsMetrics;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the metric stream was last updated.
  final pulumi.Input<String>? lastUpdateDate;
  /// Friendly name of the metric stream. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Output format for the stream. Possible values are `json`, `opentelemetry0.7`, and `opentelemetry1.0`. For more information about output formats, see [Metric streams output formats](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-formats.html).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? outputFormat;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM role that this metric stream will use to access Amazon Kinesis Firehose resources. For more information about role permissions, see [Trust between CloudWatch and Kinesis Data Firehose](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html).
  final pulumi.Input<String>? roleArn;
  /// State of the metric stream. Possible values are `running` and `stopped`.
  final pulumi.Input<String>? state;
  /// For each entry in this array, you specify one or more metrics and the list of additional statistics to stream for those metrics. The additional statistics that you can stream depend on the stream's `output_format`. If the OutputFormat is `json`, you can stream any additional statistic that is supported by CloudWatch, listed in [CloudWatch statistics definitions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html.html). If the OutputFormat is `opentelemetry0.7` or `opentelemetry1.0`, you can stream percentile statistics (p99 etc.). See details below.
  final pulumi.Input<List<MetricStreamStatisticsConfiguration>>? statisticsConfigurations;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [MetricStreamState].
  /// [arn] ARN of the metric stream.
  /// [creationDate] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the metric stream was created.
  /// [excludeFilters] List of exclusive metric filters. If you specify this parameter, the stream sends metrics from all metric namespaces except for the namespaces and the conditional metric names that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is excluded. Conflicts with `include_filter`.
  /// [firehoseArn] ARN of the Amazon Kinesis Firehose delivery stream to use for this metric stream.
  /// [includeFilters] List of inclusive metric filters. If you specify this parameter, the stream sends only the conditional metric names from the metric namespaces that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is included. Conflicts with `exclude_filter`.
  /// [includeLinkedAccountsMetrics] If you are creating a metric stream in a monitoring account, specify true to include metrics from source accounts that are linked to this monitoring account, in the metric stream. The default is false. For more information about linking accounts, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
  /// [lastUpdateDate] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the metric stream was last updated.
  /// [name] Friendly name of the metric stream. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`.
  /// [outputFormat] Output format for the stream. Possible values are `json`, `opentelemetry0.7`, and `opentelemetry1.0`. For more information about output formats, see [Metric streams output formats](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-formats.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role that this metric stream will use to access Amazon Kinesis Firehose resources. For more information about role permissions, see [Trust between CloudWatch and Kinesis Data Firehose](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html).
  /// [state] State of the metric stream. Possible values are `running` and `stopped`.
  /// [statisticsConfigurations] For each entry in this array, you specify one or more metrics and the list of additional statistics to stream for those metrics. The additional statistics that you can stream depend on the stream's `output_format`. If the OutputFormat is `json`, you can stream any additional statistic that is supported by CloudWatch, listed in [CloudWatch statistics definitions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html.html). If the OutputFormat is `opentelemetry0.7` or `opentelemetry1.0`, you can stream percentile statistics (p99 etc.). See details below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  MetricStreamState({
    this.arn,
    this.creationDate,
    this.excludeFilters,
    this.firehoseArn,
    this.includeFilters,
    this.includeLinkedAccountsMetrics,
    this.lastUpdateDate,
    this.name,
    this.namePrefix,
    this.outputFormat,
    this.region,
    this.roleArn,
    this.state,
    this.statisticsConfigurations,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationDate': ?creationDate,
      'excludeFilters': ?pulumi.Input.mapOptionalInputValue<List<MetricStreamExcludeFilter>, List<Map<String, dynamic>>>(excludeFilters, (value) => pulumi.Input.encodeList<MetricStreamExcludeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firehoseArn': ?firehoseArn,
      'includeFilters': ?pulumi.Input.mapOptionalInputValue<List<MetricStreamIncludeFilter>, List<Map<String, dynamic>>>(includeFilters, (value) => pulumi.Input.encodeList<MetricStreamIncludeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includeLinkedAccountsMetrics': ?includeLinkedAccountsMetrics,
      'lastUpdateDate': ?lastUpdateDate,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'outputFormat': ?outputFormat,
      'region': ?region,
      'roleArn': ?roleArn,
      'state': ?state,
      'statisticsConfigurations': ?pulumi.Input.mapOptionalInputValue<List<MetricStreamStatisticsConfiguration>, List<Map<String, dynamic>>>(statisticsConfigurations, (value) => pulumi.Input.encodeList<MetricStreamStatisticsConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory MetricStreamState.fromMap(Map<String, dynamic> map) {
    return MetricStreamState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      creationDate: map['creationDate'] == null ? null : (map['creationDate'] as String).input(),
      excludeFilters: map['excludeFilters'] == null ? null : (pulumi.Input.decodeList<MetricStreamExcludeFilter>(map['excludeFilters'], (value) => MetricStreamExcludeFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      firehoseArn: map['firehoseArn'] == null ? null : (map['firehoseArn'] as String).input(),
      includeFilters: map['includeFilters'] == null ? null : (pulumi.Input.decodeList<MetricStreamIncludeFilter>(map['includeFilters'], (value) => MetricStreamIncludeFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      includeLinkedAccountsMetrics: map['includeLinkedAccountsMetrics'] == null ? null : (map['includeLinkedAccountsMetrics'] as bool).input(),
      lastUpdateDate: map['lastUpdateDate'] == null ? null : (map['lastUpdateDate'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      outputFormat: map['outputFormat'] == null ? null : (map['outputFormat'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      statisticsConfigurations: map['statisticsConfigurations'] == null ? null : (pulumi.Input.decodeList<MetricStreamStatisticsConfiguration>(map['statisticsConfigurations'], (value) => MetricStreamStatisticsConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

