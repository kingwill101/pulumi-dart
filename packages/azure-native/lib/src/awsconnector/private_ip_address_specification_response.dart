// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PrivateIpAddressSpecification
class PrivateIpAddressSpecificationResponse {
  /// Property primary
  final bool? primary;
  /// Property privateIpAddress
  final String? privateIpAddress;

  /// Creates a new [PrivateIpAddressSpecificationResponse].
  /// [primary] Property primary
  /// [privateIpAddress] Property privateIpAddress
  PrivateIpAddressSpecificationResponse({
    this.primary,
    this.privateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': ?primary,
      'privateIpAddress': ?privateIpAddress,
    };
  }

  factory PrivateIpAddressSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return PrivateIpAddressSpecificationResponse(
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
    );
  }
}

