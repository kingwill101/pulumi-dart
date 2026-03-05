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
    this.region,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'secrets': pulumi.Input.mapInputValue<List<GetSecretSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<GetSecretSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secrets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecretSecret>(map['secrets']!, (value) => GetSecretSecret.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

