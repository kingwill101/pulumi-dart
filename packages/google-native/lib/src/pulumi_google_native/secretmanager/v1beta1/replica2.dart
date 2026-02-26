// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Replica for this Secret.
class Replica2 {
  /// The canonical IDs of the location to replicate data. For example: `"us-east1"`.
  final String? location;

  Replica2({
    this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    return map;
  }

  factory Replica2.fromMap(Map<String, dynamic> map) {
    return Replica2(
      location: map['location'] == null ? null : map['location'] as String,
    );
  }
}
