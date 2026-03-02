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
    this.cenId,
    required this.ecrId,
    this.ecrOwnerId,
    this.tags,
    this.transitRouterAttachmentDescription,
    this.transitRouterEcrAttachmentName,
    this.transitRouterId,
  });

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
      cenId: map['cenId'] == null ? null : (map['cenId']! as String).input(),
      ecrId: (map['ecrId'] as String).input(),
      ecrOwnerId: map['ecrOwnerId'] == null ? null : (map['ecrOwnerId']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] == null ? null : (map['transitRouterAttachmentDescription']! as String).input(),
      transitRouterEcrAttachmentName: map['transitRouterEcrAttachmentName'] == null ? null : (map['transitRouterEcrAttachmentName']! as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId']! as String).input(),
    );
  }
}

