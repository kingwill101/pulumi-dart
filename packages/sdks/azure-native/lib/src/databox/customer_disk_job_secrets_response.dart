// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_error_response.dart';
import 'dc_access_security_code_response.dart';
import 'disk_secret_response.dart';

/// The secrets related to customer disk job.
class CustomerDiskJobSecretsResponse {
  /// Carrier Account Number of the customer
  final pulumi.Input<String> carrierAccountNumber;
  /// Dc Access Security Code for Customer Managed Shipping
  final pulumi.Input<DcAccessSecurityCodeResponse> dcAccessSecurityCode;
  /// Contains the list of secrets object for that device.
  final pulumi.Input<List<DiskSecretResponse>> diskSecrets;
  /// Error while fetching the secrets.
  final pulumi.Input<CloudErrorResponse> error;
  /// Used to indicate what type of job secrets object.
  /// Expected value is 'DataBoxCustomerDisk'.
  final pulumi.Input<String> jobSecretsType;

  /// Creates a new [CustomerDiskJobSecretsResponse].
  /// [carrierAccountNumber] Carrier Account Number of the customer
  /// [dcAccessSecurityCode] Dc Access Security Code for Customer Managed Shipping
  /// [diskSecrets] Contains the list of secrets object for that device.
  /// [error] Error while fetching the secrets.
  /// [jobSecretsType] Used to indicate what type of job secrets object.
  const CustomerDiskJobSecretsResponse({
    required this.carrierAccountNumber,
    required this.dcAccessSecurityCode,
    required this.diskSecrets,
    required this.error,
    required this.jobSecretsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierAccountNumber': carrierAccountNumber,
      'dcAccessSecurityCode': pulumi.Input.mapInputValue<DcAccessSecurityCodeResponse, Map<String, dynamic>>(dcAccessSecurityCode, (value) => value.toMap()),
      'diskSecrets': pulumi.Input.mapInputValue<List<DiskSecretResponse>, List<Map<String, dynamic>>>(diskSecrets, (value) => pulumi.Input.encodeList<DiskSecretResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'error': pulumi.Input.mapInputValue<CloudErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'jobSecretsType': jobSecretsType,
    };
  }

  factory CustomerDiskJobSecretsResponse.fromMap(Map<String, dynamic> map) {
    return CustomerDiskJobSecretsResponse(
      carrierAccountNumber: pulumi.Input.fromValue(map['carrierAccountNumber'] as String),
      dcAccessSecurityCode: pulumi.Input.fromValue(DcAccessSecurityCodeResponse.fromMap((map['dcAccessSecurityCode']! as Map).cast<String, dynamic>())),
      diskSecrets: pulumi.Input.fromValue(pulumi.Input.decodeList<DiskSecretResponse>(map['diskSecrets']!, (value) => DiskSecretResponse.fromMap((value as Map).cast<String, dynamic>()))),
      error: pulumi.Input.fromValue(CloudErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      jobSecretsType: pulumi.Input.fromValue(map['jobSecretsType'] as String),
    );
  }
}
