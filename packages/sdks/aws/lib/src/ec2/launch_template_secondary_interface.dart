// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateSecondaryInterface {
  /// Whether the secondary interface is deleted when the instance is terminated. The only supported value is `true`.
  final pulumi.Input<bool>? deleteOnTermination;
  /// Device index for the secondary interface attachment.
  final pulumi.Input<int>? deviceIndex;
  /// Type of secondary interface. The only supported value is: `secondary`.
  final pulumi.Input<String>? interfaceType;
  /// Index of the network card.
  final pulumi.Input<int>? networkCardIndex;
  /// Number of private IPv4 addresses to assign to the secondary interface.
  final pulumi.Input<int>? privateIpAddressCount;
  /// Private IPv4 addresses to assign to the secondary interface.
  final pulumi.Input<List<String>>? privateIpAddresses;
  /// ID of the secondary subnet.
  final pulumi.Input<String>? secondarySubnetId;

  /// Creates a new [LaunchTemplateSecondaryInterface].
  /// [deleteOnTermination] Whether the secondary interface is deleted when the instance is terminated. The only supported value is `true`.
  /// [deviceIndex] Device index for the secondary interface attachment.
  /// [interfaceType] Type of secondary interface. The only supported value is: `secondary`.
  /// [networkCardIndex] Index of the network card.
  /// [privateIpAddressCount] Number of private IPv4 addresses to assign to the secondary interface.
  /// [privateIpAddresses] Private IPv4 addresses to assign to the secondary interface.
  /// [secondarySubnetId] ID of the secondary subnet.
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
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'deviceIndex': ?deviceIndex,
      'interfaceType': ?interfaceType,
      'networkCardIndex': ?networkCardIndex,
      'privateIpAddressCount': ?privateIpAddressCount,
      'privateIpAddresses': ?privateIpAddresses,
      'secondarySubnetId': ?secondarySubnetId,
    };
  }

  factory LaunchTemplateSecondaryInterface.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateSecondaryInterface(
      deleteOnTermination: map['deleteOnTermination'] == null ? null : (map['deleteOnTermination'] as bool).input(),
      deviceIndex: map['deviceIndex'] == null ? null : (map['deviceIndex'] as int).input(),
      interfaceType: map['interfaceType'] == null ? null : (map['interfaceType'] as String).input(),
      networkCardIndex: map['networkCardIndex'] == null ? null : (map['networkCardIndex'] as int).input(),
      privateIpAddressCount: map['privateIpAddressCount'] == null ? null : (map['privateIpAddressCount'] as int).input(),
      privateIpAddresses: map['privateIpAddresses'] == null ? null : ((map['privateIpAddresses'] as List).cast<String>()).input(),
      secondarySubnetId: map['secondarySubnetId'] == null ? null : (map['secondarySubnetId'] as String).input(),
    );
  }
}

