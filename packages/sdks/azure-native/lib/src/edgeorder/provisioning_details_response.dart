// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_presence_verification_details_response.dart';

/// Details Related To Provision Resource.
class ProvisioningDetailsResponse {
  /// Auto Provisioning Details.
  final pulumi.Input<String>? autoProvisioningStatus;
  /// Proof of possession details.
  final pulumi.Input<DevicePresenceVerificationDetailsResponse>? devicePresenceVerification;
  /// Management Resource ArmId.
  final pulumi.Input<String>? managementResourceArmId;
  /// Provisioning Resource Arm ID.
  final pulumi.Input<String>? provisioningArmId;
  /// Provisioning End Point.
  final pulumi.Input<String>? provisioningEndPoint;
  /// Quantity of the devices.
  final pulumi.Input<int>? quantity;
  /// Arc Enabled Resource Arm id.
  final pulumi.Input<String>? readyToConnectArmId;
  /// Serial Number for the Device.
  final pulumi.Input<String>? serialNumber;
  /// Unique Identity for a Device.
  final pulumi.Input<String> uniqueDeviceIdentifier;
  /// Vendor Name for the Device , (for 1P devices - Microsoft).
  final pulumi.Input<String>? vendorName;

  /// Creates a new [ProvisioningDetailsResponse].
  /// [autoProvisioningStatus] Auto Provisioning Details.
  /// [devicePresenceVerification] Proof of possession details.
  /// [managementResourceArmId] Management Resource ArmId.
  /// [provisioningArmId] Provisioning Resource Arm ID.
  /// [provisioningEndPoint] Provisioning End Point.
  /// [quantity] Quantity of the devices.
  /// [readyToConnectArmId] Arc Enabled Resource Arm id.
  /// [serialNumber] Serial Number for the Device.
  /// [uniqueDeviceIdentifier] Unique Identity for a Device.
  /// [vendorName] Vendor Name for the Device , (for 1P devices - Microsoft).
  const ProvisioningDetailsResponse({
    this.autoProvisioningStatus,
    this.devicePresenceVerification,
    this.managementResourceArmId,
    this.provisioningArmId,
    this.provisioningEndPoint,
    this.quantity,
    this.readyToConnectArmId,
    this.serialNumber,
    required this.uniqueDeviceIdentifier,
    this.vendorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProvisioningStatus': ?autoProvisioningStatus,
      'devicePresenceVerification': ?pulumi.Input.mapOptionalInputValue<DevicePresenceVerificationDetailsResponse, Map<String, dynamic>>(devicePresenceVerification, (value) => value.toMap()),
      'managementResourceArmId': ?managementResourceArmId,
      'provisioningArmId': ?provisioningArmId,
      'provisioningEndPoint': ?provisioningEndPoint,
      'quantity': ?quantity,
      'readyToConnectArmId': ?readyToConnectArmId,
      'serialNumber': ?serialNumber,
      'uniqueDeviceIdentifier': uniqueDeviceIdentifier,
      'vendorName': ?vendorName,
    };
  }

  factory ProvisioningDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ProvisioningDetailsResponse(
      autoProvisioningStatus: (() { final guardedValue = map['autoProvisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      devicePresenceVerification: (() { final guardedValue = map['devicePresenceVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DevicePresenceVerificationDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managementResourceArmId: (() { final guardedValue = map['managementResourceArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningArmId: (() { final guardedValue = map['provisioningArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningEndPoint: (() { final guardedValue = map['provisioningEndPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quantity: (() { final guardedValue = map['quantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      readyToConnectArmId: (() { final guardedValue = map['readyToConnectArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uniqueDeviceIdentifier: pulumi.Input.fromValue(map['uniqueDeviceIdentifier'] as String),
      vendorName: (() { final guardedValue = map['vendorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

