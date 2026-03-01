// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_get_private_store_collection_args_doc}
/// Arguments for getPrivateStoreCollection.
/// {@endtemplate}
/// {@macro pulumi_marketplace_get_private_store_collection_args_doc}
class GetPrivateStoreCollectionArgs {
  /// The collection ID
  final pulumi.Input<String> collectionId;
  /// The store ID - must use the tenant ID
  final pulumi.Input<String> privateStoreId;

  /// Creates a new [GetPrivateStoreCollectionArgs].
  /// [collectionId] The collection ID
  /// [privateStoreId] The store ID - must use the tenant ID
  GetPrivateStoreCollectionArgs({
    required String collectionId,
    required String privateStoreId,
  }) :
      collectionId = pulumi.Input.asInput<String>(collectionId),
      privateStoreId = pulumi.Input.asInput<String>(privateStoreId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'privateStoreId': privateStoreId,
    };
  }

  factory GetPrivateStoreCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateStoreCollectionArgs(
      collectionId: map['collectionId'] as String,
      privateStoreId: map['privateStoreId'] as String,
    );
  }
}

