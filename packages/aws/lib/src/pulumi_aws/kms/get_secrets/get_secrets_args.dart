// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_secrets_secret/get_secrets_secret.dart';

/// Arguments for getSecrets.
class GetSecretsArgs {
  final pulumi.Input<String>? region;

  /// One or more encrypted payload definitions from the KMS service. See the Secret Definitions below.
  final pulumi.Input<List<GetSecretsSecret>> secrets;

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
    map['secrets'] = pulumi.Input.mapInputValue<List<GetSecretsSecret>,
            List<Map<String, dynamic>>>(
        secrets,
        (value) =>
            pulumi.Input.encodeList<GetSecretsSecret, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory GetSecretsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretsArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      secrets: pulumi.Input.asInput<List<GetSecretsSecret>>(map['secrets']),
    );
  }
}
