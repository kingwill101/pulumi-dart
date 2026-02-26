// ignore_for_file: unused_element, unnecessary_cast

/// Auto scaling settings.
class Autoscale {
  /// Number of slots to be scaled when needed.
  final String? maxSlots;

  Autoscale({
    this.maxSlots,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxSlotsValue = maxSlots;
    if (maxSlotsValue != null) {
      map['maxSlots'] = maxSlotsValue;
    }
    return map;
  }

  factory Autoscale.fromMap(Map<String, dynamic> map) {
    return Autoscale(
      maxSlots: map['maxSlots'] == null ? null : map['maxSlots'] as String,
    );
  }
}
