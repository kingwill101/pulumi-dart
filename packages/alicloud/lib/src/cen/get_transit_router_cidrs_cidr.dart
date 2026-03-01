// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouterCidrsCidr {
  /// The cidr of the transit router.
  final String cidr;
  /// The description of the transit router.
  final String description;
  /// The type of the transit router cidr.
  final String family;
  /// The ID of the Cen Transit Router Cidr. It formats as `<transit_router_id>:<transit_router_cidr_id>`.
  final String id;
  /// Whether to allow automatically adding Transit Router Cidr in Transit Router Route Table.
  final bool publishCidrRoute;
  /// The ID of the transit router cidr.
  final String transitRouterCidrId;
  /// The name of the transit router.
  final String transitRouterCidrName;
  /// The ID of the transit router.
  final String transitRouterId;

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
      cidr: map['cidr'] as String,
      description: map['description'] as String,
      family: map['family'] as String,
      id: map['id'] as String,
      publishCidrRoute: map['publishCidrRoute'] as bool,
      transitRouterCidrId: map['transitRouterCidrId'] as String,
      transitRouterCidrName: map['transitRouterCidrName'] as String,
      transitRouterId: map['transitRouterId'] as String,
    );
  }
}

