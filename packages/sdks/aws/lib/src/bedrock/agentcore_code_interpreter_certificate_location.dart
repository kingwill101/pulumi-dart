// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_code_interpreter_certificate_location_secrets_manager.dart';

class AgentcoreCodeInterpreterCertificateLocation {
  /// AWS Secrets Manager location of the certificate. See `secretsManager` below.
  final pulumi.Input<AgentcoreCodeInterpreterCertificateLocationSecretsManager?>? secretsManager;

  /// Creates a new [AgentcoreCodeInterpreterCertificateLocation].
  /// [secretsManager] AWS Secrets Manager location of the certificate. See `secretsManager` below.
  const AgentcoreCodeInterpreterCertificateLocation({
    this.secretsManager,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretsManager': ?pulumi.Input.mapOptionalInputValue<AgentcoreCodeInterpreterCertificateLocationSecretsManager, Map<String, dynamic>>(secretsManager, (value) => value.toMap()),
    };
  }

  factory AgentcoreCodeInterpreterCertificateLocation.fromMap(Map<String, dynamic> map) {
    return AgentcoreCodeInterpreterCertificateLocation(
      secretsManager: (() { final guardedValue = map['secretsManager']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreCodeInterpreterCertificateLocationSecretsManager.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
