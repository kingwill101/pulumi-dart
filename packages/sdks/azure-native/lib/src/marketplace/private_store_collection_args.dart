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
  const PrivateStoreCollectionArgs({
    this.allSubscriptions,
    this.claim,
    this.collectionId,
    this.collectionName,
    this.enabled,
    required this.privateStoreId,
    this.subscriptionsList,
  });

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
      allSubscriptions: (() { final guardedValue = map['allSubscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      claim: (() { final guardedValue = map['claim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collectionId: (() { final guardedValue = map['collectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collectionName: (() { final guardedValue = map['collectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateStoreId: pulumi.Input.fromValue(map['privateStoreId'] as String),
      subscriptionsList: (() { final guardedValue = map['subscriptionsList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

