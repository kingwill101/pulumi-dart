// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouterVbrChildInstance resources.
class RouterVbrChildInstanceState {
  /// The ID of the leased line gateway subinstance.
  final pulumi.Input<String>? childInstanceId;
  /// The ID of the Alibaba Cloud account (primary account) to which the VBR instance belongs.
  ///
  /// > **NOTE:**  This parameter is required if you want to load a cross-account network instance.
  final pulumi.Input<String>? childInstanceOwnerId;
  /// Region of the leased line gateway sub-instance
  final pulumi.Input<String>? childInstanceRegionId;
  /// The type of the network instance. Value: `VBR`: VBR instance.
  final pulumi.Input<String>? childInstanceType;
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// Resource attribute fields that represent descriptive information
  final pulumi.Input<String>? description;
  /// ID of the representative leased line gateway instance.
  final pulumi.Input<String>? ecrId;
  /// Binding relationship status of leased line gateway subinstances.
  final pulumi.Input<String>? status;

  /// Creates a new [RouterVbrChildInstanceState].
  /// [childInstanceId] The ID of the leased line gateway subinstance.
  /// [childInstanceOwnerId] The ID of the Alibaba Cloud account (primary account) to which the VBR instance belongs.
  /// [childInstanceRegionId] Region of the leased line gateway sub-instance
  /// [childInstanceType] The type of the network instance. Value: `VBR`: VBR instance.
  /// [createTime] The creation time of the resource.
  /// [description] Resource attribute fields that represent descriptive information
  /// [ecrId] ID of the representative leased line gateway instance.
  /// [status] Binding relationship status of leased line gateway subinstances.
  RouterVbrChildInstanceState({
    this.childInstanceId,
    this.childInstanceOwnerId,
    this.childInstanceRegionId,
    this.childInstanceType,
    this.createTime,
    this.description,
    this.ecrId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childInstanceId': ?childInstanceId,
      'childInstanceOwnerId': ?childInstanceOwnerId,
      'childInstanceRegionId': ?childInstanceRegionId,
      'childInstanceType': ?childInstanceType,
      'createTime': ?createTime,
      'description': ?description,
      'ecrId': ?ecrId,
      'status': ?status,
    };
  }

  factory RouterVbrChildInstanceState.fromMap(Map<String, dynamic> map) {
    return RouterVbrChildInstanceState(
      childInstanceId: map['childInstanceId'] == null ? null : (map['childInstanceId'] as String).input(),
      childInstanceOwnerId: map['childInstanceOwnerId'] == null ? null : (map['childInstanceOwnerId'] as String).input(),
      childInstanceRegionId: map['childInstanceRegionId'] == null ? null : (map['childInstanceRegionId'] as String).input(),
      childInstanceType: map['childInstanceType'] == null ? null : (map['childInstanceType'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ecrId: map['ecrId'] == null ? null : (map['ecrId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

