// ignore_for_file: unused_element, unnecessary_cast

/// Sets the scheduling options for this node.
class SchedulingConfig {
  /// Defines whether the node is preemptible.
  final bool? preemptible;

  /// Whether the node is created under a reservation.
  final bool? reserved;

  /// Creates a new [SchedulingConfig].
  /// [preemptible] Defines whether the node is preemptible.
  /// [reserved] Whether the node is created under a reservation.
  SchedulingConfig({
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

  factory SchedulingConfig.fromMap(Map<String, dynamic> map) {
    return SchedulingConfig(
      preemptible:
          map['preemptible'] == null ? null : map['preemptible'] as bool,
      reserved: map['reserved'] == null ? null : map['reserved'] as bool,
    );
  }
}
