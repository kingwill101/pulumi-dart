// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_error_response.dart';
import 'dc_access_security_code_response.dart';
import 'disk_secret_response.dart';

/// The secrets related to disk job.
class DataBoxDiskJobSecretsResponse {
  /// Dc Access Security Code for Customer Managed Shipping
  final DcAccessSecurityCodeResponse dcAccessSecurityCode;
  /// Contains the list of secrets object for that device.
  final List<DiskSecretResponse> diskSecrets;
  /// Error while fetching the secrets.
  final CloudErrorResponse error;
  /// Whether passkey was provided by user.
  final bool isPasskeyUserDefined;
  /// Used to indicate what type of job secrets object.
  /// Expected value is 'DataBoxDisk'.
  final String jobSecretsType;
  /// PassKey for the disk Job.
  final String passKey;

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
      'dcAccessSecurityCode': dcAccessSecurityCode.toMap(),
      'diskSecrets': pulumi.Input.encodeList<DiskSecretResponse, Map<String, dynamic>>(diskSecrets, (value) => value.toMap()),
      'error': error.toMap(),
      'isPasskeyUserDefined': isPasskeyUserDefined,
      'jobSecretsType': jobSecretsType,
      'passKey': passKey,
    };
  }

  factory DataBoxDiskJobSecretsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxDiskJobSecretsResponse(
      dcAccessSecurityCode: DcAccessSecurityCodeResponse.fromMap((map['dcAccessSecurityCode'] as Map).cast<String, dynamic>()),
      diskSecrets: pulumi.Input.decodeList<DiskSecretResponse>(map['diskSecrets'], (value) => DiskSecretResponse.fromMap((value as Map).cast<String, dynamic>())),
      error: CloudErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      isPasskeyUserDefined: map['isPasskeyUserDefined'] as bool,
      jobSecretsType: map['jobSecretsType'] as String,
      passKey: map['passKey'] as String,
    );
  }
}

