// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grey_tag_route_dubbo_rule.dart';
import 'grey_tag_route_sc_rule.dart';

/// {@template pulumi_sae_grey_tag_route_grey_tag_route_args_doc}
/// The set of arguments for GreyTagRoute.
/// {@endtemplate}
/// {@macro pulumi_sae_grey_tag_route_grey_tag_route_args_doc}
class GreyTagRouteArgs {
  /// The ID  of the SAE Application.
  final pulumi.Input<String> appId;
  /// The description of GreyTagRoute.
  final pulumi.Input<String>? description;
  /// The grayscale rule created for Dubbo Application. See `dubbo_rules` below.
  final pulumi.Input<List<GreyTagRouteDubboRule>>? dubboRules;
  /// The name of GreyTagRoute.
  final pulumi.Input<String> greyTagRouteName;
  /// The grayscale rule created for SpringCloud Application. See `sc_rules` below.
  final pulumi.Input<List<GreyTagRouteScRule>>? scRules;

  /// Creates a new [GreyTagRouteArgs].
  /// [appId] The ID  of the SAE Application.
  /// [description] The description of GreyTagRoute.
  /// [dubboRules] The grayscale rule created for Dubbo Application. See `dubbo_rules` below.
  /// [greyTagRouteName] The name of GreyTagRoute.
  /// [scRules] The grayscale rule created for SpringCloud Application. See `sc_rules` below.
  GreyTagRouteArgs({
    required this.appId,
    this.description,
    this.dubboRules,
    required this.greyTagRouteName,
    this.scRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'description': ?description,
      'dubboRules': ?pulumi.Input.mapOptionalInputValue<List<GreyTagRouteDubboRule>, List<Map<String, dynamic>>>(dubboRules, (value) => pulumi.Input.encodeList<GreyTagRouteDubboRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'greyTagRouteName': greyTagRouteName,
      'scRules': ?pulumi.Input.mapOptionalInputValue<List<GreyTagRouteScRule>, List<Map<String, dynamic>>>(scRules, (value) => pulumi.Input.encodeList<GreyTagRouteScRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GreyTagRouteArgs.fromMap(Map<String, dynamic> map) {
    return GreyTagRouteArgs(
      appId: (map['appId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dubboRules: map['dubboRules'] == null ? null : (pulumi.Input.decodeList<GreyTagRouteDubboRule>(map['dubboRules']!, (value) => GreyTagRouteDubboRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      greyTagRouteName: (map['greyTagRouteName'] as String).input(),
      scRules: map['scRules'] == null ? null : (pulumi.Input.decodeList<GreyTagRouteScRule>(map['scRules']!, (value) => GreyTagRouteScRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

