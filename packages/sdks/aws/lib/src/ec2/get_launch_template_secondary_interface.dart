// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateSecondaryInterface {
  final pulumi.Input<bool> deleteOnTermination;
  final pulumi.Input<int> deviceIndex;
  final pulumi.Input<String> interfaceType;
  final pulumi.Input<int> networkCardIndex;
  final pulumi.Input<int> privateIpAddressCount;
  final pulumi.Input<List<String>> privateIpAddresses;
  final pulumi.Input<String> secondarySubnetId;

  /// Creates a new [GetLaunchTemplateSecondaryInterface].
  /// [deleteOnTermination] Required.
  /// [deviceIndex] Required.
  /// [interfaceType] Required.
  /// [networkCardIndex] Required.
  /// [privateIpAddressCount] Required.
  /// [privateIpAddresses] Required.
  /// [secondarySubnetId] Required.
  GetLaunchTemplateSecondaryInterface({
    required this.deleteOnTermination,
    required this.deviceIndex,
    required this.interfaceType,
    required this.networkCardIndex,
    required this.privateIpAddressCount,
    required this.privateIpAddresses,
    required this.secondarySubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': deleteOnTermination,
      'deviceIndex': deviceIndex,
      'interfaceType': interfaceType,
      'networkCardIndex': networkCardIndex,
      'privateIpAddressCount': privateIpAddressCount,
      'privateIpAddresses': privateIpAddresses,
      'secondarySubnetId': secondarySubnetId,
    };
  }

  factory GetLaunchTemplateSecondaryInterface.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateSecondaryInterface(
      deleteOnTermination: (map['deleteOnTermination'] as bool).input(),
      deviceIndex: (map['deviceIndex'] as int).input(),
      interfaceType: (map['interfaceType'] as String).input(),
      networkCardIndex: (map['networkCardIndex'] as int).input(),
      privateIpAddressCount: (map['privateIpAddressCount'] as int).input(),
      privateIpAddresses: ((map['privateIpAddresses'] as List).cast<String>()).input(),
      secondarySubnetId: (map['secondarySubnetId'] as String).input(),
    );
  }
}

