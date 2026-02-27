// ignore_for_file: unused_element, unnecessary_cast

/// Sets the scheduling options for this node.
class SchedulingConfigTpuV2alpha1 {
  /// Defines whether the node is preemptible.
  final bool? preemptible;

  /// Whether the node is created under a reservation.
  final bool? reserved;

  SchedulingConfigTpuV2alpha1({
    this.preemptible,
    this.reserved,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final preemptibleValue = preemptible;
    if (preemptibleValue != null) {
      map['preemptible'] = preemptibleValue;
    }
    final reservedValue = reserved;
    if (reservedValue != null) {
      map['reserved'] = reservedValue;
    }
    return map;
  }

  factory SchedulingConfigTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return SchedulingConfigTpuV2alpha1(
      preemptible:
          map['preemptible'] == null ? null : map['preemptible'] as bool,
      reserved: map['reserved'] == null ? null : map['reserved'] as bool,
    );
  }
}
