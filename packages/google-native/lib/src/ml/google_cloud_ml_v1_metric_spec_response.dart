// ignore_for_file: unused_element, unnecessary_cast

/// MetricSpec contains the specifications to use to calculate the desired nodes count when autoscaling is enabled.
class GoogleCloudMlV1MetricSpecResponse {
  /// metric name.
  final String name;

  /// Target specifies the target value for the given metric; once real metric deviates from the threshold by a certain percentage, the node count changes.
  final int target;

  /// Creates a new [GoogleCloudMlV1MetricSpecResponse].
  /// [name] metric name.
  /// [target] Target specifies the target value for the given metric; once real metric deviates from the threshold by a certain percentage, the node count changes.
  GoogleCloudMlV1MetricSpecResponse({required this.name, required this.target});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'target': target};
  }

  factory GoogleCloudMlV1MetricSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1MetricSpecResponse(
      name: map['name'] as String,
      target: map['target'] as int,
    );
  }
}
