// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_bot_key_response.dart';

/// Result data returned by listBotSecrets.
class ListBotSecretsResult {
  /// Array of Azure Health Bot Secrets.
  final List<HealthBotKeyResponse>? secrets;

  /// Creates a new [ListBotSecretsResult].
  /// [secrets] Array of Azure Health Bot Secrets.
  ListBotSecretsResult({
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<HealthBotKeyResponse, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
    };
  }

  factory ListBotSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListBotSecretsResult(
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<HealthBotKeyResponse>(map['secrets'], (value) => HealthBotKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

