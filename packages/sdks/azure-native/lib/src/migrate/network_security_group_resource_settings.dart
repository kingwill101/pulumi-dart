// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nsg_security_rule.dart';

/// Defines the NSG resource settings.
class NetworkSecurityGroupResourceSettings {
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Network/networkSecurityGroups'.
  final pulumi.Input<String> resourceType;
  /// Gets or sets Security rules of network security group.
  final pulumi.Input<List<NsgSecurityRule>>? securityRules;
  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gets or sets the target resource group name.
  final pulumi.Input<String>? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final pulumi.Input<String>? targetResourceName;

  /// Creates a new [NetworkSecurityGroupResourceSettings].
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [securityRules] Gets or sets Security rules of network security group.
  /// [tags] Gets or sets the Resource tags.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  NetworkSecurityGroupResourceSettings({
    required this.resourceType,
    this.securityRules,
    this.tags,
    this.targetResourceGroupName,
    this.targetResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceType': resourceType,
      'securityRules': ?pulumi.Input.mapOptionalInputValue<List<NsgSecurityRule>, List<Map<String, dynamic>>>(securityRules, (value) => pulumi.Input.encodeList<NsgSecurityRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'targetResourceGroupName': ?targetResourceGroupName,
      'targetResourceName': ?targetResourceName,
    };
  }

  factory NetworkSecurityGroupResourceSettings.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupResourceSettings(
      resourceType: (map['resourceType'] as String).input(),
      securityRules: map['securityRules'] == null ? null : (pulumi.Input.decodeList<NsgSecurityRule>(map['securityRules'], (value) => NsgSecurityRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      targetResourceGroupName: map['targetResourceGroupName'] == null ? null : (map['targetResourceGroupName'] as String).input(),
      targetResourceName: map['targetResourceName'] == null ? null : (map['targetResourceName'] as String).input(),
    );
  }
}

