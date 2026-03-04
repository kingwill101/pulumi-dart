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
      cenId: (() {
        final guardedValue = map['cenId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ecrId: (() {
        final guardedValue = map['ecrId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ecrOwnerId: (() {
        final guardedValue = map['ecrOwnerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      transitRouterAttachmentDescription: (() {
        final guardedValue = map['transitRouterAttachmentDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitRouterEcrAttachmentName: (() {
        final guardedValue = map['transitRouterEcrAttachmentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitRouterId: (() {
        final guardedValue = map['transitRouterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
