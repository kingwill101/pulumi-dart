// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_secrets_secret/get_secrets_secret.dart';

/// Arguments for getSecrets.
class GetSecretsArgs {
  final Input<String>? region;

  /// One or more encrypted payload definitions from the KMS service. See the Secret Definitions below.
  final Input<List<GetSecretsSecret>> secrets;

  GetSecretsArgs({
    this.region,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secrets'] =
        Input.mapInputValue<List<GetSecretsSecret>, List<Map<String, dynamic>>>(
            secrets,
            (value) => Input.encodeList<GetSecretsSecret, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory GetSecretsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretsArgs(
      region: Input.asOptionalInput<String>(map['region']),
      secrets: Input.asInput<List<GetSecretsSecret>>(map['secrets']),
    );
  }
}
