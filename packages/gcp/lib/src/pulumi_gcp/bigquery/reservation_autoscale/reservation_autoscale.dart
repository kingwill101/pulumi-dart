// ignore_for_file: unused_element, unnecessary_cast

class ReservationAutoscale {
  /// (Output)
  /// The slot capacity added to this reservation when autoscale happens. Will be between [0,<span pulumi-lang-nodejs=" maxSlots]" pulumi-lang-dotnet=" MaxSlots]" pulumi-lang-go=" maxSlots]" pulumi-lang-python=" max_slots]" pulumi-lang-yaml=" maxSlots]" pulumi-lang-java=" maxSlots]"> max_slots]</span>.
  final int? currentSlots;

  /// Number of slots to be scaled when needed.
  final int? maxSlots;

  ReservationAutoscale({
    this.currentSlots,
    this.maxSlots,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final currentSlotsValue = currentSlots;
    if (currentSlotsValue != null) {
      map['currentSlots'] = currentSlotsValue;
    }
    final maxSlotsValue = maxSlots;
    if (maxSlotsValue != null) {
      map['maxSlots'] = maxSlotsValue;
    }
    return map;
  }

  factory ReservationAutoscale.fromMap(Map<String, dynamic> map) {
    return ReservationAutoscale(
      currentSlots:
          map['currentSlots'] == null ? null : map['currentSlots'] as int,
      maxSlots: map['maxSlots'] == null ? null : map['maxSlots'] as int,
    );
  }
}
