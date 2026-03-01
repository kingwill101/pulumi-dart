// ignore_for_file: unused_element, unnecessary_cast

import 'device_presence_verification_details_response.dart';

/// Details Related To Provision Resource.
class ProvisioningDetailsResponse {
  /// Auto Provisioning Details.
  final String? autoProvisioningStatus;
  /// Proof of possession details.
  final DevicePresenceVerificationDetailsResponse? devicePresenceVerification;
  /// Management Resource ArmId.
  final String? managementResourceArmId;
  /// Provisioning Resource Arm ID.
  final String? provisioningArmId;
  /// Provisioning End Point.
  final String? provisioningEndPoint;
  /// Quantity of the devices.
  final int? quantity;
  /// Arc Enabled Resource Arm id.
  final String? readyToConnectArmId;
  /// Serial Number for the Device.
  final String? serialNumber;
  /// Unique Identity for a Device.
  final String uniqueDeviceIdentifier;
  /// Vendor Name for the Device , (for 1P devices - Microsoft).
  final String? vendorName;

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
  ProvisioningDetailsResponse({
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
      'devicePresenceVerification': ?devicePresenceVerification == null ? null : devicePresenceVerification!.toMap(),
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
      autoProvisioningStatus: map['autoProvisioningStatus'] == null ? null : map['autoProvisioningStatus'] as String,
      devicePresenceVerification: map['devicePresenceVerification'] == null ? null : DevicePresenceVerificationDetailsResponse.fromMap((map['devicePresenceVerification'] as Map).cast<String, dynamic>()),
      managementResourceArmId: map['managementResourceArmId'] == null ? null : map['managementResourceArmId'] as String,
      provisioningArmId: map['provisioningArmId'] == null ? null : map['provisioningArmId'] as String,
      provisioningEndPoint: map['provisioningEndPoint'] == null ? null : map['provisioningEndPoint'] as String,
      quantity: map['quantity'] == null ? null : map['quantity'] as int,
      readyToConnectArmId: map['readyToConnectArmId'] == null ? null : map['readyToConnectArmId'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      uniqueDeviceIdentifier: map['uniqueDeviceIdentifier'] as String,
      vendorName: map['vendorName'] == null ? null : map['vendorName'] as String,
    );
  }
}

