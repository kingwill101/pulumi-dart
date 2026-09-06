// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_app_secret_response.dart';

/// Result data returned by listContainerAppSecrets.
class ListContainerAppSecretsResult {
  /// Collection of resources.
  final List<ContainerAppSecretResponse>? value;

  /// Creates a new [ListContainerAppSecretsResult].
  /// [value] Collection of resources.
  const ListContainerAppSecretsResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ContainerAppSecretResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListContainerAppSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListContainerAppSecretsResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerAppSecretResponse>(guardedValue, (value) => ContainerAppSecretResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
