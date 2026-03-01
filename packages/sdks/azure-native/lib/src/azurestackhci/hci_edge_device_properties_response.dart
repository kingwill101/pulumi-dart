// ignore_for_file: unused_element, unnecessary_cast

import 'device_configuration_response.dart';
import 'hci_reported_properties_response.dart';

/// properties for Arc-enabled edge device with HCI OS.
class HciEdgeDevicePropertiesResponse {
  /// Device Configuration
  final DeviceConfigurationResponse? deviceConfiguration;
  /// Provisioning state of edgeDevice resource
  final String provisioningState;
  /// The instance view of all current configurations on HCI device.
  final HciReportedPropertiesResponse reportedProperties;

  /// Creates a new [HciEdgeDevicePropertiesResponse].
  /// [deviceConfiguration] Device Configuration
  /// [provisioningState] Provisioning state of edgeDevice resource
  /// [reportedProperties] The instance view of all current configurations on HCI device.
  HciEdgeDevicePropertiesResponse({
    this.deviceConfiguration,
    required this.provisioningState,
    required this.reportedProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceConfiguration': ?deviceConfiguration == null ? null : deviceConfiguration!.toMap(),
      'provisioningState': provisioningState,
      'reportedProperties': reportedProperties.toMap(),
    };
  }

  factory HciEdgeDevicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HciEdgeDevicePropertiesResponse(
      deviceConfiguration: map['deviceConfiguration'] == null ? null : DeviceConfigurationResponse.fromMap((map['deviceConfiguration'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      reportedProperties: HciReportedPropertiesResponse.fromMap((map['reportedProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

