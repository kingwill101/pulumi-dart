// ignore_for_file: unused_element, unnecessary_cast

/// Auto scaling settings.
class AutoscaleResponse {
  /// The slot capacity added to this reservation when autoscale happens. Will be between [0, max_slots].
  final String currentSlots;

  /// Number of slots to be scaled when needed.
  final String maxSlots;

  AutoscaleResponse({
    required this.currentSlots,
    required this.maxSlots,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['currentSlots'] = currentSlots;
    map['maxSlots'] = maxSlots;
    return map;
  }

  factory AutoscaleResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleResponse(
      currentSlots: map['currentSlots'] as String,
      maxSlots: map['maxSlots'] as String,
    );
  }
}
