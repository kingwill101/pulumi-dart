// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterEcrAttachment resources.
class TransitRouterEcrAttachmentState {
  /// CenId
  final pulumi.Input<String>? cenId;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// EcrId
  final pulumi.Input<String>? ecrId;
  /// EcrOwnerId
  final pulumi.Input<int>? ecrOwnerId;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// TransitRouterAttachmentDescription
  final pulumi.Input<String>? transitRouterAttachmentDescription;
  /// TransitRouterAttachmentName
  final pulumi.Input<String>? transitRouterEcrAttachmentName;
  /// TransitRouterId
  final pulumi.Input<String>? transitRouterId;

  /// Creates a new [TransitRouterEcrAttachmentState].
  /// [cenId] CenId
  /// [createTime] The creation time of the resource
  /// [ecrId] EcrId
  /// [ecrOwnerId] EcrOwnerId
  /// [status] The status of the resource
  /// [tags] The tag of the resource
  /// [transitRouterAttachmentDescription] TransitRouterAttachmentDescription
  /// [transitRouterEcrAttachmentName] TransitRouterAttachmentName
  /// [transitRouterId] TransitRouterId
  TransitRouterEcrAttachmentState({
    this.cenId,
    this.createTime,
    this.ecrId,
    this.ecrOwnerId,
    this.status,
    this.tags,
    this.transitRouterAttachmentDescription,
    this.transitRouterEcrAttachmentName,
    this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'createTime': ?createTime,
      'ecrId': ?ecrId,
      'ecrOwnerId': ?ecrOwnerId,
      'status': ?status,
      'tags': ?tags,
      'transitRouterAttachmentDescription': ?transitRouterAttachmentDescription,
      'transitRouterEcrAttachmentName': ?transitRouterEcrAttachmentName,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory TransitRouterEcrAttachmentState.fromMap(Map<String, dynamic> map) {
    return TransitRouterEcrAttachmentState(
      cenId: map['cenId'] == null ? null : (map['cenId'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      ecrId: map['ecrId'] == null ? null : (map['ecrId'] as String).input(),
      ecrOwnerId: map['ecrOwnerId'] == null ? null : (map['ecrOwnerId'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] == null ? null : (map['transitRouterAttachmentDescription'] as String).input(),
      transitRouterEcrAttachmentName: map['transitRouterEcrAttachmentName'] == null ? null : (map['transitRouterEcrAttachmentName'] as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId'] as String).input(),
    );
  }
}

