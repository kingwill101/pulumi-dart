// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anycast_eip_address_attachment_pop_location.dart';

/// Input properties used for looking up and filtering AnycastEipAddressAttachment resources.
class AnycastEipAddressAttachmentState {
  /// The ID of the Anycast EIP instance.
  final pulumi.Input<String>? anycastId;
  /// Binding mode, value:
  /// - **Default**: The Default mode. The cloud resource instance to be bound is set as the Default origin.
  /// - **Normal**: In Normal mode, the cloud resource instance to be bound is set to the common source station.
  final pulumi.Input<String>? associationMode;
  /// The ID of the cloud resource instance to be bound.
  final pulumi.Input<String>? bindInstanceId;
  /// The region ID of the cloud resource instance to be bound.You can only bind cloud resource instances in some regions. You can call the describeanystserverregions operation to obtain the region ID of the cloud resource instances that can be bound.
  final pulumi.Input<String>? bindInstanceRegionId;
  /// The type of the cloud resource instance to be bound. Value:
  /// - **SlbInstance**: a private network SLB instance.
  /// - **NetworkInterface**: ENI.
  final pulumi.Input<String>? bindInstanceType;
  /// Binding time.Time is expressed according to ISO8601 standard and UTC time is used. The format is: 'YYYY-MM-DDThh:mm:ssZ'.
  final pulumi.Input<String>? bindTime;
  /// The access point information of the associated access area when the cloud resource instance is bound.If you are binding for the first time, this parameter does not need to be configured, and the system automatically associates all access areas. See `pop_locations` below.
  final pulumi.Input<List<AnycastEipAddressAttachmentPopLocation>>? popLocations;
  /// The secondary private IP address of the elastic network card to be bound.This parameter takes effect only when **BindInstanceType** is set to **NetworkInterface. When you do not enter, this parameter is the primary private IP of the ENI by default.
  final pulumi.Input<String>? privateIpAddress;
  /// The status of the bound cloud resource instance. Value:BINDING: BINDING.Bound: Bound.UNBINDING: UNBINDING.DELETED: DELETED.MODIFYING: being modified.
  final pulumi.Input<String>? status;

  /// Creates a new [AnycastEipAddressAttachmentState].
  /// [anycastId] The ID of the Anycast EIP instance.
  /// [associationMode] Binding mode, value:
  /// [bindInstanceId] The ID of the cloud resource instance to be bound.
  /// [bindInstanceRegionId] The region ID of the cloud resource instance to be bound.You can only bind cloud resource instances in some regions. You can call the describeanystserverregions operation to obtain the region ID of the cloud resource instances that can be bound.
  /// [bindInstanceType] The type of the cloud resource instance to be bound. Value:
  /// [bindTime] Binding time.Time is expressed according to ISO8601 standard and UTC time is used. The format is: 'YYYY-MM-DDThh:mm:ssZ'.
  /// [popLocations] The access point information of the associated access area when the cloud resource instance is bound.If you are binding for the first time, this parameter does not need to be configured, and the system automatically associates all access areas. See `pop_locations` below.
  /// [privateIpAddress] The secondary private IP address of the elastic network card to be bound.This parameter takes effect only when **BindInstanceType** is set to **NetworkInterface. When you do not enter, this parameter is the primary private IP of the ENI by default.
  /// [status] The status of the bound cloud resource instance. Value:BINDING: BINDING.Bound: Bound.UNBINDING: UNBINDING.DELETED: DELETED.MODIFYING: being modified.
  AnycastEipAddressAttachmentState({
    this.anycastId,
    this.associationMode,
    this.bindInstanceId,
    this.bindInstanceRegionId,
    this.bindInstanceType,
    this.bindTime,
    this.popLocations,
    this.privateIpAddress,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anycastId': ?anycastId,
      'associationMode': ?associationMode,
      'bindInstanceId': ?bindInstanceId,
      'bindInstanceRegionId': ?bindInstanceRegionId,
      'bindInstanceType': ?bindInstanceType,
      'bindTime': ?bindTime,
      'popLocations': ?pulumi.Input.mapOptionalInputValue<List<AnycastEipAddressAttachmentPopLocation>, List<Map<String, dynamic>>>(popLocations, (value) => pulumi.Input.encodeList<AnycastEipAddressAttachmentPopLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateIpAddress': ?privateIpAddress,
      'status': ?status,
    };
  }

  factory AnycastEipAddressAttachmentState.fromMap(Map<String, dynamic> map) {
    return AnycastEipAddressAttachmentState(
      anycastId: map['anycastId'] == null ? null : (map['anycastId'] as String).input(),
      associationMode: map['associationMode'] == null ? null : (map['associationMode'] as String).input(),
      bindInstanceId: map['bindInstanceId'] == null ? null : (map['bindInstanceId'] as String).input(),
      bindInstanceRegionId: map['bindInstanceRegionId'] == null ? null : (map['bindInstanceRegionId'] as String).input(),
      bindInstanceType: map['bindInstanceType'] == null ? null : (map['bindInstanceType'] as String).input(),
      bindTime: map['bindTime'] == null ? null : (map['bindTime'] as String).input(),
      popLocations: map['popLocations'] == null ? null : (pulumi.Input.decodeList<AnycastEipAddressAttachmentPopLocation>(map['popLocations'], (value) => AnycastEipAddressAttachmentPopLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

