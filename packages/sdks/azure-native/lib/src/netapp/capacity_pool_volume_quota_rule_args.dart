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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> poolName,
    pulumi.Output<double>? quotaSizeInKiBs,
    pulumi.Output<String>? quotaTarget,
    pulumi.Output<String>? quotaType,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> volumeName,
    pulumi.Output<String>? volumeQuotaRuleName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      poolName = pulumi.Input.asInput<String>(poolName),
      quotaSizeInKiBs = pulumi.Input.asOptionalInput<double>(quotaSizeInKiBs),
      quotaTarget = pulumi.Input.asOptionalInput<String>(quotaTarget),
      quotaType = pulumi.Input.asOptionalInput<String>(quotaType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      volumeName = pulumi.Input.asInput<String>(volumeName),
      volumeQuotaRuleName = pulumi.Input.asOptionalInput<String>(volumeQuotaRuleName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      quotaSizeInKiBs: map['quotaSizeInKiBs'] == null ? null : pulumi.Output.create<double>(map['quotaSizeInKiBs'] as double),
      quotaTarget: map['quotaTarget'] == null ? null : pulumi.Output.create<String>(map['quotaTarget'] as String),
      quotaType: map['quotaType'] == null ? null : pulumi.Output.create<String>(map['quotaType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      volumeName: pulumi.Output.create<String>(map['volumeName'] as String),
      volumeQuotaRuleName: map['volumeQuotaRuleName'] == null ? null : pulumi.Output.create<String>(map['volumeQuotaRuleName'] as String),
    );
  }
}

