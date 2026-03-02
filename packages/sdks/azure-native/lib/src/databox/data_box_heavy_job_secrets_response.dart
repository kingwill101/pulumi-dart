// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_error_response.dart';
import 'data_box_heavy_secret_response.dart';
import 'dc_access_security_code_response.dart';

/// The secrets related to a databox heavy job.
class DataBoxHeavyJobSecretsResponse {
  /// Contains the list of secret objects for a databox heavy job.
  final pulumi.Input<List<DataBoxHeavySecretResponse>> cabinetPodSecrets;
  /// Dc Access Security Code for Customer Managed Shipping
  final pulumi.Input<DcAccessSecurityCodeResponse> dcAccessSecurityCode;
  /// Error while fetching the secrets.
  final pulumi.Input<CloudErrorResponse> error;
  /// Used to indicate what type of job secrets object.
  /// Expected value is 'DataBoxHeavy'.
  final pulumi.Input<String> jobSecretsType;

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
      'cabinetPodSecrets': pulumi.Input.mapInputValue<List<DataBoxHeavySecretResponse>, List<Map<String, dynamic>>>(cabinetPodSecrets, (value) => pulumi.Input.encodeList<DataBoxHeavySecretResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dcAccessSecurityCode': pulumi.Input.mapInputValue<DcAccessSecurityCodeResponse, Map<String, dynamic>>(dcAccessSecurityCode, (value) => value.toMap()),
      'error': pulumi.Input.mapInputValue<CloudErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'jobSecretsType': jobSecretsType,
    };
  }

  factory DataBoxHeavyJobSecretsResponse.fromMap(Map<String, dynamic> map) {
    return DataBoxHeavyJobSecretsResponse(
      cabinetPodSecrets: (pulumi.Input.decodeList<DataBoxHeavySecretResponse>(map['cabinetPodSecrets'], (value) => DataBoxHeavySecretResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dcAccessSecurityCode: (DcAccessSecurityCodeResponse.fromMap((map['dcAccessSecurityCode'] as Map).cast<String, dynamic>())).input(),
      error: (CloudErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      jobSecretsType: (map['jobSecretsType'] as String).input(),
    );
  }
}

