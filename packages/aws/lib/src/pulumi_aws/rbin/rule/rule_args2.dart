// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_exclude_resource_tag/rule_exclude_resource_tag.dart';
import '../rule_lock_configuration/rule_lock_configuration.dart';
import '../rule_resource_tag/rule_resource_tag.dart';
import '../rule_retention_period/rule_retention_period.dart';

/// The set of arguments for Rule.
class RuleArgs2 {
  /// Retention rule description.
  final Input<String>? description;

  /// Exclusion tags to use to identify resources that are to be excluded, or ignored, by a Region-level retention rule. See <span pulumi-lang-nodejs="`excludeResourceTags`" pulumi-lang-dotnet="`ExcludeResourceTags`" pulumi-lang-go="`excludeResourceTags`" pulumi-lang-python="`exclude_resource_tags`" pulumi-lang-yaml="`excludeResourceTags`" pulumi-lang-java="`excludeResourceTags`">`exclude_resource_tags`</span> below.
  final Input<List<RuleExcludeResourceTag>>? excludeResourceTags;

  /// Information about the retention rule lock configuration. See <span pulumi-lang-nodejs="`lockConfiguration`" pulumi-lang-dotnet="`LockConfiguration`" pulumi-lang-go="`lockConfiguration`" pulumi-lang-python="`lock_configuration`" pulumi-lang-yaml="`lockConfiguration`" pulumi-lang-java="`lockConfiguration`">`lock_configuration`</span> below.
  final Input<RuleLockConfiguration>? lockConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Resource tags to use to identify resources that are to be retained by a tag-level retention rule. See <span pulumi-lang-nodejs="`resourceTags`" pulumi-lang-dotnet="`ResourceTags`" pulumi-lang-go="`resourceTags`" pulumi-lang-python="`resource_tags`" pulumi-lang-yaml="`resourceTags`" pulumi-lang-java="`resourceTags`">`resource_tags`</span> below.
  final Input<List<RuleResourceTag>>? resourceTags;

  /// Resource type to be retained by the retention rule. Valid values are `EBS_SNAPSHOT` and `EC2_IMAGE`.
  final Input<String> resourceType;

  /// Information about the retention period for which the retention rule is to retain resources. See <span pulumi-lang-nodejs="`retentionPeriod`" pulumi-lang-dotnet="`RetentionPeriod`" pulumi-lang-go="`retentionPeriod`" pulumi-lang-python="`retention_period`" pulumi-lang-yaml="`retentionPeriod`" pulumi-lang-java="`retentionPeriod`">`retention_period`</span> below.
  ///
  /// The following arguments are optional:
  final Input<RuleRetentionPeriod> retentionPeriod;
  final Input<Map<String, String>>? tags;

  RuleArgs2({
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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final excludeResourceTagsValue = excludeResourceTags;
    if (excludeResourceTagsValue != null) {
      map['excludeResourceTags'] = Input.mapOptionalInputValue<
              List<RuleExcludeResourceTag>, List<Map<String, dynamic>>>(
          excludeResourceTagsValue,
          (value) =>
              Input.encodeList<RuleExcludeResourceTag, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final lockConfigurationValue = lockConfiguration;
    if (lockConfigurationValue != null) {
      map['lockConfiguration'] = Input.mapOptionalInputValue<
              RuleLockConfiguration, Map<String, dynamic>>(
          lockConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = Input.mapOptionalInputValue<List<RuleResourceTag>,
              List<Map<String, dynamic>>>(
          resourceTagsValue,
          (value) => Input.encodeList<RuleResourceTag, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['resourceType'] = resourceType;
    map['retentionPeriod'] =
        Input.mapInputValue<RuleRetentionPeriod, Map<String, dynamic>>(
            retentionPeriod, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RuleArgs2.fromMap(Map<String, dynamic> map) {
    return RuleArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      excludeResourceTags: Input.asOptionalInput<List<RuleExcludeResourceTag>>(
          map['excludeResourceTags']),
      lockConfiguration: Input.asOptionalInput<RuleLockConfiguration>(
          map['lockConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceTags:
          Input.asOptionalInput<List<RuleResourceTag>>(map['resourceTags']),
      resourceType: Input.asInput<String>(map['resourceType']),
      retentionPeriod:
          Input.asInput<RuleRetentionPeriod>(map['retentionPeriod']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
