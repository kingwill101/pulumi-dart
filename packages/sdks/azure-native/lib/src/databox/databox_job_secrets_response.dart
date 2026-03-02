// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_error_response.dart';
import 'data_box_secret_response.dart';
import 'dc_access_security_code_response.dart';

/// The secrets related to a databox job.
class DataboxJobSecretsResponse {
  /// Dc Access Security Code for Customer Managed Shipping
  final pulumi.Input<DcAccessSecurityCodeResponse> dcAccessSecurityCode;
  /// Error while fetching the secrets.
  final pulumi.Input<CloudErrorResponse> error;
  /// Used to indicate what type of job secrets object.
  /// Expected value is 'DataBox'.
  final pulumi.Input<String> jobSecretsType;
  /// Contains the list of secret objects for a job.
  final pulumi.Input<List<DataBoxSecretResponse>>? podSecrets;

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
      'dcAccessSecurityCode': pulumi.Input.mapInputValue<DcAccessSecurityCodeResponse, Map<String, dynamic>>(dcAccessSecurityCode, (value) => value.toMap()),
      'error': pulumi.Input.mapInputValue<CloudErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'jobSecretsType': jobSecretsType,
      'podSecrets': ?pulumi.Input.mapOptionalInputValue<List<DataBoxSecretResponse>, List<Map<String, dynamic>>>(podSecrets, (value) => pulumi.Input.encodeList<DataBoxSecretResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataboxJobSecretsResponse.fromMap(Map<String, dynamic> map) {
    return DataboxJobSecretsResponse(
      dcAccessSecurityCode: (DcAccessSecurityCodeResponse.fromMap((map['dcAccessSecurityCode'] as Map).cast<String, dynamic>())).input(),
      error: (CloudErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      jobSecretsType: (map['jobSecretsType'] as String).input(),
      podSecrets: map['podSecrets'] == null ? null : (pulumi.Input.decodeList<DataBoxSecretResponse>(map['podSecrets'], (value) => DataBoxSecretResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

