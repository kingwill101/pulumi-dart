// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHoneypotProbesProbeHoneypotBindListBindPortList {
  /// Whether to bind the port.
  final pulumi.Input<bool> bindPort;
  /// End port.
  final pulumi.Input<int> endPort;
  /// Whether the port is fixed.
  final pulumi.Input<bool> fixed;
  /// Start port.
  final pulumi.Input<int> startPort;
  /// Destination port.
  final pulumi.Input<int> targetPort;

  /// Creates a new [GetHoneypotProbesProbeHoneypotBindListBindPortList].
  /// [bindPort] Whether to bind the port.
  /// [endPort] End port.
  /// [fixed] Whether the port is fixed.
  /// [startPort] Start port.
  /// [targetPort] Destination port.
  GetHoneypotProbesProbeHoneypotBindListBindPortList({
    required this.bindPort,
    required this.endPort,
    required this.fixed,
    required this.startPort,
    required this.targetPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindPort': bindPort,
      'endPort': endPort,
      'fixed': fixed,
      'startPort': startPort,
      'targetPort': targetPort,
    };
  }

  factory GetHoneypotProbesProbeHoneypotBindListBindPortList.fromMap(Map<String, dynamic> map) {
    return GetHoneypotProbesProbeHoneypotBindListBindPortList(
      bindPort: (map['bindPort'] as bool).input(),
      endPort: (map['endPort'] as int).input(),
      fixed: (map['fixed'] as bool).input(),
      startPort: (map['startPort'] as int).input(),
      targetPort: (map['targetPort'] as int).input(),
    );
  }
}

