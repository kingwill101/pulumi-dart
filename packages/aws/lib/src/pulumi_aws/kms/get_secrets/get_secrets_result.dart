// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_secrets_secret/get_secrets_secret.dart';

/// Result data returned by getSecrets.
class GetSecretsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Map containing each <span pulumi-lang-nodejs="`secret`" pulumi-lang-dotnet="`Secret`" pulumi-lang-go="`secret`" pulumi-lang-python="`secret`" pulumi-lang-yaml="`secret`" pulumi-lang-java="`secret`">`secret`</span> <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> as the key with its decrypted plaintext value
  final Map<String, String> plaintext;
  final String region;
  final List<GetSecretsSecret> secrets;

  GetSecretsResult({
    required this.id,
    required this.plaintext,
    required this.region,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['plaintext'] = plaintext;
    map['region'] = region;
    map['secrets'] = Input.encodeList<GetSecretsSecret, Map<String, dynamic>>(
        secrets, (value) => value.toMap());
    return map;
  }

  factory GetSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsResult(
      id: map['id'] as String,
      plaintext: (map['plaintext'] as Map).cast<String, String>(),
      region: map['region'] as String,
      secrets: Input.decodeList<GetSecretsSecret>(
          map['secrets'],
          (value) =>
              GetSecretsSecret.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
