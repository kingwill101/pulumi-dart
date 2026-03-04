// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details Related To Provision Resource.
class ProvisioningDetails {
  /// Auto Provisioning Details.
  final pulumi.Input<String>? autoProvisioningStatus;

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

  /// Vendor Name for the Device , (for 1P devices - Microsoft).
  final pulumi.Input<String>? vendorName;

  /// Creates a new [ProvisioningDetails].
  /// [autoProvisioningStatus] Auto Provisioning Details.
  /// [managementResourceArmId] Management Resource ArmId.
  /// [provisioningArmId] Provisioning Resource Arm ID.
  /// [provisioningEndPoint] Provisioning End Point.
  /// [quantity] Quantity of the devices.
  /// [readyToConnectArmId] Arc Enabled Resource Arm id.
  /// [serialNumber] Serial Number for the Device.
  /// [vendorName] Vendor Name for the Device , (for 1P devices - Microsoft).
  ProvisioningDetails({
    this.autoProvisioningStatus,
    this.managementResourceArmId,
    this.provisioningArmId,
    this.provisioningEndPoint,
    this.quantity,
    this.readyToConnectArmId,
    this.serialNumber,
    this.vendorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProvisioningStatus': ?autoProvisioningStatus,
      'managementResourceArmId': ?managementResourceArmId,
      'provisioningArmId': ?provisioningArmId,
      'provisioningEndPoint': ?provisioningEndPoint,
      'quantity': ?quantity,
      'readyToConnectArmId': ?readyToConnectArmId,
      'serialNumber': ?serialNumber,
      'vendorName': ?vendorName,
    };
  }

  factory ProvisioningDetails.fromMap(Map<String, dynamic> map) {
    return ProvisioningDetails(
      autoProvisioningStatus: (() {
        final guardedValue = map['autoProvisioningStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managementResourceArmId: (() {
        final guardedValue = map['managementResourceArmId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningArmId: (() {
        final guardedValue = map['provisioningArmId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningEndPoint: (() {
        final guardedValue = map['provisioningEndPoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quantity: (() {
        final guardedValue = map['quantity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      readyToConnectArmId: (() {
        final guardedValue = map['readyToConnectArmId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serialNumber: (() {
        final guardedValue = map['serialNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vendorName: (() {
        final guardedValue = map['vendorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
