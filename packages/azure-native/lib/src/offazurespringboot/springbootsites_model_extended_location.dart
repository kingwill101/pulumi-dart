// ignore_for_file: unused_element, unnecessary_cast


/// The extended location definition.
class SpringbootsitesModelExtendedLocation {
  /// The extended location name.
  final String? name;
  /// The extended location type.
  final String? type;

  /// Creates a new [SpringbootsitesModelExtendedLocation].
  /// [name] The extended location name.
  /// [type] The extended location type.
  SpringbootsitesModelExtendedLocation({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory SpringbootsitesModelExtendedLocation.fromMap(Map<String, dynamic> map) {
    return SpringbootsitesModelExtendedLocation(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

