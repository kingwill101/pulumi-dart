// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioning_details_response.dart';

/// Device details.
class DeviceDetailsResponse {
  /// Device serial number to be displayed.
  final pulumi.Input<String> displaySerialNumber;
  /// Management Resource Id.
  final pulumi.Input<String> managementResourceId;
  /// Management Resource Tenant ID.
  final pulumi.Input<String> managementResourceTenantId;
  /// Provisioning Details for the device.
  final pulumi.Input<ProvisioningDetailsResponse> provisioningDetails;
  /// Determining nature of provisioning that the configuration supports.
  final pulumi.Input<String> provisioningSupport;
  /// Device serial number.
  final pulumi.Input<String> serialNumber;

  /// Creates a new [DeviceDetailsResponse].
  /// [displaySerialNumber] Device serial number to be displayed.
  /// [managementResourceId] Management Resource Id.
  /// [managementResourceTenantId] Management Resource Tenant ID.
  /// [provisioningDetails] Provisioning Details for the device.
  /// [provisioningSupport] Determining nature of provisioning that the configuration supports.
  /// [serialNumber] Device serial number.
  const DeviceDetailsResponse({
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
      'provisioningDetails': pulumi.Input.mapInputValue<ProvisioningDetailsResponse, Map<String, dynamic>>(provisioningDetails, (value) => value.toMap()),
      'provisioningSupport': provisioningSupport,
      'serialNumber': serialNumber,
    };
  }

  factory DeviceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DeviceDetailsResponse(
      displaySerialNumber: pulumi.Input.fromValue(map['displaySerialNumber'] as String),
      managementResourceId: pulumi.Input.fromValue(map['managementResourceId'] as String),
      managementResourceTenantId: pulumi.Input.fromValue(map['managementResourceTenantId'] as String),
      provisioningDetails: pulumi.Input.fromValue(ProvisioningDetailsResponse.fromMap((map['provisioningDetails']! as Map).cast<String, dynamic>())),
      provisioningSupport: pulumi.Input.fromValue(map['provisioningSupport'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
    );
  }
}
