// ignore_for_file: unused_element, unnecessary_cast


class GetHoneypotProbesProbeHoneypotBindListBindPortList {
  /// Whether to bind the port.
  final bool bindPort;
  /// End port.
  final int endPort;
  /// Whether the port is fixed.
  final bool fixed;
  /// Start port.
  final int startPort;
  /// Destination port.
  final int targetPort;

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
      bindPort: map['bindPort'] as bool,
      endPort: map['endPort'] as int,
      fixed: map['fixed'] as bool,
      startPort: map['startPort'] as int,
      targetPort: map['targetPort'] as int,
    );
  }
}

