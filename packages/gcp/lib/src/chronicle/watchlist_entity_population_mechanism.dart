// ignore_for_file: unused_element, unnecessary_cast


class WatchlistEntityPopulationMechanism {
  /// Entities are added manually.
  final Map<String, dynamic>? manual;

  /// Creates a new [WatchlistEntityPopulationMechanism].
  /// [manual] Entities are added manually.
  WatchlistEntityPopulationMechanism({
    this.manual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manual': ?manual,
    };
  }

  factory WatchlistEntityPopulationMechanism.fromMap(Map<String, dynamic> map) {
    return WatchlistEntityPopulationMechanism(
      manual: map['manual'] == null ? null : (map['manual'] as Map).cast<String, dynamic>(),
    );
  }
}

