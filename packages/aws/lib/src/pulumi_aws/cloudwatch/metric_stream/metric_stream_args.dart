// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../metric_stream_exclude_filter/metric_stream_exclude_filter.dart';
import '../metric_stream_include_filter/metric_stream_include_filter.dart';
import '../metric_stream_statistics_configuration/metric_stream_statistics_configuration.dart';

/// The set of arguments for MetricStream.
class MetricStreamArgs {
  /// List of exclusive metric filters. If you specify this parameter, the stream sends metrics from all metric namespaces except for the namespaces and the conditional metric names that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is excluded. Conflicts with <span pulumi-lang-nodejs="`includeFilter`" pulumi-lang-dotnet="`IncludeFilter`" pulumi-lang-go="`includeFilter`" pulumi-lang-python="`include_filter`" pulumi-lang-yaml="`includeFilter`" pulumi-lang-java="`includeFilter`">`include_filter`</span>.
  final Input<List<MetricStreamExcludeFilter>>? excludeFilters;

  /// ARN of the Amazon Kinesis Firehose delivery stream to use for this metric stream.
  final Input<String> firehoseArn;

  /// List of inclusive metric filters. If you specify this parameter, the stream sends only the conditional metric names from the metric namespaces that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is included. Conflicts with <span pulumi-lang-nodejs="`excludeFilter`" pulumi-lang-dotnet="`ExcludeFilter`" pulumi-lang-go="`excludeFilter`" pulumi-lang-python="`exclude_filter`" pulumi-lang-yaml="`excludeFilter`" pulumi-lang-java="`excludeFilter`">`exclude_filter`</span>.
  final Input<List<MetricStreamIncludeFilter>>? includeFilters;

  /// If you are creating a metric stream in a monitoring account, specify true to include metrics from source accounts that are linked to this monitoring account, in the metric stream. The default is false. For more information about linking accounts, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
  final Input<bool>? includeLinkedAccountsMetrics;

  /// Friendly name of the metric stream. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  final Input<String>? name;

  /// Creates a unique friendly name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// Output format for the stream. Possible values are <span pulumi-lang-nodejs="`json`" pulumi-lang-dotnet="`Json`" pulumi-lang-go="`json`" pulumi-lang-python="`json`" pulumi-lang-yaml="`json`" pulumi-lang-java="`json`">`json`</span>, `opentelemetry0.7`, and `opentelemetry1.0`. For more information about output formats, see [Metric streams output formats](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-formats.html).
  ///
  /// The following arguments are optional:
  final Input<String> outputFormat;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the IAM role that this metric stream will use to access Amazon Kinesis Firehose resources. For more information about role permissions, see [Trust between CloudWatch and Kinesis Data Firehose](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html).
  final Input<String> roleArn;

  /// For each entry in this array, you specify one or more metrics and the list of additional statistics to stream for those metrics. The additional statistics that you can stream depend on the stream's <span pulumi-lang-nodejs="`outputFormat`" pulumi-lang-dotnet="`OutputFormat`" pulumi-lang-go="`outputFormat`" pulumi-lang-python="`output_format`" pulumi-lang-yaml="`outputFormat`" pulumi-lang-java="`outputFormat`">`output_format`</span>. If the OutputFormat is <span pulumi-lang-nodejs="`json`" pulumi-lang-dotnet="`Json`" pulumi-lang-go="`json`" pulumi-lang-python="`json`" pulumi-lang-yaml="`json`" pulumi-lang-java="`json`">`json`</span>, you can stream any additional statistic that is supported by CloudWatch, listed in [CloudWatch statistics definitions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html.html). If the OutputFormat is `opentelemetry0.7` or `opentelemetry1.0`, you can stream percentile statistics (p99 etc.). See details below.
  final Input<List<MetricStreamStatisticsConfiguration>>?
      statisticsConfigurations;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  MetricStreamArgs({
    this.excludeFilters,
    required this.firehoseArn,
    this.includeFilters,
    this.includeLinkedAccountsMetrics,
    this.name,
    this.namePrefix,
    required this.outputFormat,
    this.region,
    required this.roleArn,
    this.statisticsConfigurations,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludeFiltersValue = excludeFilters;
    if (excludeFiltersValue != null) {
      map['excludeFilters'] = Input.mapOptionalInputValue<
              List<MetricStreamExcludeFilter>, List<Map<String, dynamic>>>(
          excludeFiltersValue,
          (value) =>
              Input.encodeList<MetricStreamExcludeFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['firehoseArn'] = firehoseArn;
    final includeFiltersValue = includeFilters;
    if (includeFiltersValue != null) {
      map['includeFilters'] = Input.mapOptionalInputValue<
              List<MetricStreamIncludeFilter>, List<Map<String, dynamic>>>(
          includeFiltersValue,
          (value) =>
              Input.encodeList<MetricStreamIncludeFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final includeLinkedAccountsMetricsValue = includeLinkedAccountsMetrics;
    if (includeLinkedAccountsMetricsValue != null) {
      map['includeLinkedAccountsMetrics'] = includeLinkedAccountsMetricsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    map['outputFormat'] = outputFormat;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final statisticsConfigurationsValue = statisticsConfigurations;
    if (statisticsConfigurationsValue != null) {
      map['statisticsConfigurations'] = Input.mapOptionalInputValue<
              List<MetricStreamStatisticsConfiguration>,
              List<Map<String, dynamic>>>(
          statisticsConfigurationsValue,
          (value) => Input.encodeList<MetricStreamStatisticsConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory MetricStreamArgs.fromMap(Map<String, dynamic> map) {
    return MetricStreamArgs(
      excludeFilters: Input.asOptionalInput<List<MetricStreamExcludeFilter>>(
          map['excludeFilters']),
      firehoseArn: Input.asInput<String>(map['firehoseArn']),
      includeFilters: Input.asOptionalInput<List<MetricStreamIncludeFilter>>(
          map['includeFilters']),
      includeLinkedAccountsMetrics:
          Input.asOptionalInput<bool>(map['includeLinkedAccountsMetrics']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      outputFormat: Input.asInput<String>(map['outputFormat']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      statisticsConfigurations:
          Input.asOptionalInput<List<MetricStreamStatisticsConfiguration>>(
              map['statisticsConfigurations']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
