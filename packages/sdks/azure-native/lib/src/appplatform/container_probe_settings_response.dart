// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container liveness and readiness probe settings
class ContainerProbeSettingsResponse {
  /// Indicates whether disable the liveness and readiness probe
  final pulumi.Input<bool>? disableProbe;

  /// Creates a new [ContainerProbeSettingsResponse].
  /// [disableProbe] Indicates whether disable the liveness and readiness probe
  const ContainerProbeSettingsResponse({
    this.disableProbe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableProbe': ?disableProbe,
    };
  }

  factory ContainerProbeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ContainerProbeSettingsResponse(
      disableProbe: (() { final guardedValue = map['disableProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
