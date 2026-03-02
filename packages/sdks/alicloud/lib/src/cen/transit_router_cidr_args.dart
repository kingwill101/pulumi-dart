// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_cidr_transit_router_cidr_args_doc}
/// The set of arguments for TransitRouterCidr.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_cidr_transit_router_cidr_args_doc}
class TransitRouterCidrArgs {
  /// The new CIDR block of the transit router.
  final pulumi.Input<String> cidr;
  /// The new description of the transit router CIDR block.
  /// The description must be 1 to 256 characters in length, and cannot start with http:// or https://. You can also leave this parameter empty.
  final pulumi.Input<String>? description;
  /// Specifies whether to allow the system to automatically add a route that points to the CIDR block to the route table of the transit router.
  final pulumi.Input<bool>? publishCidrRoute;
  /// The new name of the transit router CIDR block.
  /// The name must be 1 to 128 characters in length, and cannot start with http:// or https://. You can also leave this parameter empty.
  final pulumi.Input<String>? transitRouterCidrName;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;

  /// Creates a new [TransitRouterCidrArgs].
  /// [cidr] The new CIDR block of the transit router.
  /// [description] The new description of the transit router CIDR block.
  /// [publishCidrRoute] Specifies whether to allow the system to automatically add a route that points to the CIDR block to the route table of the transit router.
  /// [transitRouterCidrName] The new name of the transit router CIDR block.
  /// [transitRouterId] The ID of the transit router.
  TransitRouterCidrArgs({
    required this.cidr,
    this.description,
    this.publishCidrRoute,
    this.transitRouterCidrName,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'description': ?description,
      'publishCidrRoute': ?publishCidrRoute,
      'transitRouterCidrName': ?transitRouterCidrName,
      'transitRouterId': transitRouterId,
    };
  }

  factory TransitRouterCidrArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterCidrArgs(
      cidr: (map['cidr'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      publishCidrRoute: map['publishCidrRoute'] == null ? null : (map['publishCidrRoute']! as bool).input(),
      transitRouterCidrName: map['transitRouterCidrName'] == null ? null : (map['transitRouterCidrName']! as String).input(),
      transitRouterId: (map['transitRouterId'] as String).input(),
    );
  }
}

