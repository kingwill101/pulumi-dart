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
  const GetLaunchTemplateSecondaryInterface({
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
      deleteOnTermination: pulumi.Input.fromValue(map['deleteOnTermination'] as bool),
      deviceIndex: pulumi.Input.fromValue(map['deviceIndex'] as int),
      interfaceType: pulumi.Input.fromValue(map['interfaceType'] as String),
      networkCardIndex: pulumi.Input.fromValue(map['networkCardIndex'] as int),
      privateIpAddressCount: pulumi.Input.fromValue(map['privateIpAddressCount'] as int),
      privateIpAddresses: pulumi.Input.fromValue((map['privateIpAddresses'] as List).cast<String>()),
      secondarySubnetId: pulumi.Input.fromValue(map['secondarySubnetId'] as String),
    );
  }
}
