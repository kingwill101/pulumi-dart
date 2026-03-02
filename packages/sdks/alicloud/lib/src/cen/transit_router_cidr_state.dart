// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterCidr resources.
class TransitRouterCidrState {
  /// The new CIDR block of the transit router.
  final pulumi.Input<String>? cidr;
  /// The new description of the transit router CIDR block.
  /// The description must be 1 to 256 characters in length, and cannot start with http:// or https://. You can also leave this parameter empty.
  final pulumi.Input<String>? description;
  /// Specifies whether to allow the system to automatically add a route that points to the CIDR block to the route table of the transit router.
  final pulumi.Input<bool>? publishCidrRoute;
  /// The ID of the CIDR block.
  final pulumi.Input<String>? transitRouterCidrId;
  /// The new name of the transit router CIDR block.
  /// The name must be 1 to 128 characters in length, and cannot start with http:// or https://. You can also leave this parameter empty.
  final pulumi.Input<String>? transitRouterCidrName;
  /// The ID of the transit router.
  final pulumi.Input<String>? transitRouterId;

  /// Creates a new [TransitRouterCidrState].
  /// [cidr] The new CIDR block of the transit router.
  /// [description] The new description of the transit router CIDR block.
  /// [publishCidrRoute] Specifies whether to allow the system to automatically add a route that points to the CIDR block to the route table of the transit router.
  /// [transitRouterCidrId] The ID of the CIDR block.
  /// [transitRouterCidrName] The new name of the transit router CIDR block.
  /// [transitRouterId] The ID of the transit router.
  TransitRouterCidrState({
    this.cidr,
    this.description,
    this.publishCidrRoute,
    this.transitRouterCidrId,
    this.transitRouterCidrName,
    this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'description': ?description,
      'publishCidrRoute': ?publishCidrRoute,
      'transitRouterCidrId': ?transitRouterCidrId,
      'transitRouterCidrName': ?transitRouterCidrName,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory TransitRouterCidrState.fromMap(Map<String, dynamic> map) {
    return TransitRouterCidrState(
      cidr: map['cidr'] == null ? null : (map['cidr'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      publishCidrRoute: map['publishCidrRoute'] == null ? null : (map['publishCidrRoute'] as bool).input(),
      transitRouterCidrId: map['transitRouterCidrId'] == null ? null : (map['transitRouterCidrId'] as String).input(),
      transitRouterCidrName: map['transitRouterCidrName'] == null ? null : (map['transitRouterCidrName'] as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId'] as String).input(),
    );
  }
}

