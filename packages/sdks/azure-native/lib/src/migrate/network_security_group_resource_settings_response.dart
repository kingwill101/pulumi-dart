// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nsg_security_rule_response.dart';

/// Defines the NSG resource settings.
class NetworkSecurityGroupResourceSettingsResponse {
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Network/networkSecurityGroups'.
  final pulumi.Input<String> resourceType;
  /// Gets or sets Security rules of network security group.
  final pulumi.Input<List<NsgSecurityRuleResponse>>? securityRules;
  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gets or sets the target resource group name.
  final pulumi.Input<String>? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final pulumi.Input<String>? targetResourceName;

  /// Creates a new [NetworkSecurityGroupResourceSettingsResponse].
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [securityRules] Gets or sets Security rules of network security group.
  /// [tags] Gets or sets the Resource tags.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  const NetworkSecurityGroupResourceSettingsResponse({
    required this.resourceType,
    this.securityRules,
    this.tags,
    this.targetResourceGroupName,
    this.targetResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceType': resourceType,
      'securityRules': ?pulumi.Input.mapOptionalInputValue<List<NsgSecurityRuleResponse>, List<Map<String, dynamic>>>(securityRules, (value) => pulumi.Input.encodeList<NsgSecurityRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'targetResourceGroupName': ?targetResourceGroupName,
      'targetResourceName': ?targetResourceName,
    };
  }

  factory NetworkSecurityGroupResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupResourceSettingsResponse(
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      securityRules: (() { final guardedValue = map['securityRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NsgSecurityRuleResponse>(guardedValue, (value) => NsgSecurityRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetResourceGroupName: (() { final guardedValue = map['targetResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceName: (() { final guardedValue = map['targetResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
