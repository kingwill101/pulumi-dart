// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of an IoT hub shared access policy.
class SharedAccessSignatureAuthorizationRuleResponse {
  /// The name of the shared access policy.
  final pulumi.Input<String> keyName;
  /// The primary key.
  final pulumi.Input<String>? primaryKey;
  /// The permissions assigned to the shared access policy.
  final pulumi.Input<String> rights;
  /// The secondary key.
  final pulumi.Input<String>? secondaryKey;

  /// Creates a new [SharedAccessSignatureAuthorizationRuleResponse].
  /// [keyName] The name of the shared access policy.
  /// [primaryKey] The primary key.
  /// [rights] The permissions assigned to the shared access policy.
  /// [secondaryKey] The secondary key.
  SharedAccessSignatureAuthorizationRuleResponse({
    required this.keyName,
    this.primaryKey,
    required this.rights,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'primaryKey': ?primaryKey,
      'rights': rights,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory SharedAccessSignatureAuthorizationRuleResponse.fromMap(Map<String, dynamic> map) {
    return SharedAccessSignatureAuthorizationRuleResponse(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rights: pulumi.Input.fromValue(map['rights'] as String),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

