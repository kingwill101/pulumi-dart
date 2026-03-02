// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HoneypotProbeHoneypotBindListBindPortList {
  /// Whether to bind the port.
  final pulumi.Input<bool>? bindPort;
  /// End port.
  final pulumi.Input<int>? endPort;
  /// Whether the port is fixed.
  final pulumi.Input<bool>? fixed;
  /// Start port.
  final pulumi.Input<int>? startPort;
  /// Destination port.
  final pulumi.Input<int>? targetPort;

  /// Creates a new [HoneypotProbeHoneypotBindListBindPortList].
  /// [bindPort] Whether to bind the port.
  /// [endPort] End port.
  /// [fixed] Whether the port is fixed.
  /// [startPort] Start port.
  /// [targetPort] Destination port.
  HoneypotProbeHoneypotBindListBindPortList({
    this.bindPort,
    this.endPort,
    this.fixed,
    this.startPort,
    this.targetPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindPort': ?bindPort,
      'endPort': ?endPort,
      'fixed': ?fixed,
      'startPort': ?startPort,
      'targetPort': ?targetPort,
    };
  }

  factory HoneypotProbeHoneypotBindListBindPortList.fromMap(Map<String, dynamic> map) {
    return HoneypotProbeHoneypotBindListBindPortList(
      bindPort: map['bindPort'] == null ? null : (map['bindPort'] as bool).input(),
      endPort: map['endPort'] == null ? null : (map['endPort'] as int).input(),
      fixed: map['fixed'] == null ? null : (map['fixed'] as bool).input(),
      startPort: map['startPort'] == null ? null : (map['startPort'] as int).input(),
      targetPort: map['targetPort'] == null ? null : (map['targetPort'] as int).input(),
    );
  }
}

