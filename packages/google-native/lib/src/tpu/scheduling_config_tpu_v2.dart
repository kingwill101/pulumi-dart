// ignore_for_file: unused_element, unnecessary_cast


/// Sets the scheduling options for this node.
class SchedulingConfigTpuV2 {
  /// Defines whether the node is preemptible.
  final bool? preemptible;
  /// Whether the node is created under a reservation.
  final bool? reserved;

  /// Creates a new [SchedulingConfigTpuV2].
  /// [preemptible] Defines whether the node is preemptible.
  /// [reserved] Whether the node is created under a reservation.
  SchedulingConfigTpuV2({
    this.preemptible,
    this.reserved,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preemptible': ?preemptible,
      'reserved': ?reserved,
    };
  }

  factory SchedulingConfigTpuV2.fromMap(Map<String, dynamic> map) {
    return SchedulingConfigTpuV2(
      preemptible: map['preemptible'] == null ? null : map['preemptible'] as bool,
      reserved: map['reserved'] == null ? null : map['reserved'] as bool,
    );
  }
}

