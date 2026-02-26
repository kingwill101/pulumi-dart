// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_secret_secret/get_secret_secret.dart';

/// Arguments for getSecret.
class GetSecretArgs {
  final Input<String>? region;
  final Input<List<GetSecretSecret>> secrets;

  GetSecretArgs({
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
        Input.mapInputValue<List<GetSecretSecret>, List<Map<String, dynamic>>>(
            secrets,
            (value) => Input.encodeList<GetSecretSecret, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory GetSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretArgs(
      region: Input.asOptionalInput<String>(map['region']),
      secrets: Input.asInput<List<GetSecretSecret>>(map['secrets']),
    );
  }
}
