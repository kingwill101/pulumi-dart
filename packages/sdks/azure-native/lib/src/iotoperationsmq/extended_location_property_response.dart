// ignore_for_file: unused_element, unnecessary_cast


/// ExtendedLocation properties
class ExtendedLocationPropertyResponse {
  /// The name of the extended location.
  final String name;
  /// Type of ExtendedLocation.
  final String type;

  /// Creates a new [ExtendedLocationPropertyResponse].
  /// [name] The name of the extended location.
  /// [type] Type of ExtendedLocation.
  ExtendedLocationPropertyResponse({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ExtendedLocationPropertyResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationPropertyResponse(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

