// ignore_for_file: unused_element, unnecessary_cast

class WatchlistEntityPopulationMechanism {
  /// Entities are added manually.
  final Map<String, dynamic>? manual;

  WatchlistEntityPopulationMechanism({
    this.manual,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final manualValue = manual;
    if (manualValue != null) {
      map['manual'] = manualValue;
    }
    return map;
  }

  factory WatchlistEntityPopulationMechanism.fromMap(Map<String, dynamic> map) {
    return WatchlistEntityPopulationMechanism(
      manual: map['manual'] == null
          ? null
          : (map['manual'] as Map).cast<String, dynamic>(),
    );
  }
}
