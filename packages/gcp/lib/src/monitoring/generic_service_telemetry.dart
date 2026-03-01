// ignore_for_file: unused_element, unnecessary_cast

class GenericServiceTelemetry {
  /// The full name of the resource that defines this service.
  /// Formatted as described in
  /// https://cloud.google.com/apis/design/resource_names.
  final String? resourceName;

  /// Creates a new [GenericServiceTelemetry].
  /// [resourceName] The full name of the resource that defines this service.
  GenericServiceTelemetry({this.resourceName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceName': ?resourceName};
  }

  factory GenericServiceTelemetry.fromMap(Map<String, dynamic> map) {
    return GenericServiceTelemetry(
      resourceName: map['resourceName'] == null
          ? null
          : map['resourceName'] as String,
    );
  }
}
