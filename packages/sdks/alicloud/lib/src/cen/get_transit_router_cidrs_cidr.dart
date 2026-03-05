// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterCidrsCidr {
  /// The cidr of the transit router.
  final pulumi.Input<String> cidr;
  /// The description of the transit router.
  final pulumi.Input<String> description;
  /// The type of the transit router cidr.
  final pulumi.Input<String> family;
  /// The ID of the Cen Transit Router Cidr. It formats as `&lt;transit_router_id&gt;:&lt;transit_router_cidr_id&gt;`.
  final pulumi.Input<String> id;
  /// Whether to allow automatically adding Transit Router Cidr in Transit Router Route Table.
  final pulumi.Input<bool> publishCidrRoute;
  /// The ID of the transit router cidr.
  final pulumi.Input<String> transitRouterCidrId;
  /// The name of the transit router.
  final pulumi.Input<String> transitRouterCidrName;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;

  /// Creates a new [GetTransitRouterCidrsCidr].
  /// [cidr] The cidr of the transit router.
  /// [description] The description of the transit router.
  /// [family] The type of the transit router cidr.
  /// [id] The ID of the Cen Transit Router Cidr. It formats as `&lt;transit_router_id&gt;:&lt;transit_router_cidr_id&gt;`.
  /// [publishCidrRoute] Whether to allow automatically adding Transit Router Cidr in Transit Router Route Table.
  /// [transitRouterCidrId] The ID of the transit router cidr.
  /// [transitRouterCidrName] The name of the transit router.
  /// [transitRouterId] The ID of the transit router.
  GetTransitRouterCidrsCidr({
    required this.cidr,
    required this.description,
    required this.family,
    required this.id,
    required this.publishCidrRoute,
    required this.transitRouterCidrId,
    required this.transitRouterCidrName,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'description': description,
      'family': family,
      'id': id,
      'publishCidrRoute': publishCidrRoute,
      'transitRouterCidrId': transitRouterCidrId,
      'transitRouterCidrName': transitRouterCidrName,
      'transitRouterId': transitRouterId,
    };
  }

  factory GetTransitRouterCidrsCidr.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterCidrsCidr(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      family: pulumi.Input.fromValue(map['family'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      publishCidrRoute: pulumi.Input.fromValue(map['publishCidrRoute'] as bool),
      transitRouterCidrId: pulumi.Input.fromValue(map['transitRouterCidrId'] as String),
      transitRouterCidrName: pulumi.Input.fromValue(map['transitRouterCidrName'] as String),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
    );
  }
}

