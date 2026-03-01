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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<List<RuleExcludeResourceTag>>? excludeResourceTags,
    pulumi.Output<RuleLockConfiguration>? lockConfiguration,
    pulumi.Output<String>? lockEndTime,
    pulumi.Output<String>? lockState,
    pulumi.Output<String>? region,
    pulumi.Output<List<RuleResourceTag>>? resourceTags,
    pulumi.Output<String>? resourceType,
    pulumi.Output<RuleRetentionPeriod>? retentionPeriod,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      excludeResourceTags = pulumi.Input.asOptionalInput<List<RuleExcludeResourceTag>>(excludeResourceTags),
      lockConfiguration = pulumi.Input.asOptionalInput<RuleLockConfiguration>(lockConfiguration),
      lockEndTime = pulumi.Input.asOptionalInput<String>(lockEndTime),
      lockState = pulumi.Input.asOptionalInput<String>(lockState),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceTags = pulumi.Input.asOptionalInput<List<RuleResourceTag>>(resourceTags),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      retentionPeriod = pulumi.Input.asOptionalInput<RuleRetentionPeriod>(retentionPeriod),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      excludeResourceTags: map['excludeResourceTags'] == null ? null : pulumi.Output.create<List<RuleExcludeResourceTag>>(pulumi.Input.decodeList<RuleExcludeResourceTag>(map['excludeResourceTags'], (value) => RuleExcludeResourceTag.fromMap((value as Map).cast<String, dynamic>()))),
      lockConfiguration: map['lockConfiguration'] == null ? null : pulumi.Output.create<RuleLockConfiguration>(RuleLockConfiguration.fromMap((map['lockConfiguration'] as Map).cast<String, dynamic>())),
      lockEndTime: map['lockEndTime'] == null ? null : pulumi.Output.create<String>(map['lockEndTime'] as String),
      lockState: map['lockState'] == null ? null : pulumi.Output.create<String>(map['lockState'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceTags: map['resourceTags'] == null ? null : pulumi.Output.create<List<RuleResourceTag>>(pulumi.Input.decodeList<RuleResourceTag>(map['resourceTags'], (value) => RuleResourceTag.fromMap((value as Map).cast<String, dynamic>()))),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      retentionPeriod: map['retentionPeriod'] == null ? null : pulumi.Output.create<RuleRetentionPeriod>(RuleRetentionPeriod.fromMap((map['retentionPeriod'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

