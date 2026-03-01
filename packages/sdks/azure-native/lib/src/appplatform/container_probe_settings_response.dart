// ignore_for_file: unused_element, unnecessary_cast


/// Container liveness and readiness probe settings
class ContainerProbeSettingsResponse {
  /// Indicates whether disable the liveness and readiness probe
  final bool? disableProbe;

  /// Creates a new [ContainerProbeSettingsResponse].
  /// [disableProbe] Indicates whether disable the liveness and readiness probe
  ContainerProbeSettingsResponse({
    this.disableProbe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableProbe': ?disableProbe,
    };
  }

  factory ContainerProbeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ContainerProbeSettingsResponse(
      disableProbe: map['disableProbe'] == null ? null : map['disableProbe'] as bool,
    );
  }
}

