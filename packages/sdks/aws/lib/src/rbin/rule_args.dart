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
  final pulumi.Input<String?>? description;
  /// Exclusion tags to use to identify resources that are to be excluded, or ignored, by a Region-level retention rule. See `excludeResourceTags` below.
  final pulumi.Input<List<RuleExcludeResourceTag>?>? excludeResourceTags;
  /// Information about the retention rule lock configuration. See `lockConfiguration` below.
  final pulumi.Input<RuleLockConfiguration?>? lockConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Resource tags to use to identify resources that are to be retained by a tag-level retention rule. See `resourceTags` below.
  final pulumi.Input<List<RuleResourceTag>?>? resourceTags;
  /// Resource type to be retained by the retention rule. Valid values are `EBS_SNAPSHOT` and `EC2_IMAGE`.
  final pulumi.Input<String> resourceType;
  /// Information about the retention period for which the retention rule is to retain resources. See `retentionPeriod` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<RuleRetentionPeriod> retentionPeriod;
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [RuleArgs].
  /// [description] Retention rule description.
  /// [excludeResourceTags] Exclusion tags to use to identify resources that are to be excluded, or ignored, by a Region-level retention rule. See `excludeResourceTags` below.
  /// [lockConfiguration] Information about the retention rule lock configuration. See `lockConfiguration` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceTags] Resource tags to use to identify resources that are to be retained by a tag-level retention rule. See `resourceTags` below.
  /// [resourceType] Resource type to be retained by the retention rule. Valid values are `EBS_SNAPSHOT` and `EC2_IMAGE`.
  /// [retentionPeriod] Information about the retention period for which the retention rule is to retain resources. See `retentionPeriod` below.
  /// [tags] Optional.
  const RuleArgs({
    this.description,
    this.excludeResourceTags,
    this.lockConfiguration,
    this.region,
    this.resourceTags,
    required this.resourceType,
    required this.retentionPeriod,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'excludeResourceTags': ?pulumi.Input.mapOptionalInputValue<List<RuleExcludeResourceTag>, List<Map<String, dynamic>>>(excludeResourceTags, (value) => pulumi.Input.encodeList<RuleExcludeResourceTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lockConfiguration': ?pulumi.Input.mapOptionalInputValue<RuleLockConfiguration, Map<String, dynamic>>(lockConfiguration, (value) => value.toMap()),
      'region': ?region,
      'resourceTags': ?pulumi.Input.mapOptionalInputValue<List<RuleResourceTag>, List<Map<String, dynamic>>>(resourceTags, (value) => pulumi.Input.encodeList<RuleResourceTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceType': resourceType,
      'retentionPeriod': pulumi.Input.mapInputValue<RuleRetentionPeriod, Map<String, dynamic>>(retentionPeriod, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeResourceTags: (() { final guardedValue = map['excludeResourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleExcludeResourceTag>(guardedValue, (value) => RuleExcludeResourceTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lockConfiguration: (() { final guardedValue = map['lockConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleLockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTags: (() { final guardedValue = map['resourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleResourceTag>(guardedValue, (value) => RuleResourceTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      retentionPeriod: pulumi.Input.fromValue(RuleRetentionPeriod.fromMap((map['retentionPeriod']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
