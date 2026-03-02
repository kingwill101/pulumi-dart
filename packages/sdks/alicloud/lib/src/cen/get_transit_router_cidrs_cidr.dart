// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterCidrsCidr {
  /// The cidr of the transit router.
  final pulumi.Input<String> cidr;
  /// The description of the transit router.
  final pulumi.Input<String> description;
  /// The type of the transit router cidr.
  final pulumi.Input<String> family;
  /// The ID of the Cen Transit Router Cidr. It formats as `<transit_router_id>:<transit_router_cidr_id>`.
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
  /// [id] The ID of the Cen Transit Router Cidr. It formats as `<transit_router_id>:<transit_router_cidr_id>`.
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
      cidr: (map['cidr'] as String).input(),
      description: (map['description'] as String).input(),
      family: (map['family'] as String).input(),
      id: (map['id'] as String).input(),
      publishCidrRoute: (map['publishCidrRoute'] as bool).input(),
      transitRouterCidrId: (map['transitRouterCidrId'] as String).input(),
      transitRouterCidrName: (map['transitRouterCidrName'] as String).input(),
      transitRouterId: (map['transitRouterId'] as String).input(),
    );
  }
}

