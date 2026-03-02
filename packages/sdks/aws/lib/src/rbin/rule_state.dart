// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_exclude_resource_tag.dart';
import 'rule_lock_configuration.dart';
import 'rule_resource_tag.dart';
import 'rule_retention_period.dart';

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  final pulumi.Input<String>? arn;
  /// Retention rule description.
  final pulumi.Input<String>? description;
  /// Exclusion tags to use to identify resources that are to be excluded, or ignored, by a Region-level retention rule. See `exclude_resource_tags` below.
  final pulumi.Input<List<RuleExcludeResourceTag>>? excludeResourceTags;
  /// Information about the retention rule lock configuration. See `lock_configuration` below.
  final pulumi.Input<RuleLockConfiguration>? lockConfiguration;
  /// (Timestamp) Date and time at which the unlock delay is set to expire. Only returned for retention rules that have been unlocked and that are still within the unlock delay period.
  final pulumi.Input<String>? lockEndTime;
  /// (Optional) Lock state of the retention rules to list. Only retention rules with the specified lock state are returned. Valid values are `locked`, `pending_unlock`, `unlocked`.
  final pulumi.Input<String>? lockState;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource tags to use to identify resources that are to be retained by a tag-level retention rule. See `resource_tags` below.
  final pulumi.Input<List<RuleResourceTag>>? resourceTags;
  /// Resource type to be retained by the retention rule. Valid values are `EBS_SNAPSHOT` and `EC2_IMAGE`.
  final pulumi.Input<String>? resourceType;
  /// Information about the retention period for which the retention rule is to retain resources. See `retention_period` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<RuleRetentionPeriod>? retentionPeriod;
  /// (String) State of the retention rule. Only retention rules that are in the `available` state retain resources. Valid values include `pending` and `available`.
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RuleState].
  /// [arn] Optional.
  /// [description] Retention rule description.
  /// [excludeResourceTags] Exclusion tags to use to identify resources that are to be excluded, or ignored, by a Region-level retention rule. See `exclude_resource_tags` below.
  /// [lockConfiguration] Information about the retention rule lock configuration. See `lock_configuration` below.
  /// [lockEndTime] (Timestamp) Date and time at which the unlock delay is set to expire. Only returned for retention rules that have been unlocked and that are still within the unlock delay period.
  /// [lockState] (Optional) Lock state of the retention rules to list. Only retention rules with the specified lock state are returned. Valid values are `locked`, `pending_unlock`, `unlocked`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceTags] Resource tags to use to identify resources that are to be retained by a tag-level retention rule. See `resource_tags` below.
  /// [resourceType] Resource type to be retained by the retention rule. Valid values are `EBS_SNAPSHOT` and `EC2_IMAGE`.
  /// [retentionPeriod] Information about the retention period for which the retention rule is to retain resources. See `retention_period` below.
  /// [status] (String) State of the retention rule. Only retention rules that are in the `available` state retain resources. Valid values include `pending` and `available`.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  RuleState({
    this.arn,
    this.description,
    this.excludeResourceTags,
    this.lockConfiguration,
    this.lockEndTime,
    this.lockState,
    this.region,
    this.resourceTags,
    this.resourceType,
    this.retentionPeriod,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'excludeResourceTags': ?pulumi.Input.mapOptionalInputValue<List<RuleExcludeResourceTag>, List<Map<String, dynamic>>>(excludeResourceTags, (value) => pulumi.Input.encodeList<RuleExcludeResourceTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lockConfiguration': ?pulumi.Input.mapOptionalInputValue<RuleLockConfiguration, Map<String, dynamic>>(lockConfiguration, (value) => value.toMap()),
      'lockEndTime': ?lockEndTime,
      'lockState': ?lockState,
      'region': ?region,
      'resourceTags': ?pulumi.Input.mapOptionalInputValue<List<RuleResourceTag>, List<Map<String, dynamic>>>(resourceTags, (value) => pulumi.Input.encodeList<RuleResourceTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceType': ?resourceType,
      'retentionPeriod': ?pulumi.Input.mapOptionalInputValue<RuleRetentionPeriod, Map<String, dynamic>>(retentionPeriod, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RuleState.fromMap(Map<String, dynamic> map) {
    return RuleState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      excludeResourceTags: map['excludeResourceTags'] == null ? null : (pulumi.Input.decodeList<RuleExcludeResourceTag>(map['excludeResourceTags'], (value) => RuleExcludeResourceTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lockConfiguration: map['lockConfiguration'] == null ? null : (RuleLockConfiguration.fromMap((map['lockConfiguration'] as Map).cast<String, dynamic>())).input(),
      lockEndTime: map['lockEndTime'] == null ? null : (map['lockEndTime'] as String).input(),
      lockState: map['lockState'] == null ? null : (map['lockState'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceTags: map['resourceTags'] == null ? null : (pulumi.Input.decodeList<RuleResourceTag>(map['resourceTags'], (value) => RuleResourceTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
      retentionPeriod: map['retentionPeriod'] == null ? null : (RuleRetentionPeriod.fromMap((map['retentionPeriod'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

