// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inline_secret_response.dart';
import 'secret_manager_secret_response.dart';

/// Secrets and secret environment variables.
class SecretsResponse {
  /// Secrets encrypted with KMS key and the associated secret environment variable.
  final List<InlineSecretResponse> inline;

  /// Secrets in Secret Manager and associated secret environment variable.
  final List<SecretManagerSecretResponse> secretManager;

  SecretsResponse({
    required this.inline,
    required this.secretManager,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inline'] =
        pulumi.Input.encodeList<InlineSecretResponse, Map<String, dynamic>>(
            inline, (value) => value.toMap());
    map['secretManager'] = pulumi.Input.encodeList<SecretManagerSecretResponse,
        Map<String, dynamic>>(secretManager, (value) => value.toMap());
    return map;
  }

  factory SecretsResponse.fromMap(Map<String, dynamic> map) {
    return SecretsResponse(
      inline: pulumi.Input.decodeList<InlineSecretResponse>(
          map['inline'],
          (value) => InlineSecretResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      secretManager: pulumi.Input.decodeList<SecretManagerSecretResponse>(
          map['secretManager'],
          (value) => SecretManagerSecretResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
