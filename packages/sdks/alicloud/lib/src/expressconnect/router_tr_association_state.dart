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
    pulumi.Output<List<String>>? allowedPrefixes,
    pulumi.Output<String>? associationId,
    pulumi.Output<String>? associationRegionId,
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? ecrId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterId,
    pulumi.Output<int>? transitRouterOwnerId,
  }) :
      allowedPrefixes = pulumi.Input.asOptionalInput<List<String>>(allowedPrefixes),
      associationId = pulumi.Input.asOptionalInput<String>(associationId),
      associationRegionId = pulumi.Input.asOptionalInput<String>(associationRegionId),
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      ecrId = pulumi.Input.asOptionalInput<String>(ecrId),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId),
      transitRouterOwnerId = pulumi.Input.asOptionalInput<int>(transitRouterOwnerId);

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
      allowedPrefixes: map['allowedPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['allowedPrefixes'] as List).cast<String>()),
      associationId: map['associationId'] == null ? null : pulumi.Output.create<String>(map['associationId'] as String),
      associationRegionId: map['associationRegionId'] == null ? null : pulumi.Output.create<String>(map['associationRegionId'] as String),
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      ecrId: map['ecrId'] == null ? null : pulumi.Output.create<String>(map['ecrId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
      transitRouterOwnerId: map['transitRouterOwnerId'] == null ? null : pulumi.Output.create<int>(map['transitRouterOwnerId'] as int),
    );
  }
}

