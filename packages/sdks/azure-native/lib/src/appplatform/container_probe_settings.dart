// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container liveness and readiness probe settings
class ContainerProbeSettings {
  /// Indicates whether disable the liveness and readiness probe
  final pulumi.Input<bool>? disableProbe;

  /// Creates a new [ContainerProbeSettings].
  /// [disableProbe] Indicates whether disable the liveness and readiness probe
  ContainerProbeSettings({
    this.disableProbe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableProbe': ?disableProbe,
    };
  }

  factory ContainerProbeSettings.fromMap(Map<String, dynamic> map) {
    return ContainerProbeSettings(
      disableProbe: map['disableProbe'] == null ? null : (map['disableProbe'] as bool).input(),
    );
  }
}

