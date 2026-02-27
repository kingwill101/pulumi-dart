// ignore_for_file: unused_element, unnecessary_cast

/// Sets the scheduling options for this node.
class SchedulingConfigResponseTpuV2 {
  /// Defines whether the node is preemptible.
  final bool preemptible;

  /// Whether the node is created under a reservation.
  final bool reserved;

  SchedulingConfigResponseTpuV2({
    required this.preemptible,
    required this.reserved,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['preemptible'] = preemptible;
    map['reserved'] = reserved;
    return map;
  }

  factory SchedulingConfigResponseTpuV2.fromMap(Map<String, dynamic> map) {
    return SchedulingConfigResponseTpuV2(
      preemptible: map['preemptible'] as bool,
      reserved: map['reserved'] as bool,
    );
  }
}
