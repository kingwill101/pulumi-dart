// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../metric_bucket_options/metric_bucket_options.dart';
import '../metric_metric_descriptor/metric_metric_descriptor.dart';

/// The set of arguments for Metric.
class MetricArgs {
  /// The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects
  /// are supported. The bucket has to be in the same project as the metric.
  final Input<String>? bucketName;

  /// The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it
  /// describes the bucket boundaries used to create a histogram of the extracted values.
  /// Structure is documented below.
  final Input<MetricBucketOptions>? bucketOptions;

  /// A description of this metric, which is used in documentation. The maximum length of the
  /// description is 8000 characters.
  final Input<String>? description;

  /// If set to True, then this metric is disabled and it does not generate any points.
  final Input<bool>? disabled;

  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which
  /// is used to match log entries.
  final Input<String> filter;

  /// A map from a label key string to an extractor expression which is used to extract data from a log
  /// entry field and assign as the label value. Each label key specified in the LabelDescriptor must
  /// have an associated extractor expression in this map. The syntax of the extractor expression is
  /// the same as for the valueExtractor field.
  final Input<Map<String, String>>? labelExtractors;

  /// The optional metric descriptor associated with the logs-based metric.
  /// If unspecified, it uses a default metric descriptor with a DELTA metric kind,
  /// INT64 value type, with no labels and a unit of "1". Such a metric counts the
  /// number of log entries matching the filter expression.
  /// Structure is documented below.
  final Input<MetricMetricDescriptor>? metricDescriptor;

  /// The client-assigned metric identifier. Examples - <span pulumi-lang-nodejs=""errorCount"" pulumi-lang-dotnet=""ErrorCount"" pulumi-lang-go=""errorCount"" pulumi-lang-python=""error_count"" pulumi-lang-yaml=""errorCount"" pulumi-lang-java=""errorCount"">"error_count"</span>, "nginx/requests".
  /// Metric identifiers are limited to 100 characters and can include only the following
  /// characters A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash
  /// character (/) denotes a hierarchy of name pieces, and it cannot be the first character
  /// of the name.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A valueExtractor is required when using a distribution logs-based metric to extract the values to
  /// record from a log entry. Two functions are supported for value extraction - EXTRACT(field) or
  /// REGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which
  /// the value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax
  /// (https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified
  /// log entry field. The value of the field is converted to a string before applying the regex. It is an
  /// error to specify a regex that does not include exactly one capture group.
  final Input<String>? valueExtractor;

  MetricArgs({
    this.bucketName,
    this.bucketOptions,
    this.description,
    this.disabled,
    required this.filter,
    this.labelExtractors,
    this.metricDescriptor,
    this.name,
    this.project,
    this.valueExtractor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketNameValue = bucketName;
    if (bucketNameValue != null) {
      map['bucketName'] = bucketNameValue;
    }
    final bucketOptionsValue = bucketOptions;
    if (bucketOptionsValue != null) {
      map['bucketOptions'] = Input.mapOptionalInputValue<MetricBucketOptions,
          Map<String, dynamic>>(bucketOptionsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['filter'] = filter;
    final labelExtractorsValue = labelExtractors;
    if (labelExtractorsValue != null) {
      map['labelExtractors'] = labelExtractorsValue;
    }
    final metricDescriptorValue = metricDescriptor;
    if (metricDescriptorValue != null) {
      map['metricDescriptor'] = Input.mapOptionalInputValue<
              MetricMetricDescriptor, Map<String, dynamic>>(
          metricDescriptorValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final valueExtractorValue = valueExtractor;
    if (valueExtractorValue != null) {
      map['valueExtractor'] = valueExtractorValue;
    }
    return map;
  }

  factory MetricArgs.fromMap(Map<String, dynamic> map) {
    return MetricArgs(
      bucketName: Input.asOptionalInput<String>(map['bucketName']),
      bucketOptions:
          Input.asOptionalInput<MetricBucketOptions>(map['bucketOptions']),
      description: Input.asOptionalInput<String>(map['description']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      filter: Input.asInput<String>(map['filter']),
      labelExtractors:
          Input.asOptionalInput<Map<String, String>>(map['labelExtractors']),
      metricDescriptor: Input.asOptionalInput<MetricMetricDescriptor>(
          map['metricDescriptor']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      valueExtractor: Input.asOptionalInput<String>(map['valueExtractor']),
    );
  }
}
