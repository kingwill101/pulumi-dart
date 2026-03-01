// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_frontdoor_rule_set_frontdoor_rule_set_args_doc}
/// The set of arguments for FrontdoorRuleSet.
/// {@endtemplate}
/// {@macro pulumi_cdn_frontdoor_rule_set_frontdoor_rule_set_args_doc}
class FrontdoorRuleSetArgs {
  /// The ID of the Front Door Profile. Changing this forces a new Front Door Rule Set to be created.
  final pulumi.Input<String> cdnFrontdoorProfileId;
  /// The name which should be used for this Front Door Rule Set. Changing this forces a new Front Door Rule Set to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [FrontdoorRuleSetArgs].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile. Changing this forces a new Front Door Rule Set to be created.
  /// [name] The name which should be used for this Front Door Rule Set. Changing this forces a new Front Door Rule Set to be created.
  FrontdoorRuleSetArgs({
    required String cdnFrontdoorProfileId,
    String? name,
  }) :
      cdnFrontdoorProfileId = pulumi.Input.asInput<String>(cdnFrontdoorProfileId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': cdnFrontdoorProfileId,
      'name': ?name,
    };
  }

  factory FrontdoorRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleSetArgs(
      cdnFrontdoorProfileId: map['cdnFrontdoorProfileId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

