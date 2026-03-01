// ignore_for_file: unused_element, unnecessary_cast


/// Description of the shared access key.
class SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse {
  /// Name of the key.
  final String keyName;
  /// Primary SAS key value.
  final String? primaryKey;
  /// Rights that this key has.
  final String rights;
  /// Secondary SAS key value.
  final String? secondaryKey;

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
      keyName: map['keyName'] as String,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      rights: map['rights'] as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey'] as String,
    );
  }
}

