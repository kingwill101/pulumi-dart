// ignore_for_file: unused_element, unnecessary_cast

import 'high_availability_software_configuration_response.dart';

/// The SAP Software configuration Input when the software is to be installed by service without OS Configurations
class SAPInstallWithoutOSConfigSoftwareConfigurationResponse {
  /// The URL to the SAP Build of Materials(BOM) file.
  final String bomUrl;
  /// Gets or sets the HA software configuration.
  final HighAvailabilitySoftwareConfigurationResponse? highAvailabilitySoftwareConfiguration;
  /// The SAP bits storage account id.
  final String sapBitsStorageAccountId;
  /// The SAP software installation Type.
  /// Expected value is 'SAPInstallWithoutOSConfig'.
  final String softwareInstallationType;
  /// The software version to install.
  final String softwareVersion;

  /// Creates a new [SAPInstallWithoutOSConfigSoftwareConfigurationResponse].
  /// [bomUrl] The URL to the SAP Build of Materials(BOM) file.
  /// [highAvailabilitySoftwareConfiguration] Gets or sets the HA software configuration.
  /// [sapBitsStorageAccountId] The SAP bits storage account id.
  /// [softwareInstallationType] The SAP software installation Type.
  /// [softwareVersion] The software version to install.
  SAPInstallWithoutOSConfigSoftwareConfigurationResponse({
    required this.bomUrl,
    this.highAvailabilitySoftwareConfiguration,
    required this.sapBitsStorageAccountId,
    required this.softwareInstallationType,
    required this.softwareVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bomUrl': bomUrl,
      'highAvailabilitySoftwareConfiguration': ?highAvailabilitySoftwareConfiguration == null ? null : highAvailabilitySoftwareConfiguration!.toMap(),
      'sapBitsStorageAccountId': sapBitsStorageAccountId,
      'softwareInstallationType': softwareInstallationType,
      'softwareVersion': softwareVersion,
    };
  }

  factory SAPInstallWithoutOSConfigSoftwareConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SAPInstallWithoutOSConfigSoftwareConfigurationResponse(
      bomUrl: map['bomUrl'] as String,
      highAvailabilitySoftwareConfiguration: map['highAvailabilitySoftwareConfiguration'] == null ? null : HighAvailabilitySoftwareConfigurationResponse.fromMap((map['highAvailabilitySoftwareConfiguration'] as Map).cast<String, dynamic>()),
      sapBitsStorageAccountId: map['sapBitsStorageAccountId'] as String,
      softwareInstallationType: map['softwareInstallationType'] as String,
      softwareVersion: map['softwareVersion'] as String,
    );
  }
}

