// ignore_for_file: unused_element, unnecessary_cast

class GetClusterClusterTelemetry {
  /// Type of the integration.
  final String type;

  GetClusterClusterTelemetry({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory GetClusterClusterTelemetry.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterTelemetry(
      type: map['type'] as String,
    );
  }
}
