// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_secret.dart';

/// {@template pulumi_kms_get_secrets_get_secrets_args_doc}
/// Arguments for getSecrets.
/// {@endtemplate}
/// {@macro pulumi_kms_get_secrets_get_secrets_args_doc}
class GetSecretsArgs {
  final pulumi.Input<String>? region;
  /// One or more encrypted payload definitions from the KMS service. See the Secret Definitions below.
  final pulumi.Input<List<GetSecretsSecret>> secrets;

  /// Creates a new [GetSecretsArgs].
  /// [region] Optional.
  /// [secrets] One or more encrypted payload definitions from the KMS service. See the Secret Definitions below.
  GetSecretsArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<List<GetSecretsSecret>> secrets,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      secrets = pulumi.Input.asInput<List<GetSecretsSecret>>(secrets);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'secrets': pulumi.Input.mapInputValue<List<GetSecretsSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<GetSecretsSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSecretsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretsArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secrets: pulumi.Output.create<List<GetSecretsSecret>>(pulumi.Input.decodeList<GetSecretsSecret>(map['secrets'], (value) => GetSecretsSecret.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

