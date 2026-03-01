// ignore_for_file: unused_element, unnecessary_cast


/// Represents a single IP configuration properties.
class VirtualApplianceIPConfigurationPropertiesResponse {
  /// Whether or not this is primary IP configuration of the NIC.
  final bool? primary;

  /// Creates a new [VirtualApplianceIPConfigurationPropertiesResponse].
  /// [primary] Whether or not this is primary IP configuration of the NIC.
  VirtualApplianceIPConfigurationPropertiesResponse({
    this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': ?primary,
    };
  }

  factory VirtualApplianceIPConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceIPConfigurationPropertiesResponse(
      primary: map['primary'] == null ? null : map['primary'] as bool,
    );
  }
}

