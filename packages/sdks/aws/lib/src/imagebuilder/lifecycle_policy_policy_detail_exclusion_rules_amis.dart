// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_detail_exclusion_rules_amis_last_launched.dart';

class LifecyclePolicyPolicyDetailExclusionRulesAmis {
  /// Configures whether public AMIs are excluded from the lifecycle action.
  final pulumi.Input<bool>? isPublic;
  /// Specifies configuration details for Image Builder to exclude the most recent resources from lifecycle actions. Detailed below.
  final pulumi.Input<LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched>? lastLaunched;
  /// Configures AWS Regions that are excluded from the lifecycle action.
  final pulumi.Input<List<String>>? regions;
  /// Specifies AWS accounts whose resources are excluded from the lifecycle action.
  final pulumi.Input<List<String>>? sharedAccounts;
  /// Lists tags that should be excluded from lifecycle actions for the AMIs that have them.
  final pulumi.Input<Map<String, String>>? tagMap;

  /// Creates a new [LifecyclePolicyPolicyDetailExclusionRulesAmis].
  /// [isPublic] Configures whether public AMIs are excluded from the lifecycle action.
  /// [lastLaunched] Specifies configuration details for Image Builder to exclude the most recent resources from lifecycle actions. Detailed below.
  /// [regions] Configures AWS Regions that are excluded from the lifecycle action.
  /// [sharedAccounts] Specifies AWS accounts whose resources are excluded from the lifecycle action.
  /// [tagMap] Lists tags that should be excluded from lifecycle actions for the AMIs that have them.
  const LifecyclePolicyPolicyDetailExclusionRulesAmis({
    this.isPublic,
    this.lastLaunched,
    this.regions,
    this.sharedAccounts,
    this.tagMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPublic': ?isPublic,
      'lastLaunched': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched, Map<String, dynamic>>(lastLaunched, (value) => value.toMap()),
      'regions': ?regions,
      'sharedAccounts': ?sharedAccounts,
      'tagMap': ?tagMap,
    };
  }

  factory LifecyclePolicyPolicyDetailExclusionRulesAmis.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailExclusionRulesAmis(
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastLaunched: (() { final guardedValue = map['lastLaunched']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sharedAccounts: (() { final guardedValue = map['sharedAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagMap: (() { final guardedValue = map['tagMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

