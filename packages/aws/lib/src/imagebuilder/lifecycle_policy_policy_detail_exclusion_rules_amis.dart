// ignore_for_file: unused_element, unnecessary_cast

import 'lifecycle_policy_policy_detail_exclusion_rules_amis_last_launched.dart';

class LifecyclePolicyPolicyDetailExclusionRulesAmis {
  /// Configures whether public AMIs are excluded from the lifecycle action.
  final bool? isPublic;

  /// Specifies configuration details for Image Builder to exclude the most recent resources from lifecycle actions. Detailed below.
  final LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched? lastLaunched;

  /// Configures AWS Regions that are excluded from the lifecycle action.
  final List<String>? regions;

  /// Specifies AWS accounts whose resources are excluded from the lifecycle action.
  final List<String>? sharedAccounts;

  /// Lists tags that should be excluded from lifecycle actions for the AMIs that have them.
  final Map<String, String>? tagMap;

  /// Creates a new [LifecyclePolicyPolicyDetailExclusionRulesAmis].
  /// [isPublic] Configures whether public AMIs are excluded from the lifecycle action.
  /// [lastLaunched] Specifies configuration details for Image Builder to exclude the most recent resources from lifecycle actions. Detailed below.
  /// [regions] Configures AWS Regions that are excluded from the lifecycle action.
  /// [sharedAccounts] Specifies AWS accounts whose resources are excluded from the lifecycle action.
  /// [tagMap] Lists tags that should be excluded from lifecycle actions for the AMIs that have them.
  LifecyclePolicyPolicyDetailExclusionRulesAmis({
    this.isPublic,
    this.lastLaunched,
    this.regions,
    this.sharedAccounts,
    this.tagMap,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final isPublicValue = isPublic;
    if (isPublicValue != null) {
      map['isPublic'] = isPublicValue;
    }
    final lastLaunchedValue = lastLaunched;
    if (lastLaunchedValue != null) {
      map['lastLaunched'] = lastLaunchedValue.toMap();
    }
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = regionsValue;
    }
    final sharedAccountsValue = sharedAccounts;
    if (sharedAccountsValue != null) {
      map['sharedAccounts'] = sharedAccountsValue;
    }
    final tagMapValue = tagMap;
    if (tagMapValue != null) {
      map['tagMap'] = tagMapValue;
    }
    return map;
  }

  factory LifecyclePolicyPolicyDetailExclusionRulesAmis.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailExclusionRulesAmis(
      isPublic: map['isPublic'] == null ? null : map['isPublic'] as bool,
      lastLaunched: map['lastLaunched'] == null
          ? null
          : LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched.fromMap(
              (map['lastLaunched'] as Map).cast<String, dynamic>()),
      regions: map['regions'] == null
          ? null
          : (map['regions'] as List).cast<String>(),
      sharedAccounts: map['sharedAccounts'] == null
          ? null
          : (map['sharedAccounts'] as List).cast<String>(),
      tagMap: map['tagMap'] == null
          ? null
          : (map['tagMap'] as Map).cast<String, String>(),
    );
  }
}
