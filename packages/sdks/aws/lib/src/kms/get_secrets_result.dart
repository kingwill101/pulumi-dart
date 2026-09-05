// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_secret.dart';

/// Result data returned by getSecrets.
class GetSecretsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Map containing each `secret` `name` as the key with its decrypted plaintext value
  final Map<String, String>? plaintext;
  final String? region;
  final List<GetSecretsSecret>? secrets;

  /// Creates a new [GetSecretsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [plaintext] Map containing each `secret` `name` as the key with its decrypted plaintext value
  /// [region] Optional.
  /// [secrets] Optional.
  const GetSecretsResult({
    this.id,
    this.plaintext,
    this.region,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'plaintext': ?plaintext,
      'region': ?region,
      'secrets': ?(() { final guardedValue = secrets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecretsSecret, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plaintext: (() { final guardedValue = map['plaintext']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecretsSecret>(guardedValue, (value) => GetSecretsSecret.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
