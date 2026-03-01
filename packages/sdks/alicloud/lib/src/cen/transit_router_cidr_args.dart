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
    required pulumi.Output<String> cidr,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? publishCidrRoute,
    pulumi.Output<String>? transitRouterCidrName,
    required pulumi.Output<String> transitRouterId,
  }) :
      cidr = pulumi.Input.asInput<String>(cidr),
      description = pulumi.Input.asOptionalInput<String>(description),
      publishCidrRoute = pulumi.Input.asOptionalInput<bool>(publishCidrRoute),
      transitRouterCidrName = pulumi.Input.asOptionalInput<String>(transitRouterCidrName),
      transitRouterId = pulumi.Input.asInput<String>(transitRouterId);

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
      cidr: pulumi.Output.create<String>(map['cidr'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      publishCidrRoute: map['publishCidrRoute'] == null ? null : pulumi.Output.create<bool>(map['publishCidrRoute'] as bool),
      transitRouterCidrName: map['transitRouterCidrName'] == null ? null : pulumi.Output.create<String>(map['transitRouterCidrName'] as String),
      transitRouterId: pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

