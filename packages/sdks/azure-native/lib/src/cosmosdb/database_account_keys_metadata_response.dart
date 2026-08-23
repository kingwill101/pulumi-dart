// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_key_metadata_response.dart';

/// The metadata related to each access key for the given Cosmos DB database account.
class DatabaseAccountKeysMetadataResponse {
  /// The metadata related to the Primary Read-Write Key for the given Cosmos DB database account.
  final pulumi.Input<AccountKeyMetadataResponse> primaryMasterKey;
  /// The metadata related to the Primary Read-Only Key for the given Cosmos DB database account.
  final pulumi.Input<AccountKeyMetadataResponse> primaryReadonlyMasterKey;
  /// The metadata related to the Secondary Read-Write Key for the given Cosmos DB database account.
  final pulumi.Input<AccountKeyMetadataResponse> secondaryMasterKey;
  /// The metadata related to the Secondary Read-Only Key for the given Cosmos DB database account.
  final pulumi.Input<AccountKeyMetadataResponse> secondaryReadonlyMasterKey;

  /// Creates a new [DatabaseAccountKeysMetadataResponse].
  /// [primaryMasterKey] The metadata related to the Primary Read-Write Key for the given Cosmos DB database account.
  /// [primaryReadonlyMasterKey] The metadata related to the Primary Read-Only Key for the given Cosmos DB database account.
  /// [secondaryMasterKey] The metadata related to the Secondary Read-Write Key for the given Cosmos DB database account.
  /// [secondaryReadonlyMasterKey] The metadata related to the Secondary Read-Only Key for the given Cosmos DB database account.
  const DatabaseAccountKeysMetadataResponse({
    required this.primaryMasterKey,
    required this.primaryReadonlyMasterKey,
    required this.secondaryMasterKey,
    required this.secondaryReadonlyMasterKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryMasterKey': pulumi.Input.mapInputValue<AccountKeyMetadataResponse, Map<String, dynamic>>(primaryMasterKey, (value) => value.toMap()),
      'primaryReadonlyMasterKey': pulumi.Input.mapInputValue<AccountKeyMetadataResponse, Map<String, dynamic>>(primaryReadonlyMasterKey, (value) => value.toMap()),
      'secondaryMasterKey': pulumi.Input.mapInputValue<AccountKeyMetadataResponse, Map<String, dynamic>>(secondaryMasterKey, (value) => value.toMap()),
      'secondaryReadonlyMasterKey': pulumi.Input.mapInputValue<AccountKeyMetadataResponse, Map<String, dynamic>>(secondaryReadonlyMasterKey, (value) => value.toMap()),
    };
  }

  factory DatabaseAccountKeysMetadataResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseAccountKeysMetadataResponse(
      primaryMasterKey: pulumi.Input.fromValue(AccountKeyMetadataResponse.fromMap((map['primaryMasterKey']! as Map).cast<String, dynamic>())),
      primaryReadonlyMasterKey: pulumi.Input.fromValue(AccountKeyMetadataResponse.fromMap((map['primaryReadonlyMasterKey']! as Map).cast<String, dynamic>())),
      secondaryMasterKey: pulumi.Input.fromValue(AccountKeyMetadataResponse.fromMap((map['secondaryMasterKey']! as Map).cast<String, dynamic>())),
      secondaryReadonlyMasterKey: pulumi.Input.fromValue(AccountKeyMetadataResponse.fromMap((map['secondaryReadonlyMasterKey']! as Map).cast<String, dynamic>())),
    );
  }
}
