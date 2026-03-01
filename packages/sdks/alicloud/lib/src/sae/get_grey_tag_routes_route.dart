// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_grey_tag_routes_route_dubbo_rule.dart';
import 'get_grey_tag_routes_route_sc_rule.dart';

class GetGreyTagRoutesRoute {
  /// The description of GreyTagRoute.
  final String description;
  /// The grayscale rule created for Dubbo Application.
  final List<GetGreyTagRoutesRouteDubboRule> dubboRules;
  /// The name of GreyTagRoute.
  final String greyTagRouteName;
  /// The ID of the GreyTagRoute.
  final String id;
  /// The grayscale rule created for SpringCloud Application.
  final List<GetGreyTagRoutesRouteScRule> scRules;

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
      'dubboRules': pulumi.Input.encodeList<GetGreyTagRoutesRouteDubboRule, Map<String, dynamic>>(dubboRules, (value) => value.toMap()),
      'greyTagRouteName': greyTagRouteName,
      'id': id,
      'scRules': pulumi.Input.encodeList<GetGreyTagRoutesRouteScRule, Map<String, dynamic>>(scRules, (value) => value.toMap()),
    };
  }

  factory GetGreyTagRoutesRoute.fromMap(Map<String, dynamic> map) {
    return GetGreyTagRoutesRoute(
      description: map['description'] as String,
      dubboRules: pulumi.Input.decodeList<GetGreyTagRoutesRouteDubboRule>(map['dubboRules'], (value) => GetGreyTagRoutesRouteDubboRule.fromMap((value as Map).cast<String, dynamic>())),
      greyTagRouteName: map['greyTagRouteName'] as String,
      id: map['id'] as String,
      scRules: pulumi.Input.decodeList<GetGreyTagRoutesRouteScRule>(map['scRules'], (value) => GetGreyTagRoutesRouteScRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

