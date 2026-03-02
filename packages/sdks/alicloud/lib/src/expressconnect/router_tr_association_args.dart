// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_router_tr_association_router_tr_association_args_doc}
/// The set of arguments for RouterTrAssociation.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_router_tr_association_router_tr_association_args_doc}
class RouterTrAssociationArgs {
  /// List of allowed route prefixes.
  final pulumi.Input<List<String>>? allowedPrefixes;
  /// The region to which the VPC or TR belongs.
  final pulumi.Input<String> associationRegionId;
  /// The ID of the CEN instance.
  final pulumi.Input<String>? cenId;
  /// The ID of the leased line gateway instance.
  final pulumi.Input<String> ecrId;
  /// The ID of the forwarding router instance.
  final pulumi.Input<String>? transitRouterId;
  /// The ID of the Alibaba Cloud account to which the forwarding router belongs.
  final pulumi.Input<int>? transitRouterOwnerId;

  /// Creates a new [RouterTrAssociationArgs].
  /// [allowedPrefixes] List of allowed route prefixes.
  /// [associationRegionId] The region to which the VPC or TR belongs.
  /// [cenId] The ID of the CEN instance.
  /// [ecrId] The ID of the leased line gateway instance.
  /// [transitRouterId] The ID of the forwarding router instance.
  /// [transitRouterOwnerId] The ID of the Alibaba Cloud account to which the forwarding router belongs.
  RouterTrAssociationArgs({
    this.allowedPrefixes,
    required this.associationRegionId,
    this.cenId,
    required this.ecrId,
    this.transitRouterId,
    this.transitRouterOwnerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPrefixes': ?allowedPrefixes,
      'associationRegionId': associationRegionId,
      'cenId': ?cenId,
      'ecrId': ecrId,
      'transitRouterId': ?transitRouterId,
      'transitRouterOwnerId': ?transitRouterOwnerId,
    };
  }

  factory RouterTrAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RouterTrAssociationArgs(
      allowedPrefixes: map['allowedPrefixes'] == null ? null : ((map['allowedPrefixes'] as List).cast<String>()).input(),
      associationRegionId: (map['associationRegionId'] as String).input(),
      cenId: map['cenId'] == null ? null : (map['cenId'] as String).input(),
      ecrId: (map['ecrId'] as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId'] as String).input(),
      transitRouterOwnerId: map['transitRouterOwnerId'] == null ? null : (map['transitRouterOwnerId'] as int).input(),
    );
  }
}

