// ignore_for_file: unused_element, unnecessary_cast


/// ExtendedLocation complex type.
class ExtendedLocationResponse {
  /// The name of the extended location.
  final String? name;
  /// The type of the extended location.
  final String? type;

  /// Creates a new [ExtendedLocationResponse].
  /// [name] The name of the extended location.
  /// [type] The type of the extended location.
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

