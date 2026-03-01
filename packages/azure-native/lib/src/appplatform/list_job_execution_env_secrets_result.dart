// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_response.dart';

/// Result data returned by listJobExecutionEnvSecrets.
class ListJobExecutionEnvSecretsResult {
  /// Collection of resources.
  final List<SecretResponse> value;

  /// Creates a new [ListJobExecutionEnvSecretsResult].
  /// [value] Collection of resources.
  ListJobExecutionEnvSecretsResult({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': pulumi.Input.encodeList<SecretResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListJobExecutionEnvSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListJobExecutionEnvSecretsResult(
      value: pulumi.Input.decodeList<SecretResponse>(map['value'], (value) => SecretResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

