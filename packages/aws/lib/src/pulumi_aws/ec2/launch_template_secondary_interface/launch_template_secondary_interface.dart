// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateSecondaryInterface {
  /// Whether the secondary interface is deleted when the instance is terminated. The only supported value is `true`.
  final bool? deleteOnTermination;

  /// Device index for the secondary interface attachment.
  final int? deviceIndex;

  /// Type of secondary interface. The only supported value is: `secondary`.
  final String? interfaceType;

  /// Index of the network card.
  final int? networkCardIndex;

  /// Number of private IPv4 addresses to assign to the secondary interface.
  final int? privateIpAddressCount;

  /// Private IPv4 addresses to assign to the secondary interface.
  final List<String>? privateIpAddresses;

  /// ID of the secondary subnet.
  final String? secondarySubnetId;

  LaunchTemplateSecondaryInterface({
    this.deleteOnTermination,
    this.deviceIndex,
    this.interfaceType,
    this.networkCardIndex,
    this.privateIpAddressCount,
    this.privateIpAddresses,
    this.secondarySubnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteOnTerminationValue = deleteOnTermination;
    if (deleteOnTerminationValue != null) {
      map['deleteOnTermination'] = deleteOnTerminationValue;
    }
    final deviceIndexValue = deviceIndex;
    if (deviceIndexValue != null) {
      map['deviceIndex'] = deviceIndexValue;
    }
    final interfaceTypeValue = interfaceType;
    if (interfaceTypeValue != null) {
      map['interfaceType'] = interfaceTypeValue;
    }
    final networkCardIndexValue = networkCardIndex;
    if (networkCardIndexValue != null) {
      map['networkCardIndex'] = networkCardIndexValue;
    }
    final privateIpAddressCountValue = privateIpAddressCount;
    if (privateIpAddressCountValue != null) {
      map['privateIpAddressCount'] = privateIpAddressCountValue;
    }
    final privateIpAddressesValue = privateIpAddresses;
    if (privateIpAddressesValue != null) {
      map['privateIpAddresses'] = privateIpAddressesValue;
    }
    final secondarySubnetIdValue = secondarySubnetId;
    if (secondarySubnetIdValue != null) {
      map['secondarySubnetId'] = secondarySubnetIdValue;
    }
    return map;
  }

  factory LaunchTemplateSecondaryInterface.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateSecondaryInterface(
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as bool,
      deviceIndex:
          map['deviceIndex'] == null ? null : map['deviceIndex'] as int,
      interfaceType:
          map['interfaceType'] == null ? null : map['interfaceType'] as String,
      networkCardIndex: map['networkCardIndex'] == null
          ? null
          : map['networkCardIndex'] as int,
      privateIpAddressCount: map['privateIpAddressCount'] == null
          ? null
          : map['privateIpAddressCount'] as int,
      privateIpAddresses: map['privateIpAddresses'] == null
          ? null
          : (map['privateIpAddresses'] as List).cast<String>(),
      secondarySubnetId: map['secondarySubnetId'] == null
          ? null
          : map['secondarySubnetId'] as String,
    );
  }
}
