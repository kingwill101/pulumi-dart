// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_ml_v1_metric_spec_name.dart';

/// MetricSpec contains the specifications to use to calculate the desired nodes count when autoscaling is enabled.
class GoogleCloudMlV1MetricSpec {
  /// metric name.
  final GoogleCloudMlV1MetricSpecName? name;

  /// Target specifies the target value for the given metric; once real metric deviates from the threshold by a certain percentage, the node count changes.
  final int? target;

  /// Creates a new [GoogleCloudMlV1MetricSpec].
  /// [name] metric name.
  /// [target] Target specifies the target value for the given metric; once real metric deviates from the threshold by a certain percentage, the node count changes.
  GoogleCloudMlV1MetricSpec({this.name, this.target});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name == null ? null : name!.value,
      'target': ?target,
    };
  }

  factory GoogleCloudMlV1MetricSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1MetricSpec(
      name: map['name'] == null
          ? null
          : GoogleCloudMlV1MetricSpecName.fromValue(map['name'] as String),
      target: map['target'] == null ? null : map['target'] as int,
    );
  }
}
