// ignore_for_file: unused_element, unnecessary_cast


class GetServiceMeshesMeshMeshConfigPilot {
  /// Whether to support the HTTP1.0.
  final bool http10Enabled;
  /// The  percentage of the Link trace sampling.
  final double traceSampling;

  /// Creates a new [GetServiceMeshesMeshMeshConfigPilot].
  /// [http10Enabled] Whether to support the HTTP1.0.
  /// [traceSampling] The  percentage of the Link trace sampling.
  GetServiceMeshesMeshMeshConfigPilot({
    required this.http10Enabled,
    required this.traceSampling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'http10Enabled': http10Enabled,
      'traceSampling': traceSampling,
    };
  }

  factory GetServiceMeshesMeshMeshConfigPilot.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshMeshConfigPilot(
      http10Enabled: map['http10Enabled'] as bool,
      traceSampling: map['traceSampling'] as double,
    );
  }
}

