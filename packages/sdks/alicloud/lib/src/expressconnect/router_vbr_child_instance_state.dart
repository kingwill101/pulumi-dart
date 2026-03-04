// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouterVbrChildInstance resources.
class RouterVbrChildInstanceState {
  /// The ID of the leased line gateway subinstance.
  final pulumi.Input<String>? childInstanceId;

  /// The ID of the Alibaba Cloud account (primary account) to which the VBR instance belongs.
  ///
  /// &gt; **NOTE:**  This parameter is required if you want to load a cross-account network instance.
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
      childInstanceId: (() {
        final guardedValue = map['childInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      childInstanceOwnerId: (() {
        final guardedValue = map['childInstanceOwnerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      childInstanceRegionId: (() {
        final guardedValue = map['childInstanceRegionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      childInstanceType: (() {
        final guardedValue = map['childInstanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ecrId: (() {
        final guardedValue = map['ecrId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
