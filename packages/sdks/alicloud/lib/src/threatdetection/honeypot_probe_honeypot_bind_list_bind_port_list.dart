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
      bindPort: (() { final guardedValue = map['bindPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endPort: (() { final guardedValue = map['endPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fixed: (() { final guardedValue = map['fixed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      startPort: (() { final guardedValue = map['startPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetPort: (() { final guardedValue = map['targetPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

