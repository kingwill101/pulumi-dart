// ignore_for_file: unused_element, unnecessary_cast


/// Details Related To Provision Resource.
class ProvisioningDetails {
  /// Auto Provisioning Details.
  final String? autoProvisioningStatus;
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
  /// Vendor Name for the Device , (for 1P devices - Microsoft).
  final String? vendorName;

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
      autoProvisioningStatus: map['autoProvisioningStatus'] == null ? null : map['autoProvisioningStatus'] as String,
      managementResourceArmId: map['managementResourceArmId'] == null ? null : map['managementResourceArmId'] as String,
      provisioningArmId: map['provisioningArmId'] == null ? null : map['provisioningArmId'] as String,
      provisioningEndPoint: map['provisioningEndPoint'] == null ? null : map['provisioningEndPoint'] as String,
      quantity: map['quantity'] == null ? null : map['quantity'] as int,
      readyToConnectArmId: map['readyToConnectArmId'] == null ? null : map['readyToConnectArmId'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      vendorName: map['vendorName'] == null ? null : map['vendorName'] as String,
    );
  }
}

