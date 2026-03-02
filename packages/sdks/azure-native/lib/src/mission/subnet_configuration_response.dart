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
  final pulumi.Input<String>? subnetDelegation;
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
  SubnetConfigurationResponse({
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
      addressPrefix: (map['addressPrefix'] as String).input(),
      networkPrefixSize: (map['networkPrefixSize'] as int).input(),
      networkSecurityGroupResourceId: (map['networkSecurityGroupResourceId'] as String).input(),
      subnetDelegation: map['subnetDelegation'] == null ? null : (map['subnetDelegation']! as String).input(),
      subnetName: (map['subnetName'] as String).input(),
      subnetResourceId: (map['subnetResourceId'] as String).input(),
    );
  }
}

