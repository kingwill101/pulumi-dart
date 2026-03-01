// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_error_response.dart';
import 'dc_access_security_code_response.dart';
import 'disk_secret_response.dart';

/// The secrets related to customer disk job.
class CustomerDiskJobSecretsResponse {
  /// Carrier Account Number of the customer
  final String carrierAccountNumber;
  /// Dc Access Security Code for Customer Managed Shipping
  final DcAccessSecurityCodeResponse dcAccessSecurityCode;
  /// Contains the list of secrets object for that device.
  final List<DiskSecretResponse> diskSecrets;
  /// Error while fetching the secrets.
  final CloudErrorResponse error;
  /// Used to indicate what type of job secrets object.
  /// Expected value is 'DataBoxCustomerDisk'.
  final String jobSecretsType;

  /// Creates a new [CustomerDiskJobSecretsResponse].
  /// [carrierAccountNumber] Carrier Account Number of the customer
  /// [dcAccessSecurityCode] Dc Access Security Code for Customer Managed Shipping
  /// [diskSecrets] Contains the list of secrets object for that device.
  /// [error] Error while fetching the secrets.
  /// [jobSecretsType] Used to indicate what type of job secrets object.
  CustomerDiskJobSecretsResponse({
    required this.carrierAccountNumber,
    required this.dcAccessSecurityCode,
    required this.diskSecrets,
    required this.error,
    required this.jobSecretsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierAccountNumber': carrierAccountNumber,
      'dcAccessSecurityCode': dcAccessSecurityCode.toMap(),
      'diskSecrets': pulumi.Input.encodeList<DiskSecretResponse, Map<String, dynamic>>(diskSecrets, (value) => value.toMap()),
      'error': error.toMap(),
      'jobSecretsType': jobSecretsType,
    };
  }

  factory CustomerDiskJobSecretsResponse.fromMap(Map<String, dynamic> map) {
    return CustomerDiskJobSecretsResponse(
      carrierAccountNumber: map['carrierAccountNumber'] as String,
      dcAccessSecurityCode: DcAccessSecurityCodeResponse.fromMap((map['dcAccessSecurityCode'] as Map).cast<String, dynamic>()),
      diskSecrets: pulumi.Input.decodeList<DiskSecretResponse>(map['diskSecrets'], (value) => DiskSecretResponse.fromMap((value as Map).cast<String, dynamic>())),
      error: CloudErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      jobSecretsType: map['jobSecretsType'] as String,
    );
  }
}

