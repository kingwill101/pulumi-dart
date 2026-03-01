// ignore_for_file: unused_element, unnecessary_cast


/// The extended location for off-azure resources.
class ExtendedLocation {
  /// The extended location name.
  final String? name;
  /// The extended location type.
  final String? type;

  /// Creates a new [ExtendedLocation].
  /// [name] The extended location name.
  /// [type] The extended location type.
  ExtendedLocation({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory ExtendedLocation.fromMap(Map<String, dynamic> map) {
    return ExtendedLocation(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

