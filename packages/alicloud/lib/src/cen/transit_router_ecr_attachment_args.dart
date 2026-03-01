// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_ecr_attachment_transit_router_ecr_attachment_args_doc}
/// The set of arguments for TransitRouterEcrAttachment.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_ecr_attachment_transit_router_ecr_attachment_args_doc}
class TransitRouterEcrAttachmentArgs {
  /// CenId
  final pulumi.Input<String>? cenId;
  /// EcrId
  final pulumi.Input<String> ecrId;
  /// EcrOwnerId
  final pulumi.Input<int>? ecrOwnerId;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// TransitRouterAttachmentDescription
  final pulumi.Input<String>? transitRouterAttachmentDescription;
  /// TransitRouterAttachmentName
  final pulumi.Input<String>? transitRouterEcrAttachmentName;
  /// TransitRouterId
  final pulumi.Input<String>? transitRouterId;

  /// Creates a new [TransitRouterEcrAttachmentArgs].
  /// [cenId] CenId
  /// [ecrId] EcrId
  /// [ecrOwnerId] EcrOwnerId
  /// [tags] The tag of the resource
  /// [transitRouterAttachmentDescription] TransitRouterAttachmentDescription
  /// [transitRouterEcrAttachmentName] TransitRouterAttachmentName
  /// [transitRouterId] TransitRouterId
  TransitRouterEcrAttachmentArgs({
    String? cenId,
    required String ecrId,
    int? ecrOwnerId,
    Map<String, String>? tags,
    String? transitRouterAttachmentDescription,
    String? transitRouterEcrAttachmentName,
    String? transitRouterId,
  }) :
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      ecrId = pulumi.Input.asInput<String>(ecrId),
      ecrOwnerId = pulumi.Input.asOptionalInput<int>(ecrOwnerId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterAttachmentDescription = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentDescription),
      transitRouterEcrAttachmentName = pulumi.Input.asOptionalInput<String>(transitRouterEcrAttachmentName),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'ecrId': ecrId,
      'ecrOwnerId': ?ecrOwnerId,
      'tags': ?tags,
      'transitRouterAttachmentDescription': ?transitRouterAttachmentDescription,
      'transitRouterEcrAttachmentName': ?transitRouterEcrAttachmentName,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory TransitRouterEcrAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterEcrAttachmentArgs(
      cenId: map['cenId'] == null ? null : map['cenId'] as String,
      ecrId: map['ecrId'] as String,
      ecrOwnerId: map['ecrOwnerId'] == null ? null : map['ecrOwnerId'] as int,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] == null ? null : map['transitRouterAttachmentDescription'] as String,
      transitRouterEcrAttachmentName: map['transitRouterEcrAttachmentName'] == null ? null : map['transitRouterEcrAttachmentName'] as String,
      transitRouterId: map['transitRouterId'] == null ? null : map['transitRouterId'] as String,
    );
  }
}

