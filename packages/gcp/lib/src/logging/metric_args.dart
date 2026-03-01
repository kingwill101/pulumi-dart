// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_bucket_options.dart';
import 'metric_metric_descriptor.dart';

/// {@template pulumi_logging_metric_metric_args_doc}
/// The set of arguments for Metric.
/// {@endtemplate}
/// {@macro pulumi_logging_metric_metric_args_doc}
class MetricArgs {
  /// The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects
  /// are supported. The bucket has to be in the same project as the metric.
  final pulumi.Input<String>? bucketName;
  /// The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it
  /// describes the bucket boundaries used to create a histogram of the extracted values.
  /// Structure is documented below.
  final pulumi.Input<MetricBucketOptions>? bucketOptions;
  /// A description of this metric, which is used in documentation. The maximum length of the
  /// description is 8000 characters.
  final pulumi.Input<String>? description;
  /// If set to True, then this metric is disabled and it does not generate any points.
  final pulumi.Input<bool>? disabled;
  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which
  /// is used to match log entries.
  final pulumi.Input<String> filter;
  /// A map from a label key string to an extractor expression which is used to extract data from a log
  /// entry field and assign as the label value. Each label key specified in the LabelDescriptor must
  /// have an associated extractor expression in this map. The syntax of the extractor expression is
  /// the same as for the valueExtractor field.
  final pulumi.Input<Map<String, String>>? labelExtractors;
  /// The optional metric descriptor associated with the logs-based metric.
  /// If unspecified, it uses a default metric descriptor with a DELTA metric kind,
  /// INT64 value type, with no labels and a unit of "1". Such a metric counts the
  /// number of log entries matching the filter expression.
  /// Structure is documented below.
  final pulumi.Input<MetricMetricDescriptor>? metricDescriptor;
  /// The client-assigned metric identifier. Examples - "error_count", "nginx/requests".
  /// Metric identifiers are limited to 100 characters and can include only the following
  /// characters A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash
  /// character (/) denotes a hierarchy of name pieces, and it cannot be the first character
  /// of the name.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A valueExtractor is required when using a distribution logs-based metric to extract the values to
  /// record from a log entry. Two functions are supported for value extraction - EXTRACT(field) or
  /// REGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which
  /// the value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax
  /// (https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified
  /// log entry field. The value of the field is converted to a string before applying the regex. It is an
  /// error to specify a regex that does not include exactly one capture group.
  final pulumi.Input<String>? valueExtractor;

  /// Creates a new [MetricArgs].
  /// [bucketName] The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects
  /// [bucketOptions] The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it
  /// [description] A description of this metric, which is used in documentation. The maximum length of the
  /// [disabled] If set to True, then this metric is disabled and it does not generate any points.
  /// [filter] An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which
  /// [labelExtractors] A map from a label key string to an extractor expression which is used to extract data from a log
  /// [metricDescriptor] The optional metric descriptor associated with the logs-based metric.
  /// [name] The client-assigned metric identifier. Examples - "error_count", "nginx/requests".
  /// [project] The ID of the project in which the resource belongs.
  /// [valueExtractor] A valueExtractor is required when using a distribution logs-based metric to extract the values to
  MetricArgs({
    String? bucketName,
    MetricBucketOptions? bucketOptions,
    String? description,
    bool? disabled,
    required String filter,
    Map<String, String>? labelExtractors,
    MetricMetricDescriptor? metricDescriptor,
    String? name,
    String? project,
    String? valueExtractor,
  }) :
      bucketName = pulumi.Input.asOptionalInput<String>(bucketName),
      bucketOptions = pulumi.Input.asOptionalInput<MetricBucketOptions>(bucketOptions),
      description = pulumi.Input.asOptionalInput<String>(description),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      filter = pulumi.Input.asInput<String>(filter),
      labelExtractors = pulumi.Input.asOptionalInput<Map<String, String>>(labelExtractors),
      metricDescriptor = pulumi.Input.asOptionalInput<MetricMetricDescriptor>(metricDescriptor),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      valueExtractor = pulumi.Input.asOptionalInput<String>(valueExtractor);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'bucketOptions': ?pulumi.Input.mapOptionalInputValue<MetricBucketOptions, Map<String, dynamic>>(bucketOptions, (value) => value.toMap()),
      'description': ?description,
      'disabled': ?disabled,
      'filter': filter,
      'labelExtractors': ?labelExtractors,
      'metricDescriptor': ?pulumi.Input.mapOptionalInputValue<MetricMetricDescriptor, Map<String, dynamic>>(metricDescriptor, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'valueExtractor': ?valueExtractor,
    };
  }

  factory MetricArgs.fromMap(Map<String, dynamic> map) {
    return MetricArgs(
      bucketName: map['bucketName'] == null ? null : map['bucketName'] as String,
      bucketOptions: map['bucketOptions'] == null ? null : MetricBucketOptions.fromMap((map['bucketOptions'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      filter: map['filter'] as String,
      labelExtractors: map['labelExtractors'] == null ? null : (map['labelExtractors'] as Map).cast<String, String>(),
      metricDescriptor: map['metricDescriptor'] == null ? null : MetricMetricDescriptor.fromMap((map['metricDescriptor'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      valueExtractor: map['valueExtractor'] == null ? null : map['valueExtractor'] as String,
    );
  }
}

