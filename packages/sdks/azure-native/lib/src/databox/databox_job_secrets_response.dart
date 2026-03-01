// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_error_response.dart';
import 'data_box_secret_response.dart';
import 'dc_access_security_code_response.dart';

/// The secrets related to a databox job.
class DataboxJobSecretsResponse {
  /// Dc Access Security Code for Customer Managed Shipping
  final DcAccessSecurityCodeResponse dcAccessSecurityCode;
  /// Error while fetching the secrets.
  final CloudErrorResponse error;
  /// Used to indicate what type of job secrets object.
  /// Expected value is 'DataBox'.
  final String jobSecretsType;
  /// Contains the list of secret objects for a job.
  final List<DataBoxSecretResponse>? podSecrets;

  /// Creates a new [DataboxJobSecretsResponse].
  /// [dcAccessSecurityCode] Dc Access Security Code for Customer Managed Shipping
  /// [error] Error while fetching the secrets.
  /// [jobSecretsType] Used to indicate what type of job secrets object.
  /// [podSecrets] Contains the list of secret objects for a job.
  DataboxJobSecretsResponse({
    required this.dcAccessSecurityCode,
    required this.error,
    required this.jobSecretsType,
    this.podSecrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dcAccessSecurityCode': dcAccessSecurityCode.toMap(),
      'error': error.toMap(),
      'jobSecretsType': jobSecretsType,
      'podSecrets': ?podSecrets == null ? null : pulumi.Input.encodeList<DataBoxSecretResponse, Map<String, dynamic>>(podSecrets!, (value) => value.toMap()),
    };
  }

  factory DataboxJobSecretsResponse.fromMap(Map<String, dynamic> map) {
    return DataboxJobSecretsResponse(
      dcAccessSecurityCode: DcAccessSecurityCodeResponse.fromMap((map['dcAccessSecurityCode'] as Map).cast<String, dynamic>()),
      error: CloudErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      jobSecretsType: map['jobSecretsType'] as String,
      podSecrets: map['podSecrets'] == null ? null : pulumi.Input.decodeList<DataBoxSecretResponse>(map['podSecrets'], (value) => DataBoxSecretResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

