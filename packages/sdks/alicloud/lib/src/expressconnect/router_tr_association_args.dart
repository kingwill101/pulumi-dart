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
    pulumi.Output<List<String>>? allowedPrefixes,
    required pulumi.Output<String> associationRegionId,
    pulumi.Output<String>? cenId,
    required pulumi.Output<String> ecrId,
    pulumi.Output<String>? transitRouterId,
    pulumi.Output<int>? transitRouterOwnerId,
  }) :
      allowedPrefixes = pulumi.Input.asOptionalInput<List<String>>(allowedPrefixes),
      associationRegionId = pulumi.Input.asInput<String>(associationRegionId),
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      ecrId = pulumi.Input.asInput<String>(ecrId),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId),
      transitRouterOwnerId = pulumi.Input.asOptionalInput<int>(transitRouterOwnerId);

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
      allowedPrefixes: map['allowedPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['allowedPrefixes'] as List).cast<String>()),
      associationRegionId: pulumi.Output.create<String>(map['associationRegionId'] as String),
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      ecrId: pulumi.Output.create<String>(map['ecrId'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
      transitRouterOwnerId: map['transitRouterOwnerId'] == null ? null : pulumi.Output.create<int>(map['transitRouterOwnerId'] as int),
    );
  }
}

