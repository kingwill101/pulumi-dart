// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_secret.dart';

/// Result data returned by getSecrets.
class GetSecretsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Map containing each `secret` `name` as the key with its decrypted plaintext value
  final Map<String, String> plaintext;
  final String region;
  final List<GetSecretsSecret> secrets;

  /// Creates a new [GetSecretsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [plaintext] Map containing each `secret` `name` as the key with its decrypted plaintext value
  /// [region] Required.
  /// [secrets] Required.
  GetSecretsResult({
    required this.id,
    required this.plaintext,
    required this.region,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'plaintext': plaintext,
      'region': region,
      'secrets':
          pulumi.Input.encodeList<GetSecretsSecret, Map<String, dynamic>>(
            secrets,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsResult(
      id: map['id'] as String,
      plaintext: (map['plaintext'] as Map).cast<String, String>(),
      region: map['region'] as String,
      secrets: pulumi.Input.decodeList<GetSecretsSecret>(
        map['secrets']!,
        (value) =>
            GetSecretsSecret.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
