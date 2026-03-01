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
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? ecrId,
    pulumi.Output<int>? ecrOwnerId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitRouterAttachmentDescription,
    pulumi.Output<String>? transitRouterEcrAttachmentName,
    pulumi.Output<String>? transitRouterId,
  }) :
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      ecrId = pulumi.Input.asOptionalInput<String>(ecrId),
      ecrOwnerId = pulumi.Input.asOptionalInput<int>(ecrOwnerId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterAttachmentDescription = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentDescription),
      transitRouterEcrAttachmentName = pulumi.Input.asOptionalInput<String>(transitRouterEcrAttachmentName),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId);

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
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      ecrId: map['ecrId'] == null ? null : pulumi.Output.create<String>(map['ecrId'] as String),
      ecrOwnerId: map['ecrOwnerId'] == null ? null : pulumi.Output.create<int>(map['ecrOwnerId'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentDescription'] as String),
      transitRouterEcrAttachmentName: map['transitRouterEcrAttachmentName'] == null ? null : pulumi.Output.create<String>(map['transitRouterEcrAttachmentName'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

