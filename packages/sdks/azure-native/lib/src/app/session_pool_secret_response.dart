// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Secret definition.
class SessionPoolSecretResponse {
  /// Secret Name.
  final pulumi.Input<String>? name;

  /// Creates a new [SessionPoolSecretResponse].
  /// [name] Secret Name.
  SessionPoolSecretResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SessionPoolSecretResponse.fromMap(Map<String, dynamic> map) {
    return SessionPoolSecretResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

