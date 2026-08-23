// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_browser_certificate_location_secrets_manager.dart';

class AgentcoreBrowserCertificateLocation {
  /// AWS Secrets Manager location of the certificate. See `secretsManager` below.
  final pulumi.Input<AgentcoreBrowserCertificateLocationSecretsManager>? secretsManager;

  /// Creates a new [AgentcoreBrowserCertificateLocation].
  /// [secretsManager] AWS Secrets Manager location of the certificate. See `secretsManager` below.
  const AgentcoreBrowserCertificateLocation({
    this.secretsManager,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretsManager': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserCertificateLocationSecretsManager, Map<String, dynamic>>(secretsManager, (value) => value.toMap()),
    };
  }

  factory AgentcoreBrowserCertificateLocation.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserCertificateLocation(
      secretsManager: (() { final guardedValue = map['secretsManager']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreBrowserCertificateLocationSecretsManager.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
