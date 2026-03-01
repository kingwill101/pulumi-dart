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
    pulumi.Output<String>? childInstanceId,
    pulumi.Output<String>? childInstanceOwnerId,
    pulumi.Output<String>? childInstanceRegionId,
    pulumi.Output<String>? childInstanceType,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ecrId,
    pulumi.Output<String>? status,
  }) :
      childInstanceId = pulumi.Input.asOptionalInput<String>(childInstanceId),
      childInstanceOwnerId = pulumi.Input.asOptionalInput<String>(childInstanceOwnerId),
      childInstanceRegionId = pulumi.Input.asOptionalInput<String>(childInstanceRegionId),
      childInstanceType = pulumi.Input.asOptionalInput<String>(childInstanceType),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      ecrId = pulumi.Input.asOptionalInput<String>(ecrId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      childInstanceId: map['childInstanceId'] == null ? null : pulumi.Output.create<String>(map['childInstanceId'] as String),
      childInstanceOwnerId: map['childInstanceOwnerId'] == null ? null : pulumi.Output.create<String>(map['childInstanceOwnerId'] as String),
      childInstanceRegionId: map['childInstanceRegionId'] == null ? null : pulumi.Output.create<String>(map['childInstanceRegionId'] as String),
      childInstanceType: map['childInstanceType'] == null ? null : pulumi.Output.create<String>(map['childInstanceType'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ecrId: map['ecrId'] == null ? null : pulumi.Output.create<String>(map['ecrId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

