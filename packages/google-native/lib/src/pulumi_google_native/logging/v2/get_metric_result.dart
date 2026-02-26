// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_options_response.dart';
import 'metric_descriptor_response.dart';

/// Result data returned by getMetric.
class GetMetricResult {
  /// Optional. The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects are supported. The bucket has to be in the same project as the metric.For example:projects/my-project/locations/global/buckets/my-bucketIf empty, then the Log Metric is considered a non-Bucket Log Metric.
  final String bucketName;

  /// Optional. The bucket_options are required when the logs-based metric is using a DISTRIBUTION value type and it describes the bucket boundaries used to create a histogram of the extracted values.
  final BucketOptionsResponse bucketOptions;

  /// The creation timestamp of the metric.This field may not be present for older metrics.
  final String createTime;

  /// Optional. A description of this metric, which is used in documentation. The maximum length of the description is 8000 characters.
  final String description;

  /// Optional. If set to True, then this metric is disabled and it does not generate any points.
  final bool disabled;

  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced_filters) which is used to match log entries. Example: "resource.type=gae_app AND severity>=ERROR" The maximum length of the filter is 20000 characters.
  final String filter;

  /// Optional. A map from a label key string to an extractor expression which is used to extract data from a log entry field and assign as the label value. Each label key specified in the LabelDescriptor must have an associated extractor expression in this map. The syntax of the extractor expression is the same as for the value_extractor field.The extracted value is converted to the type defined in the label descriptor. If either the extraction or the type conversion fails, the label will have a default value. The default value for a string label is an empty string, for an integer label its 0, and for a boolean label its false.Note that there are upper bounds on the maximum number of labels and the number of active time series that are allowed in a project.
  final Map<String, String> labelExtractors;

  /// Optional. The metric descriptor associated with the logs-based metric. If unspecified, it uses a default metric descriptor with a DELTA metric kind, INT64 value type, with no labels and a unit of "1". Such a metric counts the number of log entries matching the filter expression.The name, type, and description fields in the metric_descriptor are output only, and is constructed using the name and description field in the LogMetric.To create a logs-based metric that records a distribution of log values, a DELTA metric kind with a DISTRIBUTION value type must be used along with a value_extractor expression in the LogMetric.Each label in the metric descriptor must have a matching label name as the key and an extractor expression as the value in the label_extractors map.The metric_kind and value_type fields in the metric_descriptor cannot be updated once initially configured. New labels can be added in the metric_descriptor, but existing labels cannot be modified except for their description.
  final MetricDescriptorResponse metricDescriptor;

  /// The client-assigned metric identifier. Examples: "error_count", "nginx/requests".Metric identifiers are limited to 100 characters and can include only the following characters: A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash character (/) denotes a hierarchy of name pieces, and it cannot be the first character of the name.This field is the [METRIC_ID] part of a metric resource name in the format "projects/PROJECT_ID/metrics/METRIC_ID". Example: If the resource name of a metric is "projects/my-project/metrics/nginx%2Frequests", this field's value is "nginx/requests".
  final String name;

  /// The last update timestamp of the metric.This field may not be present for older metrics.
  final String updateTime;

  /// Optional. A value_extractor is required when using a distribution logs-based metric to extract the values to record from a log entry. Two functions are supported for value extraction: EXTRACT(field) or REGEXP_EXTRACT(field, regex). The arguments are: field: The name of the log entry field from which the value is to be extracted. regex: A regular expression using the Google RE2 syntax (https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified log entry field. The value of the field is converted to a string before applying the regex. It is an error to specify a regex that does not include exactly one capture group.The result of the extraction must be convertible to a double type, as the distribution always records double values. If either the extraction or the conversion to double fails, then those values are not recorded in the distribution.Example: REGEXP_EXTRACT(jsonPayload.request, ".*quantity=(\d+).*")
  final String valueExtractor;

  /// Deprecated. The API version that created or updated this metric. The v2 format is used by default and cannot be changed.
  final String version;

  GetMetricResult({
    required this.bucketName,
    required this.bucketOptions,
    required this.createTime,
    required this.description,
    required this.disabled,
    required this.filter,
    required this.labelExtractors,
    required this.metricDescriptor,
    required this.name,
    required this.updateTime,
    required this.valueExtractor,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['bucketOptions'] = bucketOptions.toMap();
    map['createTime'] = createTime;
    map['description'] = description;
    map['disabled'] = disabled;
    map['filter'] = filter;
    map['labelExtractors'] = labelExtractors;
    map['metricDescriptor'] = metricDescriptor.toMap();
    map['name'] = name;
    map['updateTime'] = updateTime;
    map['valueExtractor'] = valueExtractor;
    map['version'] = version;
    return map;
  }

  factory GetMetricResult.fromMap(Map<String, dynamic> map) {
    return GetMetricResult(
      bucketName: map['bucketName'] as String,
      bucketOptions: BucketOptionsResponse.fromMap(
          (map['bucketOptions'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      filter: map['filter'] as String,
      labelExtractors: (map['labelExtractors'] as Map).cast<String, String>(),
      metricDescriptor: MetricDescriptorResponse.fromMap(
          (map['metricDescriptor'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      valueExtractor: map['valueExtractor'] as String,
      version: map['version'] as String,
    );
  }
}
