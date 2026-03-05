// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouterGrantAssociation resources.
class RouterGrantAssociationState {
  /// The ID of the associated Leased Line Gateway instance.
  final pulumi.Input<String>? ecrId;
  /// The ID of the Alibaba Cloud account (primary account) to which the leased line gateway instance is authorized.
  final pulumi.Input<int>? ecrOwnerAliUid;
  /// The ID of the network instance.
  final pulumi.Input<String>? instanceId;
  /// The ID of the region where the authorized network instance is located.
  final pulumi.Input<String>? instanceRegionId;
  /// The type of the network instance. Value:
  /// - `VBR`: the VBR instance.
  /// - `VPC`: VPC instance.
  final pulumi.Input<String>? instanceType;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [RouterGrantAssociationState].
  /// [ecrId] The ID of the associated Leased Line Gateway instance.
  /// [ecrOwnerAliUid] The ID of the Alibaba Cloud account (primary account) to which the leased line gateway instance is authorized.
  /// [instanceId] The ID of the network instance.
  /// [instanceRegionId] The ID of the region where the authorized network instance is located.
  /// [instanceType] The type of the network instance. Value:
  /// [status] The status of the resource
  RouterGrantAssociationState({
    this.ecrId,
    this.ecrOwnerAliUid,
    this.instanceId,
    this.instanceRegionId,
    this.instanceType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecrId': ?ecrId,
      'ecrOwnerAliUid': ?ecrOwnerAliUid,
      'instanceId': ?instanceId,
      'instanceRegionId': ?instanceRegionId,
      'instanceType': ?instanceType,
      'status': ?status,
    };
  }

  factory RouterGrantAssociationState.fromMap(Map<String, dynamic> map) {
    return RouterGrantAssociationState(
      ecrId: (() { final guardedValue = map['ecrId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecrOwnerAliUid: (() { final guardedValue = map['ecrOwnerAliUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceRegionId: (() { final guardedValue = map['instanceRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

