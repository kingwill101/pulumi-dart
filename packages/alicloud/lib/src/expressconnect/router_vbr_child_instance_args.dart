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
  /// > **NOTE:**  This parameter is required if you want to load a cross-account network instance.
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
  RouterVbrChildInstanceArgs({
    required String childInstanceId,
    String? childInstanceOwnerId,
    required String childInstanceRegionId,
    required String childInstanceType,
    String? description,
    required String ecrId,
  }) :
      childInstanceId = pulumi.Input.asInput<String>(childInstanceId),
      childInstanceOwnerId = pulumi.Input.asOptionalInput<String>(childInstanceOwnerId),
      childInstanceRegionId = pulumi.Input.asInput<String>(childInstanceRegionId),
      childInstanceType = pulumi.Input.asInput<String>(childInstanceType),
      description = pulumi.Input.asOptionalInput<String>(description),
      ecrId = pulumi.Input.asInput<String>(ecrId);

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
      childInstanceId: map['childInstanceId'] as String,
      childInstanceOwnerId: map['childInstanceOwnerId'] == null ? null : map['childInstanceOwnerId'] as String,
      childInstanceRegionId: map['childInstanceRegionId'] as String,
      childInstanceType: map['childInstanceType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      ecrId: map['ecrId'] as String,
    );
  }
}

