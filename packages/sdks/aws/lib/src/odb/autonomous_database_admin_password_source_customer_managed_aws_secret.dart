// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret {
  /// OCI identifier type used as the external ID when OCI assumes the customer-managed IAM role. Valid values are `databaseOcid`, `compartmentOcid`, and `tenantOcid`.
  final pulumi.Input<String> externalIdType;
  /// ARN of the customer-managed IAM role OCI assumes to retrieve the secret. Its trust policy must allow the Oracle-managed service role to assume it.
  final pulumi.Input<String> iamRoleArn;
  /// ARN of the AWS Secrets Manager secret containing the ADMIN password.
  final pulumi.Input<String> secretArn;

  /// Creates a new [AutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret].
  /// [externalIdType] OCI identifier type used as the external ID when OCI assumes the customer-managed IAM role. Valid values are `databaseOcid`, `compartmentOcid`, and `tenantOcid`.
  /// [iamRoleArn] ARN of the customer-managed IAM role OCI assumes to retrieve the secret. Its trust policy must allow the Oracle-managed service role to assume it.
  /// [secretArn] ARN of the AWS Secrets Manager secret containing the ADMIN password.
  const AutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret({
    required this.externalIdType,
    required this.iamRoleArn,
    required this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIdType': externalIdType,
      'iamRoleArn': iamRoleArn,
      'secretArn': secretArn,
    };
  }

  factory AutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret(
      externalIdType: pulumi.Input.fromValue(map['externalIdType'] as String),
      iamRoleArn: pulumi.Input.fromValue(map['iamRoleArn'] as String),
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
    );
  }
}
