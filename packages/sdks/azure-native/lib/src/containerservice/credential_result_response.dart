// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The credential result response.
class CredentialResultResponse {
  /// The name of the credential.
  final pulumi.Input<String> name;
  /// Base64-encoded Kubernetes configuration file.
  final pulumi.Input<String> value;

  /// Creates a new [CredentialResultResponse].
  /// [name] The name of the credential.
  /// [value] Base64-encoded Kubernetes configuration file.
  CredentialResultResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory CredentialResultResponse.fromMap(Map<String, dynamic> map) {
    return CredentialResultResponse(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

