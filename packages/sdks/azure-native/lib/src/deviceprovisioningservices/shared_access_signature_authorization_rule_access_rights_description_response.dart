// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of the shared access key.
class SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse {
  /// Name of the key.
  final pulumi.Input<String> keyName;
  /// Primary SAS key value.
  final pulumi.Input<String>? primaryKey;
  /// Rights that this key has.
  final pulumi.Input<String> rights;
  /// Secondary SAS key value.
  final pulumi.Input<String>? secondaryKey;

  /// Creates a new [SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse].
  /// [keyName] Name of the key.
  /// [primaryKey] Primary SAS key value.
  /// [rights] Rights that this key has.
  /// [secondaryKey] Secondary SAS key value.
  SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse({
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

  factory SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rights: pulumi.Input.fromValue(map['rights'] as String),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

