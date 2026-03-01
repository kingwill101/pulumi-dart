// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PrivateIpAddressSpecification
class PrivateIpAddressSpecification {
  /// Property primary
  final bool? primary;
  /// Property privateIpAddress
  final String? privateIpAddress;

  /// Creates a new [PrivateIpAddressSpecification].
  /// [primary] Property primary
  /// [privateIpAddress] Property privateIpAddress
  PrivateIpAddressSpecification({
    this.primary,
    this.privateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': ?primary,
      'privateIpAddress': ?privateIpAddress,
    };
  }

  factory PrivateIpAddressSpecification.fromMap(Map<String, dynamic> map) {
    return PrivateIpAddressSpecification(
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
    );
  }
}

