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
      appId: pulumi.Input.fromValue(map['appId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dubboRules: (() { final guardedValue = map['dubboRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GreyTagRouteDubboRule>(guardedValue, (value) => GreyTagRouteDubboRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      greyTagRouteName: pulumi.Input.fromValue(map['greyTagRouteName'] as String),
      scRules: (() { final guardedValue = map['scRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GreyTagRouteScRule>(guardedValue, (value) => GreyTagRouteScRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

