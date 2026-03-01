// ignore_for_file: unused_element, unnecessary_cast


/// Extended location pointing to the underlying infrastructure
class ExtendedLocationResponse {
  /// ARM Id of the extended location.
  final String? name;
  /// The extended location type. Allowed value: 'CustomLocation'
  final String? type;

  /// Creates a new [ExtendedLocationResponse].
  /// [name] ARM Id of the extended location.
  /// [type] The extended location type. Allowed value: 'CustomLocation'
  ExtendedLocationResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory ExtendedLocationResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationResponse(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

