// ignore_for_file: unused_element, unnecessary_cast


/// SkuCapability indicates the capability of a certain feature.
class SkuCapabilityResponse {
  /// The name of the SkuCapability.
  final String? name;
  /// The value of the SkuCapability.
  final String? value;

  /// Creates a new [SkuCapabilityResponse].
  /// [name] The name of the SkuCapability.
  /// [value] The value of the SkuCapability.
  SkuCapabilityResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory SkuCapabilityResponse.fromMap(Map<String, dynamic> map) {
    return SkuCapabilityResponse(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

