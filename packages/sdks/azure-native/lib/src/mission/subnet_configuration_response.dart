// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subnet Configuration
class SubnetConfigurationResponse {
  /// Address prefix.
  final pulumi.Input<String> addressPrefix;
  /// Network prefix size.
  final pulumi.Input<int> networkPrefixSize;
  /// Network security group ID.
  final pulumi.Input<String> networkSecurityGroupResourceId;
  /// Subnet delegation.
  final pulumi.Input<String?>? subnetDelegation;
  /// Subnet name.
  final pulumi.Input<String> subnetName;
  /// Subnet Resource ID.
  final pulumi.Input<String> subnetResourceId;

  /// Creates a new [SubnetConfigurationResponse].
  /// [addressPrefix] Address prefix.
  /// [networkPrefixSize] Network prefix size.
  /// [networkSecurityGroupResourceId] Network security group ID.
  /// [subnetDelegation] Subnet delegation.
  /// [subnetName] Subnet name.
  /// [subnetResourceId] Subnet Resource ID.
  const SubnetConfigurationResponse({
    required this.addressPrefix,
    required this.networkPrefixSize,
    required this.networkSecurityGroupResourceId,
    this.subnetDelegation,
    required this.subnetName,
    required this.subnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'networkPrefixSize': networkPrefixSize,
      'networkSecurityGroupResourceId': networkSecurityGroupResourceId,
      'subnetDelegation': ?subnetDelegation,
      'subnetName': subnetName,
      'subnetResourceId': subnetResourceId,
    };
  }

  factory SubnetConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SubnetConfigurationResponse(
      addressPrefix: pulumi.Input.fromValue(map['addressPrefix'] as String),
      networkPrefixSize: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['networkPrefixSize'])),
      networkSecurityGroupResourceId: pulumi.Input.fromValue(map['networkSecurityGroupResourceId'] as String),
      subnetDelegation: (() { final guardedValue = map['subnetDelegation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetName: pulumi.Input.fromValue(map['subnetName'] as String),
      subnetResourceId: pulumi.Input.fromValue(map['subnetResourceId'] as String),
    );
  }
}
