// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_secrets_manager_integration_timeouts.dart';

/// Input properties used for looking up and filtering AutonomousDatabaseSecretsManagerIntegration resources.
class AutonomousDatabaseSecretsManagerIntegrationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the Oracle-managed service role that assumes the customer-managed IAM role.
  final pulumi.Input<String?>? roleArn;
  /// Current lifecycle status of the service role.
  final pulumi.Input<String?>? status;
  /// Additional lifecycle-status information, if available.
  final pulumi.Input<String?>? statusReason;
  final pulumi.Input<AutonomousDatabaseSecretsManagerIntegrationTimeouts?>? timeouts;

  /// Creates a new [AutonomousDatabaseSecretsManagerIntegrationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the Oracle-managed service role that assumes the customer-managed IAM role.
  /// [status] Current lifecycle status of the service role.
  /// [statusReason] Additional lifecycle-status information, if available.
  /// [timeouts] Optional.
  const AutonomousDatabaseSecretsManagerIntegrationState({
    this.region,
    this.roleArn,
    this.status,
    this.statusReason,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'roleArn': ?roleArn,
      'status': ?status,
      'statusReason': ?statusReason,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseSecretsManagerIntegrationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AutonomousDatabaseSecretsManagerIntegrationState.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseSecretsManagerIntegrationState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseSecretsManagerIntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
