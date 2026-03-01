// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_credential_details_response.dart';
import 'appliance_network_configuration_response.dart';

/// The secrets related to a databox heavy.
class DataBoxHeavySecretResponse {
  /// Per account level access credentials.
  final List<AccountCredentialDetailsResponse> accountCredentialDetails;
  /// Password for out of the box experience on device.
  final String devicePassword;
  /// Serial number of the assigned device.
  final String deviceSerialNumber;
  /// The base 64 encoded public key to authenticate with the device
  final String encodedValidationCertPubKey;
  /// Network configuration of the appliance.
  final List<ApplianceNetworkConfigurationResponse> networkConfigurations;

  /// Creates a new [DataBoxHeavySecretResponse].
  /// [accountCredentialDetails] Per account level access credentials.
  /// [devicePassword] Password for out of the box experience on device.
  /// [deviceSerialNumber] Serial number of the assigned device.
  /// [encodedValidationCertPubKey] The base 64 encoded public key to authenticate with the device
  /// [networkConfigurations] Network configuration of the appliance.
  DataBoxHeavySecretResponse({
    required this.accountCredentialDetails,
    required this.devicePassword,
    required this.deviceSerialNumber,
    required this.encodedValidationCertPubKey,
    required this.networkConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountCredentialDetails': pulumi.Input.encodeList<AccountCredentialDetailsResponse, Map<String, dynamic>>(accountCredentialDetails, (value) => value.toMap()),
      'devicePassword': devicePassword,
      'deviceSerialNumber': deviceSerialNumber,
      'encodedValidationCertPubKey': encodedValidationCertPubKey,
      'networkConfigurations': pulumi.Input.encodeList<ApplianceNetworkConfigurationResponse, Map<String, dynamic>>(networkConfigurations, (value) => value.toMap()),
    };
  }

  factory DataBoxHeavySecretResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxHeavySecretResponse(
      accountCredentialDetails: pulumi.Input.decodeList<AccountCredentialDetailsResponse>(map['accountCredentialDetails'], (value) => AccountCredentialDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      devicePassword: map['devicePassword'] as String,
      deviceSerialNumber: map['deviceSerialNumber'] as String,
      encodedValidationCertPubKey: map['encodedValidationCertPubKey'] as String,
      networkConfigurations: pulumi.Input.decodeList<ApplianceNetworkConfigurationResponse>(map['networkConfigurations'], (value) => ApplianceNetworkConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

