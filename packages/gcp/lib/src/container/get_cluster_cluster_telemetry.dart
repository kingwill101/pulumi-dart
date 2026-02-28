// ignore_for_file: unused_element, unnecessary_cast


class GetClusterClusterTelemetry {
  /// Type of the integration.
  final String type;

  /// Creates a new [GetClusterClusterTelemetry].
  /// [type] Type of the integration.
  GetClusterClusterTelemetry({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetClusterClusterTelemetry.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterTelemetry(
      type: map['type'] as String,
    );
  }
}

