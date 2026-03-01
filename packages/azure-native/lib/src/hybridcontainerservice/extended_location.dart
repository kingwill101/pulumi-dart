// ignore_for_file: unused_element, unnecessary_cast


/// Extended location pointing to the underlying infrastructure
class ExtendedLocation {
  /// ARM Id of the extended location.
  final String? name;
  /// The extended location type. Allowed value: 'CustomLocation'
  final String? type;

  /// Creates a new [ExtendedLocation].
  /// [name] ARM Id of the extended location.
  /// [type] The extended location type. Allowed value: 'CustomLocation'
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

