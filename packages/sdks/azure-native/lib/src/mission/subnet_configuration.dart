// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subnet Configuration
class SubnetConfiguration {
  /// Network prefix size.
  final pulumi.Input<int> networkPrefixSize;
  /// Subnet delegation.
  final pulumi.Input<String>? subnetDelegation;
  /// Subnet name.
  final pulumi.Input<String> subnetName;

  /// Creates a new [SubnetConfiguration].
  /// [networkPrefixSize] Network prefix size.
  /// [subnetDelegation] Subnet delegation.
  /// [subnetName] Subnet name.
  SubnetConfiguration({
    required this.networkPrefixSize,
    this.subnetDelegation,
    required this.subnetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkPrefixSize': networkPrefixSize,
      'subnetDelegation': ?subnetDelegation,
      'subnetName': subnetName,
    };
  }

  factory SubnetConfiguration.fromMap(Map<String, dynamic> map) {
    return SubnetConfiguration(
      networkPrefixSize: pulumi.Input.fromValue(map['networkPrefixSize'] as int),
      subnetDelegation: (() { final guardedValue = map['subnetDelegation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetName: pulumi.Input.fromValue(map['subnetName'] as String),
    );
  }
}

