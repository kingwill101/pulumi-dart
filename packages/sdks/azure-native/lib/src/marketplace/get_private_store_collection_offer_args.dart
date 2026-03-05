// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_get_private_store_collection_offer_args_doc}
/// Arguments for getPrivateStoreCollectionOffer.
/// {@endtemplate}
/// {@macro pulumi_marketplace_get_private_store_collection_offer_args_doc}
class GetPrivateStoreCollectionOfferArgs {
  /// The collection ID
  final pulumi.Input<String> collectionId;
  /// The offer ID to update or delete
  final pulumi.Input<String> offerId;
  /// The store ID - must use the tenant ID
  final pulumi.Input<String> privateStoreId;

  /// Creates a new [GetPrivateStoreCollectionOfferArgs].
  /// [collectionId] The collection ID
  /// [offerId] The offer ID to update or delete
  /// [privateStoreId] The store ID - must use the tenant ID
  GetPrivateStoreCollectionOfferArgs({
    required this.collectionId,
    required this.offerId,
    required this.privateStoreId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'offerId': offerId,
      'privateStoreId': privateStoreId,
    };
  }

  factory GetPrivateStoreCollectionOfferArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateStoreCollectionOfferArgs(
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      offerId: pulumi.Input.fromValue(map['offerId'] as String),
      privateStoreId: pulumi.Input.fromValue(map['privateStoreId'] as String),
    );
  }
}

