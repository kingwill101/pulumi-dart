// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dapr component Secret for ListSecrets Action
class DaprSecretResponse {
  /// Secret Name.
  final pulumi.Input<String> name;
  /// Secret Value.
  final pulumi.Input<String> value;

  /// Creates a new [DaprSecretResponse].
  /// [name] Secret Name.
  /// [value] Secret Value.
  const DaprSecretResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DaprSecretResponse.fromMap(Map<String, dynamic> map) {
    return DaprSecretResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

