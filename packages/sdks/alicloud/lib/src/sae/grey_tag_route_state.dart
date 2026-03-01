// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grey_tag_route_dubbo_rule.dart';
import 'grey_tag_route_sc_rule.dart';

/// Input properties used for looking up and filtering GreyTagRoute resources.
class GreyTagRouteState {
  /// The ID  of the SAE Application.
  final pulumi.Input<String>? appId;
  /// The description of GreyTagRoute.
  final pulumi.Input<String>? description;
  /// The grayscale rule created for Dubbo Application. See `dubbo_rules` below.
  final pulumi.Input<List<GreyTagRouteDubboRule>>? dubboRules;
  /// The name of GreyTagRoute.
  final pulumi.Input<String>? greyTagRouteName;
  /// The grayscale rule created for SpringCloud Application. See `sc_rules` below.
  final pulumi.Input<List<GreyTagRouteScRule>>? scRules;

  /// Creates a new [GreyTagRouteState].
  /// [appId] The ID  of the SAE Application.
  /// [description] The description of GreyTagRoute.
  /// [dubboRules] The grayscale rule created for Dubbo Application. See `dubbo_rules` below.
  /// [greyTagRouteName] The name of GreyTagRoute.
  /// [scRules] The grayscale rule created for SpringCloud Application. See `sc_rules` below.
  GreyTagRouteState({
    pulumi.Output<String>? appId,
    pulumi.Output<String>? description,
    pulumi.Output<List<GreyTagRouteDubboRule>>? dubboRules,
    pulumi.Output<String>? greyTagRouteName,
    pulumi.Output<List<GreyTagRouteScRule>>? scRules,
  }) :
      appId = pulumi.Input.asOptionalInput<String>(appId),
      description = pulumi.Input.asOptionalInput<String>(description),
      dubboRules = pulumi.Input.asOptionalInput<List<GreyTagRouteDubboRule>>(dubboRules),
      greyTagRouteName = pulumi.Input.asOptionalInput<String>(greyTagRouteName),
      scRules = pulumi.Input.asOptionalInput<List<GreyTagRouteScRule>>(scRules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'description': ?description,
      'dubboRules': ?pulumi.Input.mapOptionalInputValue<List<GreyTagRouteDubboRule>, List<Map<String, dynamic>>>(dubboRules, (value) => pulumi.Input.encodeList<GreyTagRouteDubboRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'greyTagRouteName': ?greyTagRouteName,
      'scRules': ?pulumi.Input.mapOptionalInputValue<List<GreyTagRouteScRule>, List<Map<String, dynamic>>>(scRules, (value) => pulumi.Input.encodeList<GreyTagRouteScRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GreyTagRouteState.fromMap(Map<String, dynamic> map) {
    return GreyTagRouteState(
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dubboRules: map['dubboRules'] == null ? null : pulumi.Output.create<List<GreyTagRouteDubboRule>>(pulumi.Input.decodeList<GreyTagRouteDubboRule>(map['dubboRules'], (value) => GreyTagRouteDubboRule.fromMap((value as Map).cast<String, dynamic>()))),
      greyTagRouteName: map['greyTagRouteName'] == null ? null : pulumi.Output.create<String>(map['greyTagRouteName'] as String),
      scRules: map['scRules'] == null ? null : pulumi.Output.create<List<GreyTagRouteScRule>>(pulumi.Input.decodeList<GreyTagRouteScRule>(map['scRules'], (value) => GreyTagRouteScRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

