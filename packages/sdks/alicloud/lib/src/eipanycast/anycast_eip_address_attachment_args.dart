// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anycast_eip_address_attachment_pop_location.dart';

/// {@template pulumi_eipanycast_anycast_eip_address_attachment_anycast_eip_address_attachment_args_doc}
/// The set of arguments for AnycastEipAddressAttachment.
/// {@endtemplate}
/// {@macro pulumi_eipanycast_anycast_eip_address_attachment_anycast_eip_address_attachment_args_doc}
class AnycastEipAddressAttachmentArgs {
  /// The ID of the Anycast EIP instance.
  final pulumi.Input<String> anycastId;
  /// Binding mode, value:
  /// - **Default**: The Default mode. The cloud resource instance to be bound is set as the Default origin.
  /// - **Normal**: In Normal mode, the cloud resource instance to be bound is set to the common source station.
  final pulumi.Input<String>? associationMode;
  /// The ID of the cloud resource instance to be bound.
  final pulumi.Input<String> bindInstanceId;
  /// The region ID of the cloud resource instance to be bound.You can only bind cloud resource instances in some regions. You can call the describeanystserverregions operation to obtain the region ID of the cloud resource instances that can be bound.
  final pulumi.Input<String> bindInstanceRegionId;
  /// The type of the cloud resource instance to be bound. Value:
  /// - **SlbInstance**: a private network SLB instance.
  /// - **NetworkInterface**: ENI.
  final pulumi.Input<String> bindInstanceType;
  /// The access point information of the associated access area when the cloud resource instance is bound.If you are binding for the first time, this parameter does not need to be configured, and the system automatically associates all access areas. See `pop_locations` below.
  final pulumi.Input<List<AnycastEipAddressAttachmentPopLocation>>? popLocations;
  /// The secondary private IP address of the elastic network card to be bound.This parameter takes effect only when **BindInstanceType** is set to **NetworkInterface. When you do not enter, this parameter is the primary private IP of the ENI by default.
  final pulumi.Input<String>? privateIpAddress;

  /// Creates a new [AnycastEipAddressAttachmentArgs].
  /// [anycastId] The ID of the Anycast EIP instance.
  /// [associationMode] Binding mode, value:
  /// [bindInstanceId] The ID of the cloud resource instance to be bound.
  /// [bindInstanceRegionId] The region ID of the cloud resource instance to be bound.You can only bind cloud resource instances in some regions. You can call the describeanystserverregions operation to obtain the region ID of the cloud resource instances that can be bound.
  /// [bindInstanceType] The type of the cloud resource instance to be bound. Value:
  /// [popLocations] The access point information of the associated access area when the cloud resource instance is bound.If you are binding for the first time, this parameter does not need to be configured, and the system automatically associates all access areas. See `pop_locations` below.
  /// [privateIpAddress] The secondary private IP address of the elastic network card to be bound.This parameter takes effect only when **BindInstanceType** is set to **NetworkInterface. When you do not enter, this parameter is the primary private IP of the ENI by default.
  AnycastEipAddressAttachmentArgs({
    required this.anycastId,
    this.associationMode,
    required this.bindInstanceId,
    required this.bindInstanceRegionId,
    required this.bindInstanceType,
    this.popLocations,
    this.privateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anycastId': anycastId,
      'associationMode': ?associationMode,
      'bindInstanceId': bindInstanceId,
      'bindInstanceRegionId': bindInstanceRegionId,
      'bindInstanceType': bindInstanceType,
      'popLocations': ?pulumi.Input.mapOptionalInputValue<List<AnycastEipAddressAttachmentPopLocation>, List<Map<String, dynamic>>>(popLocations, (value) => pulumi.Input.encodeList<AnycastEipAddressAttachmentPopLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateIpAddress': ?privateIpAddress,
    };
  }

  factory AnycastEipAddressAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AnycastEipAddressAttachmentArgs(
      anycastId: (map['anycastId'] as String).input(),
      associationMode: map['associationMode'] == null ? null : (map['associationMode']! as String).input(),
      bindInstanceId: (map['bindInstanceId'] as String).input(),
      bindInstanceRegionId: (map['bindInstanceRegionId'] as String).input(),
      bindInstanceType: (map['bindInstanceType'] as String).input(),
      popLocations: map['popLocations'] == null ? null : (pulumi.Input.decodeList<AnycastEipAddressAttachmentPopLocation>(map['popLocations']!, (value) => AnycastEipAddressAttachmentPopLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress']! as String).input(),
    );
  }
}

