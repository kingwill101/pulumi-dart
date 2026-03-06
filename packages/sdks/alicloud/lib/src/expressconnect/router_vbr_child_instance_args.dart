// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_router_vbr_child_instance_router_vbr_child_instance_args_doc}
/// The set of arguments for RouterVbrChildInstance.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_router_vbr_child_instance_router_vbr_child_instance_args_doc}
class RouterVbrChildInstanceArgs {
  /// The ID of the leased line gateway subinstance.
  final pulumi.Input<String> childInstanceId;
  /// The ID of the Alibaba Cloud account (primary account) to which the VBR instance belongs.
  ///
  /// &gt; **NOTE:**  This parameter is required if you want to load a cross-account network instance.
  final pulumi.Input<String>? childInstanceOwnerId;
  /// Region of the leased line gateway sub-instance
  final pulumi.Input<String> childInstanceRegionId;
  /// The type of the network instance. Value: `VBR`: VBR instance.
  final pulumi.Input<String> childInstanceType;
  /// Resource attribute fields that represent descriptive information
  final pulumi.Input<String>? description;
  /// ID of the representative leased line gateway instance.
  final pulumi.Input<String> ecrId;

  /// Creates a new [RouterVbrChildInstanceArgs].
  /// [childInstanceId] The ID of the leased line gateway subinstance.
  /// [childInstanceOwnerId] The ID of the Alibaba Cloud account (primary account) to which the VBR instance belongs.
  /// [childInstanceRegionId] Region of the leased line gateway sub-instance
  /// [childInstanceType] The type of the network instance. Value: `VBR`: VBR instance.
  /// [description] Resource attribute fields that represent descriptive information
  /// [ecrId] ID of the representative leased line gateway instance.
  const RouterVbrChildInstanceArgs({
    required this.childInstanceId,
    this.childInstanceOwnerId,
    required this.childInstanceRegionId,
    required this.childInstanceType,
    this.description,
    required this.ecrId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childInstanceId': childInstanceId,
      'childInstanceOwnerId': ?childInstanceOwnerId,
      'childInstanceRegionId': childInstanceRegionId,
      'childInstanceType': childInstanceType,
      'description': ?description,
      'ecrId': ecrId,
    };
  }

  factory RouterVbrChildInstanceArgs.fromMap(Map<String, dynamic> map) {
    return RouterVbrChildInstanceArgs(
      childInstanceId: pulumi.Input.fromValue(map['childInstanceId'] as String),
      childInstanceOwnerId: (() { final guardedValue = map['childInstanceOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      childInstanceRegionId: pulumi.Input.fromValue(map['childInstanceRegionId'] as String),
      childInstanceType: pulumi.Input.fromValue(map['childInstanceType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecrId: pulumi.Input.fromValue(map['ecrId'] as String),
    );
  }
}

