// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secrets_manager_secret.dart';

class EnvironmentVariable {
  /// An existing Secrets Manager secret. Cannot be combined with `value` or `ssmParameterArn`. AWSX
  /// grants retrieval permissions but does not modify or retain the supplied secret.
  ///
  /// For more information, see [Secrets Manager environment
  /// variables](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/secrets-envvar-secrets-manager.html).
  final pulumi.Input<SecretsManagerSecret?>? secretsManager;
  /// An existing SSM Parameter Store parameter ARN. Cannot be combined with `value` or
  /// `secretsManager`. AWSX grants retrieval permissions but does not modify or retain the
  /// parameter.
  ///
  /// For more information, see [SSM Parameter Store environment
  /// variables](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/secrets-envvar-ssm-paramstore.html).
  final pulumi.Input<String?>? ssmParameterArn;
  /// The value passed to the container.
  ///
  /// Pulumi secret-marked values are stored in an AWSX-created Secrets Manager secret and referenced
  /// by version ID. Changing the value registers a new task-definition revision and deploys services
  /// consuming that revision.
  ///
  /// AWSX retains managed secrets, versions and retrieval permissions when this entry is removed.
  /// Retained resources require manual cleanup and continue to incur charges. AWS may
  /// garbage-collect old unlabeled versions after its version limit is exceeded.
  ///
  /// Default - Use the explicit SSM or Secrets Manager source instead.
  final pulumi.Input<String?>? value;

  /// Creates a new [EnvironmentVariable].
  /// [secretsManager] An existing Secrets Manager secret. Cannot be combined with `value` or `ssmParameterArn`. AWSX
  /// [ssmParameterArn] An existing SSM Parameter Store parameter ARN. Cannot be combined with `value` or
  /// [value] The value passed to the container.
  const EnvironmentVariable({
    this.secretsManager,
    this.ssmParameterArn,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretsManager': ?pulumi.Input.mapOptionalInputValue<SecretsManagerSecret, Map<String, dynamic>>(secretsManager, (value) => value.toMap()),
      'ssmParameterArn': ?ssmParameterArn,
      'value': ?value,
    };
  }

  factory EnvironmentVariable.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariable(
      secretsManager: (() { final guardedValue = map['secretsManager']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretsManagerSecret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssmParameterArn: (() { final guardedValue = map['ssmParameterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
