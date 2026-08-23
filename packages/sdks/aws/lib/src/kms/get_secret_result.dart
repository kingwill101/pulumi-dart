// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_secret.dart';

/// Result data returned by getSecret.
class GetSecretResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final List<GetSecretSecret> secrets;

  /// Creates a new [GetSecretResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [secrets] Required.
  const GetSecretResult({
    required this.id,
    required this.region,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': region,
      'secrets': pulumi.Input.encodeList<GetSecretSecret, Map<String, dynamic>>(secrets, (value) => value.toMap()),
    };
  }

  factory GetSecretResult.fromMap(Map<String, dynamic> map) {
    return GetSecretResult(
      id: map['id'] as String,
      region: map['region'] as String,
      secrets: pulumi.Input.decodeList<GetSecretSecret>(map['secrets']!, (value) => GetSecretSecret.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
