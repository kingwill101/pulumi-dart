// ignore_for_file: unused_element, unnecessary_cast


class V2VmSchedulingConfig {
  /// Defines whether the node is preemptible.
  final bool? preemptible;
  /// Whether the node is created under a reservation.
  final bool? reserved;
  /// Optional. Defines whether the node is Spot VM.
  final bool? spot;

  /// Creates a new [V2VmSchedulingConfig].
  /// [preemptible] Defines whether the node is preemptible.
  /// [reserved] Whether the node is created under a reservation.
  /// [spot] Optional. Defines whether the node is Spot VM.
  V2VmSchedulingConfig({
    this.preemptible,
    this.reserved,
    this.spot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preemptible': ?preemptible,
      'reserved': ?reserved,
      'spot': ?spot,
    };
  }

  factory V2VmSchedulingConfig.fromMap(Map<String, dynamic> map) {
    return V2VmSchedulingConfig(
      preemptible: map['preemptible'] == null ? null : map['preemptible'] as bool,
      reserved: map['reserved'] == null ? null : map['reserved'] as bool,
      spot: map['spot'] == null ? null : map['spot'] as bool,
    );
  }
}

