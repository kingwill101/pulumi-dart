// ignore_for_file: unused_element, unnecessary_cast

import 'provisioning_details_response.dart';

/// Device details.
class DeviceDetailsResponse {
  /// Device serial number to be displayed.
  final String displaySerialNumber;
  /// Management Resource Id.
  final String managementResourceId;
  /// Management Resource Tenant ID.
  final String managementResourceTenantId;
  /// Provisioning Details for the device.
  final ProvisioningDetailsResponse provisioningDetails;
  /// Determining nature of provisioning that the configuration supports.
  final String provisioningSupport;
  /// Device serial number.
  final String serialNumber;

  /// Creates a new [DeviceDetailsResponse].
  /// [displaySerialNumber] Device serial number to be displayed.
  /// [managementResourceId] Management Resource Id.
  /// [managementResourceTenantId] Management Resource Tenant ID.
  /// [provisioningDetails] Provisioning Details for the device.
  /// [provisioningSupport] Determining nature of provisioning that the configuration supports.
  /// [serialNumber] Device serial number.
  DeviceDetailsResponse({
    required this.displaySerialNumber,
    required this.managementResourceId,
    required this.managementResourceTenantId,
    required this.provisioningDetails,
    required this.provisioningSupport,
    required this.serialNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displaySerialNumber': displaySerialNumber,
      'managementResourceId': managementResourceId,
      'managementResourceTenantId': managementResourceTenantId,
      'provisioningDetails': provisioningDetails.toMap(),
      'provisioningSupport': provisioningSupport,
      'serialNumber': serialNumber,
    };
  }

  factory DeviceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DeviceDetailsResponse(
      displaySerialNumber: map['displaySerialNumber'] as String,
      managementResourceId: map['managementResourceId'] as String,
      managementResourceTenantId: map['managementResourceTenantId'] as String,
      provisioningDetails: ProvisioningDetailsResponse.fromMap((map['provisioningDetails'] as Map).cast<String, dynamic>()),
      provisioningSupport: map['provisioningSupport'] as String,
      serialNumber: map['serialNumber'] as String,
    );
  }
}

