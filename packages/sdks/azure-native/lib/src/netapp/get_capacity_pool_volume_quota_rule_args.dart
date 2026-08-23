// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_capacity_pool_volume_quota_rule_args_doc}
/// Arguments for getCapacityPoolVolumeQuotaRule.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_capacity_pool_volume_quota_rule_args_doc}
class GetCapacityPoolVolumeQuotaRuleArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the volume
  final pulumi.Input<String> volumeName;
  /// The name of volume quota rule
  final pulumi.Input<String> volumeQuotaRuleName;

  /// Creates a new [GetCapacityPoolVolumeQuotaRuleArgs].
  /// [accountName] The name of the NetApp account
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeName] The name of the volume
  /// [volumeQuotaRuleName] The name of volume quota rule
  const GetCapacityPoolVolumeQuotaRuleArgs({
    required this.accountName,
    required this.poolName,
    required this.resourceGroupName,
    required this.volumeName,
    required this.volumeQuotaRuleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'volumeName': volumeName,
      'volumeQuotaRuleName': volumeQuotaRuleName,
    };
  }

  factory GetCapacityPoolVolumeQuotaRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolVolumeQuotaRuleArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
      volumeQuotaRuleName: pulumi.Input.fromValue(map['volumeQuotaRuleName'] as String),
    );
  }
}
