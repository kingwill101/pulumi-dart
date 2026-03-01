// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listNamespaceKeys.
class ListNamespaceKeysResult {
  /// Primary connection string of the alias if GEO DR is enabled
  final String aliasPrimaryConnectionString;
  /// Secondary  connection string of the alias if GEO DR is enabled
  final String aliasSecondaryConnectionString;
  /// A string that describes the AuthorizationRule.
  final String keyName;
  /// Primary connection string of the created namespace AuthorizationRule.
  final String primaryConnectionString;
  /// A base64-encoded 256-bit primary key for signing and validating the SAS token.
  final String primaryKey;
  /// Secondary connection string of the created namespace AuthorizationRule.
  final String secondaryConnectionString;
  /// A base64-encoded 256-bit primary key for signing and validating the SAS token.
  final String secondaryKey;

  /// Creates a new [ListNamespaceKeysResult].
  /// [aliasPrimaryConnectionString] Primary connection string of the alias if GEO DR is enabled
  /// [aliasSecondaryConnectionString] Secondary  connection string of the alias if GEO DR is enabled
  /// [keyName] A string that describes the AuthorizationRule.
  /// [primaryConnectionString] Primary connection string of the created namespace AuthorizationRule.
  /// [primaryKey] A base64-encoded 256-bit primary key for signing and validating the SAS token.
  /// [secondaryConnectionString] Secondary connection string of the created namespace AuthorizationRule.
  /// [secondaryKey] A base64-encoded 256-bit primary key for signing and validating the SAS token.
  ListNamespaceKeysResult({
    required this.aliasPrimaryConnectionString,
    required this.aliasSecondaryConnectionString,
    required this.keyName,
    required this.primaryConnectionString,
    required this.primaryKey,
    required this.secondaryConnectionString,
    required this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasPrimaryConnectionString': aliasPrimaryConnectionString,
      'aliasSecondaryConnectionString': aliasSecondaryConnectionString,
      'keyName': keyName,
      'primaryConnectionString': primaryConnectionString,
      'primaryKey': primaryKey,
      'secondaryConnectionString': secondaryConnectionString,
      'secondaryKey': secondaryKey,
    };
  }

  factory ListNamespaceKeysResult.fromMap(Map<String, dynamic> map) {
    return ListNamespaceKeysResult(
      aliasPrimaryConnectionString: map['aliasPrimaryConnectionString'] as String,
      aliasSecondaryConnectionString: map['aliasSecondaryConnectionString'] as String,
      keyName: map['keyName'] as String,
      primaryConnectionString: map['primaryConnectionString'] as String,
      primaryKey: map['primaryKey'] as String,
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      secondaryKey: map['secondaryKey'] as String,
    );
  }
}

