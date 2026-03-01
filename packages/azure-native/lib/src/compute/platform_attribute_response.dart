// ignore_for_file: unused_element, unnecessary_cast


/// This is the platform attribute of the image version.
class PlatformAttributeResponse {
  /// This property specifies the name of the platformAttribute. It is read-only.
  final String name;
  /// This property specifies the value of the corresponding name property. It is read-only.
  final String value;

  /// Creates a new [PlatformAttributeResponse].
  /// [name] This property specifies the name of the platformAttribute. It is read-only.
  /// [value] This property specifies the value of the corresponding name property. It is read-only.
  PlatformAttributeResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory PlatformAttributeResponse.fromMap(Map<String, dynamic> map) {
    return PlatformAttributeResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

