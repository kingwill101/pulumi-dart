// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Secret definition.
class SecretResponse {
  /// Secret Name.
  final pulumi.Input<String?>? name;

  /// Creates a new [SecretResponse].
  /// [name] Secret Name.
  const SecretResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SecretResponse.fromMap(Map<String, dynamic> map) {
    return SecretResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
