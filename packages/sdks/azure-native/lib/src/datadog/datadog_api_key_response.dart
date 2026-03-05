// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatadogApiKeyResponse {
  /// The time of creation of the API key.
  final pulumi.Input<String>? created;
  /// The user that created the API key.
  final pulumi.Input<String>? createdBy;
  /// The value of the API key.
  final pulumi.Input<String> key;
  /// The name of the API key.
  final pulumi.Input<String>? name;

  /// Creates a new [DatadogApiKeyResponse].
  /// [created] The time of creation of the API key.
  /// [createdBy] The user that created the API key.
  /// [key] The value of the API key.
  /// [name] The name of the API key.
  DatadogApiKeyResponse({
    this.created,
    this.createdBy,
    required this.key,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'createdBy': ?createdBy,
      'key': key,
      'name': ?name,
    };
  }

  factory DatadogApiKeyResponse.fromMap(Map<String, dynamic> map) {
    return DatadogApiKeyResponse(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

