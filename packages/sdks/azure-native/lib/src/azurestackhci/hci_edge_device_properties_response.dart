// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_configuration_response.dart';
import 'hci_reported_properties_response.dart';

/// properties for Arc-enabled edge device with HCI OS.
class HciEdgeDevicePropertiesResponse {
  /// Device Configuration
  final pulumi.Input<DeviceConfigurationResponse>? deviceConfiguration;
  /// Provisioning state of edgeDevice resource
  final pulumi.Input<String> provisioningState;
  /// The instance view of all current configurations on HCI device.
  final pulumi.Input<HciReportedPropertiesResponse> reportedProperties;

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
      'deviceConfiguration': ?pulumi.Input.mapOptionalInputValue<DeviceConfigurationResponse, Map<String, dynamic>>(deviceConfiguration, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'reportedProperties': pulumi.Input.mapInputValue<HciReportedPropertiesResponse, Map<String, dynamic>>(reportedProperties, (value) => value.toMap()),
    };
  }

  factory HciEdgeDevicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HciEdgeDevicePropertiesResponse(
      deviceConfiguration: (() { final guardedValue = map['deviceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      reportedProperties: pulumi.Input.fromValue(HciReportedPropertiesResponse.fromMap((map['reportedProperties']! as Map).cast<String, dynamic>())),
    );
  }
}

