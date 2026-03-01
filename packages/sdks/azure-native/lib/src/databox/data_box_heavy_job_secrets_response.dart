// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_error_response.dart';
import 'data_box_heavy_secret_response.dart';
import 'dc_access_security_code_response.dart';

/// The secrets related to a databox heavy job.
class DataBoxHeavyJobSecretsResponse {
  /// Contains the list of secret objects for a databox heavy job.
  final List<DataBoxHeavySecretResponse> cabinetPodSecrets;
  /// Dc Access Security Code for Customer Managed Shipping
  final DcAccessSecurityCodeResponse dcAccessSecurityCode;
  /// Error while fetching the secrets.
  final CloudErrorResponse error;
  /// Used to indicate what type of job secrets object.
  /// Expected value is 'DataBoxHeavy'.
  final String jobSecretsType;

  /// Creates a new [DataBoxHeavyJobSecretsResponse].
  /// [cabinetPodSecrets] Contains the list of secret objects for a databox heavy job.
  /// [dcAccessSecurityCode] Dc Access Security Code for Customer Managed Shipping
  /// [error] Error while fetching the secrets.
  /// [jobSecretsType] Used to indicate what type of job secrets object.
  DataBoxHeavyJobSecretsResponse({
    required this.cabinetPodSecrets,
    required this.dcAccessSecurityCode,
    required this.error,
    required this.jobSecretsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cabinetPodSecrets': pulumi.Input.encodeList<DataBoxHeavySecretResponse, Map<String, dynamic>>(cabinetPodSecrets, (value) => value.toMap()),
      'dcAccessSecurityCode': dcAccessSecurityCode.toMap(),
      'error': error.toMap(),
      'jobSecretsType': jobSecretsType,
    };
  }

  factory DataBoxHeavyJobSecretsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxHeavyJobSecretsResponse(
      cabinetPodSecrets: pulumi.Input.decodeList<DataBoxHeavySecretResponse>(map['cabinetPodSecrets'], (value) => DataBoxHeavySecretResponse.fromMap((value as Map).cast<String, dynamic>())),
      dcAccessSecurityCode: DcAccessSecurityCodeResponse.fromMap((map['dcAccessSecurityCode'] as Map).cast<String, dynamic>()),
      error: CloudErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      jobSecretsType: map['jobSecretsType'] as String,
    );
  }
}

