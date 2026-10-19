// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_database_admin_password_source_customer_managed_aws_secret.dart';

class GetAutonomousDatabaseAdminPasswordSource {
  /// Customer-managed AWS Secrets Manager configuration.
  final pulumi.Input<List<GetAutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret>> customerManagedAwsSecrets;

  /// Creates a new [GetAutonomousDatabaseAdminPasswordSource].
  /// [customerManagedAwsSecrets] Customer-managed AWS Secrets Manager configuration.
  const GetAutonomousDatabaseAdminPasswordSource({
    required this.customerManagedAwsSecrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedAwsSecrets': pulumi.Input.mapInputValue<List<GetAutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret>, List<Map<String, dynamic>>>(customerManagedAwsSecrets, (value) => pulumi.Input.encodeList<GetAutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAutonomousDatabaseAdminPasswordSource.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseAdminPasswordSource(
      customerManagedAwsSecrets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret>(map['customerManagedAwsSecrets']!, (value) => GetAutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
