// ignore_for_file: unused_element, unnecessary_cast

import 'account_key_metadata_response.dart';

/// The metadata related to each access key for the given Cosmos DB database account.
class DatabaseAccountKeysMetadataResponse {
  /// The metadata related to the Primary Read-Write Key for the given Cosmos DB database account.
  final AccountKeyMetadataResponse primaryMasterKey;
  /// The metadata related to the Primary Read-Only Key for the given Cosmos DB database account.
  final AccountKeyMetadataResponse primaryReadonlyMasterKey;
  /// The metadata related to the Secondary Read-Write Key for the given Cosmos DB database account.
  final AccountKeyMetadataResponse secondaryMasterKey;
  /// The metadata related to the Secondary Read-Only Key for the given Cosmos DB database account.
  final AccountKeyMetadataResponse secondaryReadonlyMasterKey;

  /// Creates a new [DatabaseAccountKeysMetadataResponse].
  /// [primaryMasterKey] The metadata related to the Primary Read-Write Key for the given Cosmos DB database account.
  /// [primaryReadonlyMasterKey] The metadata related to the Primary Read-Only Key for the given Cosmos DB database account.
  /// [secondaryMasterKey] The metadata related to the Secondary Read-Write Key for the given Cosmos DB database account.
  /// [secondaryReadonlyMasterKey] The metadata related to the Secondary Read-Only Key for the given Cosmos DB database account.
  DatabaseAccountKeysMetadataResponse({
    required this.primaryMasterKey,
    required this.primaryReadonlyMasterKey,
    required this.secondaryMasterKey,
    required this.secondaryReadonlyMasterKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryMasterKey': primaryMasterKey.toMap(),
      'primaryReadonlyMasterKey': primaryReadonlyMasterKey.toMap(),
      'secondaryMasterKey': secondaryMasterKey.toMap(),
      'secondaryReadonlyMasterKey': secondaryReadonlyMasterKey.toMap(),
    };
  }

  factory DatabaseAccountKeysMetadataResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseAccountKeysMetadataResponse(
      primaryMasterKey: AccountKeyMetadataResponse.fromMap((map['primaryMasterKey'] as Map).cast<String, dynamic>()),
      primaryReadonlyMasterKey: AccountKeyMetadataResponse.fromMap((map['primaryReadonlyMasterKey'] as Map).cast<String, dynamic>()),
      secondaryMasterKey: AccountKeyMetadataResponse.fromMap((map['secondaryMasterKey'] as Map).cast<String, dynamic>()),
      secondaryReadonlyMasterKey: AccountKeyMetadataResponse.fromMap((map['secondaryReadonlyMasterKey'] as Map).cast<String, dynamic>()),
    );
  }
}

