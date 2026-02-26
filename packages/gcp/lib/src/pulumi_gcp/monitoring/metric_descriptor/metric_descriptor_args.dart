// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../metric_descriptor_label/metric_descriptor_label.dart';
import '../metric_descriptor_metadata/metric_descriptor_metadata.dart';

/// The set of arguments for MetricDescriptor.
class MetricDescriptorArgs {
  /// A detailed description of the metric, which can be used in documentation.
  final Input<String>? description;

  /// A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example "Request count".
  final Input<String>? displayName;

  /// The set of labels that can be used to describe a specific instance of this metric type. In order to delete a label, the entire resource must be deleted, then created with the desired labels.
  /// Structure is documented below.
  final Input<List<MetricDescriptorLabel>>? labels;

  /// The launch stage of the metric definition.
  /// Possible values are: `LAUNCH_STAGE_UNSPECIFIED`, `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  final Input<String>? launchStage;

  /// Metadata which can be used to guide usage of the metric.
  /// Structure is documented below.
  final Input<MetricDescriptorMetadata>? metadata;

  /// Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metricKind and valueType might not be supported.
  /// Possible values are: `METRIC_KIND_UNSPECIFIED`, `GAUGE`, `DELTA`, `CUMULATIVE`.
  final Input<String> metricKind;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The metric type, including its DNS name prefix. The type is not URL-encoded. All service defined metrics must be prefixed with the service name, in the format of {service name}/{relative metric name}, such as cloudsql.googleapis.com/database/cpu/utilization. The relative metric name must have only upper and lower-case letters, digits, '/' and underscores '_' are allowed. Additionally, the maximum number of characters allowed for the<span pulumi-lang-nodejs=" relativeMetricName " pulumi-lang-dotnet=" RelativeMetricName " pulumi-lang-go=" relativeMetricName " pulumi-lang-python=" relative_metric_name " pulumi-lang-yaml=" relativeMetricName " pulumi-lang-java=" relativeMetricName "> relative_metric_name </span>is 100. All user-defined metric types have the DNS name custom.googleapis.com, external.googleapis.com, or logging.googleapis.com/user/.
  final Input<String> type;

  /// The units in which the metric value is reported. It is only applicable if the
  /// valueType is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of
  /// the stored metric values.
  /// Different systems may scale the values to be more easily displayed (so a value of
  /// 0.02KBy might be displayed as 20By, and a value of 3523KBy might be displayed as
  /// 3.5MBy). However, if the unit is KBy, then the value of the metric is always in
  /// thousands of bytes, no matter how it may be displayed.
  /// If you want a custom metric to record the exact number of CPU-seconds used by a job,
  /// you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently
  /// 1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as
  /// 12005.
  /// Alternatively, if you want a custom metric to record data in a more granular way, you
  /// can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value
  /// 12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).
  /// The supported units are a subset of The Unified Code for Units of Measure standard.
  /// More info can be found in the API documentation
  /// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors).
  final Input<String>? unit;

  /// Whether the measurement is an integer, a floating-point number, etc. Some combinations of metricKind and valueType might not be supported.
  /// Possible values are: `BOOL`, `INT64`, `DOUBLE`, `STRING`, `DISTRIBUTION`.
  final Input<String> valueType;

  MetricDescriptorArgs({
    this.description,
    this.displayName,
    this.labels,
    this.launchStage,
    this.metadata,
    required this.metricKind,
    this.project,
    required this.type,
    this.unit,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = Input.mapOptionalInputValue<List<MetricDescriptorLabel>,
              List<Map<String, dynamic>>>(
          labelsValue,
          (value) =>
              Input.encodeList<MetricDescriptorLabel, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final launchStageValue = launchStage;
    if (launchStageValue != null) {
      map['launchStage'] = launchStageValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = Input.mapOptionalInputValue<MetricDescriptorMetadata,
          Map<String, dynamic>>(metadataValue, (value) => value.toMap());
    }
    map['metricKind'] = metricKind;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['type'] = type;
    final unitValue = unit;
    if (unitValue != null) {
      map['unit'] = unitValue;
    }
    map['valueType'] = valueType;
    return map;
  }

  factory MetricDescriptorArgs.fromMap(Map<String, dynamic> map) {
    return MetricDescriptorArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<List<MetricDescriptorLabel>>(map['labels']),
      launchStage: Input.asOptionalInput<String>(map['launchStage']),
      metadata:
          Input.asOptionalInput<MetricDescriptorMetadata>(map['metadata']),
      metricKind: Input.asInput<String>(map['metricKind']),
      project: Input.asOptionalInput<String>(map['project']),
      type: Input.asInput<String>(map['type']),
      unit: Input.asOptionalInput<String>(map['unit']),
      valueType: Input.asInput<String>(map['valueType']),
    );
  }
}
