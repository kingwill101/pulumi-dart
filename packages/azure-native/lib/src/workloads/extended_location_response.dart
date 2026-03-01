// ignore_for_file: unused_element, unnecessary_cast


/// The extended location definition.
class ExtendedLocationResponse {
  /// The extended location name.
  final String name;
  /// The extended location type.
  final String type;

  /// Creates a new [ExtendedLocationResponse].
  /// [name] The extended location name.
  /// [type] The extended location type.
  ExtendedLocationResponse({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ExtendedLocationResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationResponse(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

