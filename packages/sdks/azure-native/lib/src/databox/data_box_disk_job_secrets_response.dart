// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_error_response.dart';
import 'dc_access_security_code_response.dart';
import 'disk_secret_response.dart';

/// The secrets related to disk job.
class DataBoxDiskJobSecretsResponse {
  /// Dc Access Security Code for Customer Managed Shipping
  final pulumi.Input<DcAccessSecurityCodeResponse> dcAccessSecurityCode;
  /// Contains the list of secrets object for that device.
  final pulumi.Input<List<DiskSecretResponse>> diskSecrets;
  /// Error while fetching the secrets.
  final pulumi.Input<CloudErrorResponse> error;
  /// Whether passkey was provided by user.
  final pulumi.Input<bool> isPasskeyUserDefined;
  /// Used to indicate what type of job secrets object.
  /// Expected value is 'DataBoxDisk'.
  final pulumi.Input<String> jobSecretsType;
  /// PassKey for the disk Job.
  final pulumi.Input<String> passKey;

  /// Creates a new [DataBoxDiskJobSecretsResponse].
  /// [dcAccessSecurityCode] Dc Access Security Code for Customer Managed Shipping
  /// [diskSecrets] Contains the list of secrets object for that device.
  /// [error] Error while fetching the secrets.
  /// [isPasskeyUserDefined] Whether passkey was provided by user.
  /// [jobSecretsType] Used to indicate what type of job secrets object.
  /// [passKey] PassKey for the disk Job.
  DataBoxDiskJobSecretsResponse({
    required this.dcAccessSecurityCode,
    required this.diskSecrets,
    required this.error,
    required this.isPasskeyUserDefined,
    required this.jobSecretsType,
    required this.passKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dcAccessSecurityCode': pulumi.Input.mapInputValue<DcAccessSecurityCodeResponse, Map<String, dynamic>>(dcAccessSecurityCode, (value) => value.toMap()),
      'diskSecrets': pulumi.Input.mapInputValue<List<DiskSecretResponse>, List<Map<String, dynamic>>>(diskSecrets, (value) => pulumi.Input.encodeList<DiskSecretResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'error': pulumi.Input.mapInputValue<CloudErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'isPasskeyUserDefined': isPasskeyUserDefined,
      'jobSecretsType': jobSecretsType,
      'passKey': passKey,
    };
  }

  factory DataBoxDiskJobSecretsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxDiskJobSecretsResponse(
      dcAccessSecurityCode: (DcAccessSecurityCodeResponse.fromMap((map['dcAccessSecurityCode'] as Map).cast<String, dynamic>())).input(),
      diskSecrets: (pulumi.Input.decodeList<DiskSecretResponse>(map['diskSecrets'], (value) => DiskSecretResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      error: (CloudErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      isPasskeyUserDefined: (map['isPasskeyUserDefined'] as bool).input(),
      jobSecretsType: (map['jobSecretsType'] as String).input(),
      passKey: (map['passKey'] as String).input(),
    );
  }
}

