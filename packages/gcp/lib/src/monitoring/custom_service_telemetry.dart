// ignore_for_file: unused_element, unnecessary_cast


class CustomServiceTelemetry {
  /// The full name of the resource that defines this service.
  /// Formatted as described in
  /// https://cloud.google.com/apis/design/resource_names.
  final String? resourceName;

  /// Creates a new [CustomServiceTelemetry].
  /// [resourceName] The full name of the resource that defines this service.
  CustomServiceTelemetry({
    this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': ?resourceName,
    };
  }

  factory CustomServiceTelemetry.fromMap(Map<String, dynamic> map) {
    return CustomServiceTelemetry(
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
    );
  }
}

