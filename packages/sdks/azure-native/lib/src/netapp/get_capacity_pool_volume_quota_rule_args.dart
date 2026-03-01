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
  GetCapacityPoolVolumeQuotaRuleArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> volumeName,
    required pulumi.Output<String> volumeQuotaRuleName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeName = pulumi.Input.asInput<String>(volumeName),
      volumeQuotaRuleName = pulumi.Input.asInput<String>(volumeQuotaRuleName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      volumeName: pulumi.Output.create<String>(map['volumeName'] as String),
      volumeQuotaRuleName: pulumi.Output.create<String>(map['volumeQuotaRuleName'] as String),
    );
  }
}

