// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_secret.dart';

/// {@template pulumi_kms_get_secret_get_secret_args_doc}
/// Arguments for getSecret.
/// {@endtemplate}
/// {@macro pulumi_kms_get_secret_get_secret_args_doc}
class GetSecretArgs {
  final pulumi.Input<String>? region;
  final pulumi.Input<List<GetSecretSecret>> secrets;

  /// Creates a new [GetSecretArgs].
  /// [region] Optional.
  /// [secrets] Required.
  GetSecretArgs({
    String? region,
    required List<GetSecretSecret> secrets,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        secrets = pulumi.Input.asInput<List<GetSecretSecret>>(secrets);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secrets'] = pulumi.Input.mapInputValue<List<GetSecretSecret>,
            List<Map<String, dynamic>>>(
        secrets,
        (value) =>
            pulumi.Input.encodeList<GetSecretSecret, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory GetSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretArgs(
      region: map['region'] == null ? null : map['region'] as String,
      secrets: pulumi.Input.decodeList<GetSecretSecret>(
          map['secrets'],
          (value) =>
              GetSecretSecret.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
