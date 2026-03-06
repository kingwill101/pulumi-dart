// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateStoreCollection.
class GetPrivateStoreCollectionResult {
  /// Indicating whether all subscriptions are selected (=true) or not (=false).
  final bool? allSubscriptions;
  /// Gets list of collection rules
  final List<RuleResponse> appliedRules;
  /// Indicating whether all items are approved for this collection (=true) or not (=false).
  final bool approveAllItems;
  /// Gets the modified date of all items approved.
  final String approveAllItemsModifiedAt;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the association with Commercial's Billing Account.
  final String? claim;
  /// Gets collection Id.
  final String collectionId;
  /// Gets or sets collection name.
  final String? collectionName;
  /// Indicating whether the collection is enabled or disabled.
  final bool? enabled;
  /// The resource ID.
  final String id;
  /// The name of the resource.
  final String name;
  /// Gets the number of offers associated with the collection.
  final double numberOfOffers;
  /// Gets or sets subscription ids list. Empty list indicates all subscriptions are selected, null indicates no update is done, explicit list indicates the explicit selected subscriptions. On insert, null is considered as bad request
  final List<String>? subscriptionsList;
  /// Metadata pertaining to creation and last modification of the resource
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetPrivateStoreCollectionResult].
  /// [allSubscriptions] Indicating whether all subscriptions are selected (=true) or not (=false).
  /// [appliedRules] Gets list of collection rules
  /// [approveAllItems] Indicating whether all items are approved for this collection (=true) or not (=false).
  /// [approveAllItemsModifiedAt] Gets the modified date of all items approved.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [claim] Gets or sets the association with Commercial's Billing Account.
  /// [collectionId] Gets collection Id.
  /// [collectionName] Gets or sets collection name.
  /// [enabled] Indicating whether the collection is enabled or disabled.
  /// [id] The resource ID.
  /// [name] The name of the resource.
  /// [numberOfOffers] Gets the number of offers associated with the collection.
  /// [subscriptionsList] Gets or sets subscription ids list. Empty list indicates all subscriptions are selected, null indicates no update is done, explicit list indicates the explicit selected subscriptions. On insert, null is considered as bad request
  /// [systemData] Metadata pertaining to creation and last modification of the resource
  /// [type] The type of the resource.
  const GetPrivateStoreCollectionResult({
    this.allSubscriptions,
    required this.appliedRules,
    required this.approveAllItems,
    required this.approveAllItemsModifiedAt,
    required this.azureApiVersion,
    this.claim,
    required this.collectionId,
    this.collectionName,
    this.enabled,
    required this.id,
    required this.name,
    required this.numberOfOffers,
    this.subscriptionsList,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allSubscriptions': ?allSubscriptions,
      'appliedRules': pulumi.Input.encodeList<RuleResponse, Map<String, dynamic>>(appliedRules, (value) => value.toMap()),
      'approveAllItems': approveAllItems,
      'approveAllItemsModifiedAt': approveAllItemsModifiedAt,
      'azureApiVersion': azureApiVersion,
      'claim': ?claim,
      'collectionId': collectionId,
      'collectionName': ?collectionName,
      'enabled': ?enabled,
      'id': id,
      'name': name,
      'numberOfOffers': numberOfOffers,
      'subscriptionsList': ?subscriptionsList,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPrivateStoreCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateStoreCollectionResult(
      allSubscriptions: (() { final guardedValue = map['allSubscriptions']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      appliedRules: pulumi.Input.decodeList<RuleResponse>(map['appliedRules']!, (value) => RuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      approveAllItems: map['approveAllItems'] as bool,
      approveAllItemsModifiedAt: map['approveAllItemsModifiedAt'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      claim: (() { final guardedValue = map['claim']; if (guardedValue == null) return null; return guardedValue as String; })(),
      collectionId: map['collectionId'] as String,
      collectionName: (() { final guardedValue = map['collectionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      numberOfOffers: map['numberOfOffers'] as double,
      subscriptionsList: (() { final guardedValue = map['subscriptionsList']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

