// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listDisasterRecoveryConfigKeys.
class ListDisasterRecoveryConfigKeysResult {
  /// Primary connection string of the alias if GEO DR is enabled
  final String? aliasPrimaryConnectionString;
  /// Secondary  connection string of the alias if GEO DR is enabled
  final String? aliasSecondaryConnectionString;
  /// A string that describes the AuthorizationRule.
  final String? keyName;
  /// Primary connection string of the created namespace AuthorizationRule.
  final String? primaryConnectionString;
  /// A base64-encoded 256-bit primary key for signing and validating the SAS token.
  final String? primaryKey;
  /// Secondary connection string of the created namespace AuthorizationRule.
  final String? secondaryConnectionString;
  /// A base64-encoded 256-bit primary key for signing and validating the SAS token.
  final String? secondaryKey;

  /// Creates a new [ListDisasterRecoveryConfigKeysResult].
  /// [aliasPrimaryConnectionString] Primary connection string of the alias if GEO DR is enabled
  /// [aliasSecondaryConnectionString] Secondary  connection string of the alias if GEO DR is enabled
  /// [keyName] A string that describes the AuthorizationRule.
  /// [primaryConnectionString] Primary connection string of the created namespace AuthorizationRule.
  /// [primaryKey] A base64-encoded 256-bit primary key for signing and validating the SAS token.
  /// [secondaryConnectionString] Secondary connection string of the created namespace AuthorizationRule.
  /// [secondaryKey] A base64-encoded 256-bit primary key for signing and validating the SAS token.
  const ListDisasterRecoveryConfigKeysResult({
    this.aliasPrimaryConnectionString,
    this.aliasSecondaryConnectionString,
    this.keyName,
    this.primaryConnectionString,
    this.primaryKey,
    this.secondaryConnectionString,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasPrimaryConnectionString': ?aliasPrimaryConnectionString,
      'aliasSecondaryConnectionString': ?aliasSecondaryConnectionString,
      'keyName': ?keyName,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryKey': ?primaryKey,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory ListDisasterRecoveryConfigKeysResult.fromMap(Map<String, dynamic> map) {
    return ListDisasterRecoveryConfigKeysResult(
      aliasPrimaryConnectionString: (() { final guardedValue = map['aliasPrimaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aliasSecondaryConnectionString: (() { final guardedValue = map['aliasSecondaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
