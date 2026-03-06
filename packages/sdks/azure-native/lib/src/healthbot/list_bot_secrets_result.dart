// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_bot_key_response.dart';

/// Result data returned by listBotSecrets.
class ListBotSecretsResult {
  /// Array of Azure Health Bot Secrets.
  final List<HealthBotKeyResponse>? secrets;

  /// Creates a new [ListBotSecretsResult].
  /// [secrets] Array of Azure Health Bot Secrets.
  const ListBotSecretsResult({
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secrets': ?(() { final guardedValue = secrets; if (guardedValue == null) return null; return pulumi.Input.encodeList<HealthBotKeyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListBotSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListBotSecretsResult(
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<HealthBotKeyResponse>(guardedValue, (value) => HealthBotKeyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

