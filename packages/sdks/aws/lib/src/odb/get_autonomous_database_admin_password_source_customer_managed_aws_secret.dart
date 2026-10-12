// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret {
  /// OCI identifier type used as the external ID when OCI assumes the customer-managed IAM role.
  final pulumi.Input<String> externalIdType;
  /// ARN of the customer-managed IAM role OCI assumes to retrieve the secret.
  final pulumi.Input<String> iamRoleArn;
  /// ARN of the AWS Secrets Manager secret containing the ADMIN password.
  final pulumi.Input<String> secretArn;

  /// Creates a new [GetAutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret].
  /// [externalIdType] OCI identifier type used as the external ID when OCI assumes the customer-managed IAM role.
  /// [iamRoleArn] ARN of the customer-managed IAM role OCI assumes to retrieve the secret.
  /// [secretArn] ARN of the AWS Secrets Manager secret containing the ADMIN password.
  const GetAutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret({
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

  factory GetAutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret(
      externalIdType: pulumi.Input.fromValue(map['externalIdType'] as String),
      iamRoleArn: pulumi.Input.fromValue(map['iamRoleArn'] as String),
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
    );
  }
}
