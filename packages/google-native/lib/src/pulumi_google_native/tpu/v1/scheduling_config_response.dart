// ignore_for_file: unused_element, unnecessary_cast

/// Sets the scheduling options for this node.
class SchedulingConfigResponse {
  /// Defines whether the node is preemptible.
  final bool preemptible;

  /// Whether the node is created under a reservation.
  final bool reserved;

  SchedulingConfigResponse({
    required this.preemptible,
    required this.reserved,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['preemptible'] = preemptible;
    map['reserved'] = reserved;
    return map;
  }

  factory SchedulingConfigResponse.fromMap(Map<String, dynamic> map) {
    return SchedulingConfigResponse(
      preemptible: map['preemptible'] as bool,
      reserved: map['reserved'] as bool,
    );
  }
}
