// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_secret.dart';

/// Result data returned by getSecret.
class GetSecretResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  final List<GetSecretSecret>? secrets;

  /// Creates a new [GetSecretResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [secrets] Optional.
  const GetSecretResult({
    this.id,
    this.region,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'region': ?region,
      'secrets': ?(() { final guardedValue = secrets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecretSecret, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSecretResult.fromMap(Map<String, dynamic> map) {
    return GetSecretResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecretSecret>(guardedValue, (value) => GetSecretSecret.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
