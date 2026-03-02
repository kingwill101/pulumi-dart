// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of the shared access key.
class SharedAccessSignatureAuthorizationRuleAccessRightsDescription {
  /// Name of the key.
  final pulumi.Input<String> keyName;
  /// Primary SAS key value.
  final pulumi.Input<String>? primaryKey;
  /// Rights that this key has.
  final pulumi.Input<String> rights;
  /// Secondary SAS key value.
  final pulumi.Input<String>? secondaryKey;

  /// Creates a new [SharedAccessSignatureAuthorizationRuleAccessRightsDescription].
  /// [keyName] Name of the key.
  /// [primaryKey] Primary SAS key value.
  /// [rights] Rights that this key has.
  /// [secondaryKey] Secondary SAS key value.
  SharedAccessSignatureAuthorizationRuleAccessRightsDescription({
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

  factory SharedAccessSignatureAuthorizationRuleAccessRightsDescription.fromMap(Map<String, dynamic> map) {
    return SharedAccessSignatureAuthorizationRuleAccessRightsDescription(
      keyName: (map['keyName'] as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey'] as String).input(),
      rights: (map['rights'] as String).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey'] as String).input(),
    );
  }
}

