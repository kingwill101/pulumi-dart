// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_capacity_pool_volume_quota_rule_args_doc}
/// The set of arguments for CapacityPoolVolumeQuotaRule.
/// {@endtemplate}
/// {@macro pulumi_netapp_capacity_pool_volume_quota_rule_args_doc}
class CapacityPoolVolumeQuotaRuleArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// Size of quota
  final pulumi.Input<double>? quotaSizeInKiBs;
  /// UserID/GroupID/SID based on the quota target type. UserID and groupID can be found by running ‘id’ or ‘getent’ command for the user or group and SID can be found by running <wmic useraccount where name='user-name' get sid>
  final pulumi.Input<String>? quotaTarget;
  /// Type of quota
  final pulumi.Input<String>? quotaType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the volume
  final pulumi.Input<String> volumeName;
  /// The name of volume quota rule
  final pulumi.Input<String>? volumeQuotaRuleName;

  /// Creates a new [CapacityPoolVolumeQuotaRuleArgs].
  /// [accountName] The name of the NetApp account
  /// [location] The geo-location where the resource lives
  /// [poolName] The name of the capacity pool
  /// [quotaSizeInKiBs] Size of quota
  /// [quotaTarget] UserID/GroupID/SID based on the quota target type. UserID and groupID can be found by running ‘id’ or ‘getent’ command for the user or group and SID can be found by running <wmic useraccount where name='user-name' get sid>
  /// [quotaType] Type of quota
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [volumeName] The name of the volume
  /// [volumeQuotaRuleName] The name of volume quota rule
  CapacityPoolVolumeQuotaRuleArgs({
    required this.accountName,
    this.location,
    required this.poolName,
    this.quotaSizeInKiBs,
    this.quotaTarget,
    this.quotaType,
    required this.resourceGroupName,
    this.tags,
    required this.volumeName,
    this.volumeQuotaRuleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'location': ?location,
      'poolName': poolName,
      'quotaSizeInKiBs': ?quotaSizeInKiBs,
      'quotaTarget': ?quotaTarget,
      'quotaType': ?quotaType,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'volumeName': volumeName,
      'volumeQuotaRuleName': ?volumeQuotaRuleName,
    };
  }

  factory CapacityPoolVolumeQuotaRuleArgs.fromMap(Map<String, dynamic> map) {
    return CapacityPoolVolumeQuotaRuleArgs(
      accountName: (map['accountName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      poolName: (map['poolName'] as String).input(),
      quotaSizeInKiBs: map['quotaSizeInKiBs'] == null ? null : (map['quotaSizeInKiBs'] as double).input(),
      quotaTarget: map['quotaTarget'] == null ? null : (map['quotaTarget'] as String).input(),
      quotaType: map['quotaType'] == null ? null : (map['quotaType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      volumeName: (map['volumeName'] as String).input(),
      volumeQuotaRuleName: map['volumeQuotaRuleName'] == null ? null : (map['volumeQuotaRuleName'] as String).input(),
    );
  }
}

