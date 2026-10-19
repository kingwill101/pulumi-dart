// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_secrets_manager_integration_timeouts.dart';

/// {@template pulumi_odb_autonomous_database_secrets_manager_integration_autonomous_database_secrets_manager_integration_args_doc}
/// The set of arguments for AutonomousDatabaseSecretsManagerIntegration.
/// {@endtemplate}
/// {@macro pulumi_odb_autonomous_database_secrets_manager_integration_autonomous_database_secrets_manager_integration_args_doc}
class AutonomousDatabaseSecretsManagerIntegrationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<AutonomousDatabaseSecretsManagerIntegrationTimeouts?>? timeouts;

  /// Creates a new [AutonomousDatabaseSecretsManagerIntegrationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const AutonomousDatabaseSecretsManagerIntegrationArgs({
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseSecretsManagerIntegrationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AutonomousDatabaseSecretsManagerIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseSecretsManagerIntegrationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseSecretsManagerIntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
