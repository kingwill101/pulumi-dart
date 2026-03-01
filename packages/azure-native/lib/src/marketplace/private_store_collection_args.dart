// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_private_store_collection_args_doc}
/// The set of arguments for PrivateStoreCollection.
/// {@endtemplate}
/// {@macro pulumi_marketplace_private_store_collection_args_doc}
class PrivateStoreCollectionArgs {
  /// Indicating whether all subscriptions are selected (=true) or not (=false).
  final pulumi.Input<bool>? allSubscriptions;
  /// Gets or sets the association with Commercial's Billing Account.
  final pulumi.Input<String>? claim;
  /// The collection ID
  final pulumi.Input<String>? collectionId;
  /// Gets or sets collection name.
  final pulumi.Input<String>? collectionName;
  /// Indicating whether the collection is enabled or disabled.
  final pulumi.Input<bool>? enabled;
  /// The store ID - must use the tenant ID
  final pulumi.Input<String> privateStoreId;
  /// Gets or sets subscription ids list. Empty list indicates all subscriptions are selected, null indicates no update is done, explicit list indicates the explicit selected subscriptions. On insert, null is considered as bad request
  final pulumi.Input<List<String>>? subscriptionsList;

  /// Creates a new [PrivateStoreCollectionArgs].
  /// [allSubscriptions] Indicating whether all subscriptions are selected (=true) or not (=false).
  /// [claim] Gets or sets the association with Commercial's Billing Account.
  /// [collectionId] The collection ID
  /// [collectionName] Gets or sets collection name.
  /// [enabled] Indicating whether the collection is enabled or disabled.
  /// [privateStoreId] The store ID - must use the tenant ID
  /// [subscriptionsList] Gets or sets subscription ids list. Empty list indicates all subscriptions are selected, null indicates no update is done, explicit list indicates the explicit selected subscriptions. On insert, null is considered as bad request
  PrivateStoreCollectionArgs({
    bool? allSubscriptions,
    String? claim,
    String? collectionId,
    String? collectionName,
    bool? enabled,
    required String privateStoreId,
    List<String>? subscriptionsList,
  }) :
      allSubscriptions = pulumi.Input.asOptionalInput<bool>(allSubscriptions),
      claim = pulumi.Input.asOptionalInput<String>(claim),
      collectionId = pulumi.Input.asOptionalInput<String>(collectionId),
      collectionName = pulumi.Input.asOptionalInput<String>(collectionName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      privateStoreId = pulumi.Input.asInput<String>(privateStoreId),
      subscriptionsList = pulumi.Input.asOptionalInput<List<String>>(subscriptionsList);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allSubscriptions': ?allSubscriptions,
      'claim': ?claim,
      'collectionId': ?collectionId,
      'collectionName': ?collectionName,
      'enabled': ?enabled,
      'privateStoreId': privateStoreId,
      'subscriptionsList': ?subscriptionsList,
    };
  }

  factory PrivateStoreCollectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateStoreCollectionArgs(
      allSubscriptions: map['allSubscriptions'] == null ? null : map['allSubscriptions'] as bool,
      claim: map['claim'] == null ? null : map['claim'] as String,
      collectionId: map['collectionId'] == null ? null : map['collectionId'] as String,
      collectionName: map['collectionName'] == null ? null : map['collectionName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      privateStoreId: map['privateStoreId'] as String,
      subscriptionsList: map['subscriptionsList'] == null ? null : (map['subscriptionsList'] as List).cast<String>(),
    );
  }
}

