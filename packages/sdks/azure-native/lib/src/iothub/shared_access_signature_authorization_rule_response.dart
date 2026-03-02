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
      keyName: (map['keyName'] as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey'] as String).input(),
      rights: (map['rights'] as String).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey'] as String).input(),
    );
  }
}

