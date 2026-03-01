// ignore_for_file: unused_element, unnecessary_cast


class ServiceMeshMeshConfigPilot {
  /// Whether to support the HTTP1.0
  final bool? http10Enabled;
  /// Link trace sampling percentage
  final double? traceSampling;

  /// Creates a new [ServiceMeshMeshConfigPilot].
  /// [http10Enabled] Whether to support the HTTP1.0
  /// [traceSampling] Link trace sampling percentage
  ServiceMeshMeshConfigPilot({
    this.http10Enabled,
    this.traceSampling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'http10Enabled': ?http10Enabled,
      'traceSampling': ?traceSampling,
    };
  }

  factory ServiceMeshMeshConfigPilot.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigPilot(
      http10Enabled: map['http10Enabled'] == null ? null : map['http10Enabled'] as bool,
      traceSampling: map['traceSampling'] == null ? null : map['traceSampling'] as double,
    );
  }
}

