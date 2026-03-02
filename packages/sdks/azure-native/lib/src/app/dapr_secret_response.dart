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
  DaprSecretResponse({
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
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

