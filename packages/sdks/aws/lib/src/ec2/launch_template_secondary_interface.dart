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
  const LaunchTemplateSecondaryInterface({
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
      deleteOnTermination: (() { final guardedValue = map['deleteOnTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deviceIndex: (() { final guardedValue = map['deviceIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      interfaceType: (() { final guardedValue = map['interfaceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkCardIndex: (() { final guardedValue = map['networkCardIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      privateIpAddressCount: (() { final guardedValue = map['privateIpAddressCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      privateIpAddresses: (() { final guardedValue = map['privateIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      secondarySubnetId: (() { final guardedValue = map['secondarySubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

