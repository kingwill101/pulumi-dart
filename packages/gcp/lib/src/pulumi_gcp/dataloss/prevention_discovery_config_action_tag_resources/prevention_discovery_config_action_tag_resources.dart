// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../prevention_discovery_config_action_tag_resources_tag_condition/prevention_discovery_config_action_tag_resources_tag_condition.dart';

class PreventionDiscoveryConfigActionTagResources {
  /// Whether applying a tag to a resource should lower the risk of the profile for that resource. For example, in conjunction with an [IAM deny policy](https://cloud.google.com/iam/docs/deny-overview), you can deny all principals a permission if a tag value is present, mitigating the risk of the resource. This also lowers the data risk of resources at the lower levels of the resource hierarchy. For example, reducing the data risk of a table data profile also reduces the data risk of the constituent column data profiles.
  final bool? lowerDataRiskToLow;

  /// The profile generations for which the tag should be attached to resources. If you attach a tag to only new profiles, then if the sensitivity score of a profile subsequently changes, its tag doesn't change. By default, this field includes only new profiles. To include both new and updated profiles for tagging, this field should explicitly include both `PROFILE_GENERATION_NEW` and `PROFILE_GENERATION_UPDATE`.
  /// Each value may be one of: `PROFILE_GENERATION_NEW`, `PROFILE_GENERATION_UPDATE`.
  final List<String>? profileGenerationsToTags;

  /// The tags to associate with different conditions.
  /// Structure is documented below.
  final List<PreventionDiscoveryConfigActionTagResourcesTagCondition>?
      tagConditions;

  PreventionDiscoveryConfigActionTagResources({
    this.lowerDataRiskToLow,
    this.profileGenerationsToTags,
    this.tagConditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lowerDataRiskToLowValue = lowerDataRiskToLow;
    if (lowerDataRiskToLowValue != null) {
      map['lowerDataRiskToLow'] = lowerDataRiskToLowValue;
    }
    final profileGenerationsToTagsValue = profileGenerationsToTags;
    if (profileGenerationsToTagsValue != null) {
      map['profileGenerationsToTags'] = profileGenerationsToTagsValue;
    }
    final tagConditionsValue = tagConditions;
    if (tagConditionsValue != null) {
      map['tagConditions'] = Input.encodeList<
          PreventionDiscoveryConfigActionTagResourcesTagCondition,
          Map<String, dynamic>>(tagConditionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreventionDiscoveryConfigActionTagResources.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionTagResources(
      lowerDataRiskToLow: map['lowerDataRiskToLow'] == null
          ? null
          : map['lowerDataRiskToLow'] as bool,
      profileGenerationsToTags: map['profileGenerationsToTags'] == null
          ? null
          : (map['profileGenerationsToTags'] as List).cast<String>(),
      tagConditions: map['tagConditions'] == null
          ? null
          : Input.decodeList<
                  PreventionDiscoveryConfigActionTagResourcesTagCondition>(
              map['tagConditions'],
              (value) => PreventionDiscoveryConfigActionTagResourcesTagCondition
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
