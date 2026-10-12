// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_admin_password_source_customer_managed_aws_secret.dart';

class AutonomousDatabaseAdminPasswordSource {
  final pulumi.Input<AutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret?>? customerManagedAwsSecret;

  /// Creates a new [AutonomousDatabaseAdminPasswordSource].
  /// [customerManagedAwsSecret] Optional.
  const AutonomousDatabaseAdminPasswordSource({
    this.customerManagedAwsSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedAwsSecret': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret, Map<String, dynamic>>(customerManagedAwsSecret, (value) => value.toMap()),
    };
  }

  factory AutonomousDatabaseAdminPasswordSource.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseAdminPasswordSource(
      customerManagedAwsSecret: (() { final guardedValue = map['customerManagedAwsSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
