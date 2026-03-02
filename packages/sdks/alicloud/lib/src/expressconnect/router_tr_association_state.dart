// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouterTrAssociation resources.
class RouterTrAssociationState {
  /// List of allowed route prefixes.
  final pulumi.Input<List<String>>? allowedPrefixes;
  /// The first ID of the resource.
  final pulumi.Input<String>? associationId;
  /// The region to which the VPC or TR belongs.
  final pulumi.Input<String>? associationRegionId;
  /// The ID of the CEN instance.
  final pulumi.Input<String>? cenId;
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// The ID of the leased line gateway instance.
  final pulumi.Input<String>? ecrId;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The ID of the forwarding router instance.
  final pulumi.Input<String>? transitRouterId;
  /// The ID of the Alibaba Cloud account to which the forwarding router belongs.
  final pulumi.Input<int>? transitRouterOwnerId;

  /// Creates a new [RouterTrAssociationState].
  /// [allowedPrefixes] List of allowed route prefixes.
  /// [associationId] The first ID of the resource.
  /// [associationRegionId] The region to which the VPC or TR belongs.
  /// [cenId] The ID of the CEN instance.
  /// [createTime] The creation time of the resource.
  /// [ecrId] The ID of the leased line gateway instance.
  /// [status] The status of the resource.
  /// [transitRouterId] The ID of the forwarding router instance.
  /// [transitRouterOwnerId] The ID of the Alibaba Cloud account to which the forwarding router belongs.
  RouterTrAssociationState({
    this.allowedPrefixes,
    this.associationId,
    this.associationRegionId,
    this.cenId,
    this.createTime,
    this.ecrId,
    this.status,
    this.transitRouterId,
    this.transitRouterOwnerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPrefixes': ?allowedPrefixes,
      'associationId': ?associationId,
      'associationRegionId': ?associationRegionId,
      'cenId': ?cenId,
      'createTime': ?createTime,
      'ecrId': ?ecrId,
      'status': ?status,
      'transitRouterId': ?transitRouterId,
      'transitRouterOwnerId': ?transitRouterOwnerId,
    };
  }

  factory RouterTrAssociationState.fromMap(Map<String, dynamic> map) {
    return RouterTrAssociationState(
      allowedPrefixes: map['allowedPrefixes'] == null ? null : ((map['allowedPrefixes']! as List).cast<String>()).input(),
      associationId: map['associationId'] == null ? null : (map['associationId']! as String).input(),
      associationRegionId: map['associationRegionId'] == null ? null : (map['associationRegionId']! as String).input(),
      cenId: map['cenId'] == null ? null : (map['cenId']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      ecrId: map['ecrId'] == null ? null : (map['ecrId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId']! as String).input(),
      transitRouterOwnerId: map['transitRouterOwnerId'] == null ? null : (map['transitRouterOwnerId']! as int).input(),
    );
  }
}

