// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_exclude_resource_tag.dart';
import 'rule_lock_configuration.dart';
import 'rule_resource_tag.dart';
import 'rule_retention_period.dart';

/// {@template pulumi_rbin_rule_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_rbin_rule_rule_args_doc}
class RuleArgs {
  /// Retention rule description.
  final pulumi.Input<String>? description;

  /// Exclusion tags to use to identify resources that are to be excluded, or ignored, by a Region-level retention rule. See `exclude_resource_tags` below.
  final pulumi.Input<List<RuleExcludeResourceTag>>? excludeResourceTags;

  /// Information about the retention rule lock configuration. See `lock_configuration` below.
  final pulumi.Input<RuleLockConfiguration>? lockConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Resource tags to use to identify resources that are to be retained by a tag-level retention rule. See `resource_tags` below.
  final pulumi.Input<List<RuleResourceTag>>? resourceTags;

  /// Resource type to be retained by the retention rule. Valid values are `EBS_SNAPSHOT` and `EC2_IMAGE`.
  final pulumi.Input<String> resourceType;

  /// Information about the retention period for which the retention rule is to retain resources. See `retention_period` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<RuleRetentionPeriod> retentionPeriod;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RuleArgs].
  /// [description] Retention rule description.
  /// [excludeResourceTags] Exclusion tags to use to identify resources that are to be excluded, or ignored, by a Region-level retention rule. See `exclude_resource_tags` below.
  /// [lockConfiguration] Information about the retention rule lock configuration. See `lock_configuration` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceTags] Resource tags to use to identify resources that are to be retained by a tag-level retention rule. See `resource_tags` below.
  /// [resourceType] Resource type to be retained by the retention rule. Valid values are `EBS_SNAPSHOT` and `EC2_IMAGE`.
  /// [retentionPeriod] Information about the retention period for which the retention rule is to retain resources. See `retention_period` below.
  /// [tags] Optional.
  RuleArgs({
    String? description,
    List<RuleExcludeResourceTag>? excludeResourceTags,
    RuleLockConfiguration? lockConfiguration,
    String? region,
    List<RuleResourceTag>? resourceTags,
    required String resourceType,
    required RuleRetentionPeriod retentionPeriod,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        excludeResourceTags =
            pulumi.Input.asOptionalInput<List<RuleExcludeResourceTag>>(
                excludeResourceTags),
        lockConfiguration = pulumi.Input.asOptionalInput<RuleLockConfiguration>(
            lockConfiguration),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceTags =
            pulumi.Input.asOptionalInput<List<RuleResourceTag>>(resourceTags),
        resourceType = pulumi.Input.asInput<String>(resourceType),
        retentionPeriod =
            pulumi.Input.asInput<RuleRetentionPeriod>(retentionPeriod),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final excludeResourceTagsValue = excludeResourceTags;
    if (excludeResourceTagsValue != null) {
      map['excludeResourceTags'] = pulumi.Input.mapOptionalInputValue<
              List<RuleExcludeResourceTag>, List<Map<String, dynamic>>>(
          excludeResourceTagsValue,
          (value) => pulumi.Input.encodeList<RuleExcludeResourceTag,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final lockConfigurationValue = lockConfiguration;
    if (lockConfigurationValue != null) {
      map['lockConfiguration'] = pulumi.Input.mapOptionalInputValue<
              RuleLockConfiguration, Map<String, dynamic>>(
          lockConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = pulumi.Input.mapOptionalInputValue<
              List<RuleResourceTag>, List<Map<String, dynamic>>>(
          resourceTagsValue,
          (value) =>
              pulumi.Input.encodeList<RuleResourceTag, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['resourceType'] = resourceType;
    map['retentionPeriod'] =
        pulumi.Input.mapInputValue<RuleRetentionPeriod, Map<String, dynamic>>(
            retentionPeriod, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      excludeResourceTags: map['excludeResourceTags'] == null
          ? null
          : pulumi.Input.decodeList<RuleExcludeResourceTag>(
              map['excludeResourceTags'],
              (value) => RuleExcludeResourceTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lockConfiguration: map['lockConfiguration'] == null
          ? null
          : RuleLockConfiguration.fromMap(
              (map['lockConfiguration'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      resourceTags: map['resourceTags'] == null
          ? null
          : pulumi.Input.decodeList<RuleResourceTag>(
              map['resourceTags'],
              (value) => RuleResourceTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceType: map['resourceType'] as String,
      retentionPeriod: RuleRetentionPeriod.fromMap(
          (map['retentionPeriod'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
