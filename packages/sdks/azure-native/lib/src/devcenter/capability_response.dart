// ignore_for_file: unused_element, unnecessary_cast


/// A name/value pair to describe a capability.
class CapabilityResponse {
  /// Name of the capability.
  final String name;
  /// Value of the capability.
  final String value;

  /// Creates a new [CapabilityResponse].
  /// [name] Name of the capability.
  /// [value] Value of the capability.
  CapabilityResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory CapabilityResponse.fromMap(Map<String, dynamic> map) {
    return CapabilityResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

