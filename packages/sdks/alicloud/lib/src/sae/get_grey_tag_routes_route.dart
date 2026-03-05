// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_grey_tag_routes_route_dubbo_rule.dart';
import 'get_grey_tag_routes_route_sc_rule.dart';

class GetGreyTagRoutesRoute {
  /// The description of GreyTagRoute.
  final pulumi.Input<String> description;
  /// The grayscale rule created for Dubbo Application.
  final pulumi.Input<List<GetGreyTagRoutesRouteDubboRule>> dubboRules;
  /// The name of GreyTagRoute.
  final pulumi.Input<String> greyTagRouteName;
  /// The ID of the GreyTagRoute.
  final pulumi.Input<String> id;
  /// The grayscale rule created for SpringCloud Application.
  final pulumi.Input<List<GetGreyTagRoutesRouteScRule>> scRules;

  /// Creates a new [GetGreyTagRoutesRoute].
  /// [description] The description of GreyTagRoute.
  /// [dubboRules] The grayscale rule created for Dubbo Application.
  /// [greyTagRouteName] The name of GreyTagRoute.
  /// [id] The ID of the GreyTagRoute.
  /// [scRules] The grayscale rule created for SpringCloud Application.
  GetGreyTagRoutesRoute({
    required this.description,
    required this.dubboRules,
    required this.greyTagRouteName,
    required this.id,
    required this.scRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'dubboRules': pulumi.Input.mapInputValue<List<GetGreyTagRoutesRouteDubboRule>, List<Map<String, dynamic>>>(dubboRules, (value) => pulumi.Input.encodeList<GetGreyTagRoutesRouteDubboRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'greyTagRouteName': greyTagRouteName,
      'id': id,
      'scRules': pulumi.Input.mapInputValue<List<GetGreyTagRoutesRouteScRule>, List<Map<String, dynamic>>>(scRules, (value) => pulumi.Input.encodeList<GetGreyTagRoutesRouteScRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGreyTagRoutesRoute.fromMap(Map<String, dynamic> map) {
    return GetGreyTagRoutesRoute(
      description: pulumi.Input.fromValue(map['description'] as String),
      dubboRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGreyTagRoutesRouteDubboRule>(map['dubboRules']!, (value) => GetGreyTagRoutesRouteDubboRule.fromMap((value as Map).cast<String, dynamic>()))),
      greyTagRouteName: pulumi.Input.fromValue(map['greyTagRouteName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      scRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGreyTagRoutesRouteScRule>(map['scRules']!, (value) => GetGreyTagRoutesRouteScRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

