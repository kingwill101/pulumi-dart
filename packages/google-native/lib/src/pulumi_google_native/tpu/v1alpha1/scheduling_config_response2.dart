// ignore_for_file: unused_element, unnecessary_cast

/// Sets the scheduling options for this node.
class SchedulingConfigResponse2 {
  /// Defines whether the node is preemptible.
  final bool preemptible;

  /// Whether the node is created under a reservation.
  final bool reserved;

  SchedulingConfigResponse2({
    required this.preemptible,
    required this.reserved,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['preemptible'] = preemptible;
    map['reserved'] = reserved;
    return map;
  }

  factory SchedulingConfigResponse2.fromMap(Map<String, dynamic> map) {
    return SchedulingConfigResponse2(
      preemptible: map['preemptible'] as bool,
      reserved: map['reserved'] as bool,
    );
  }
}
