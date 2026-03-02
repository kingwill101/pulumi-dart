// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateStoreCollectionOffer.
class GetPrivateStoreCollectionOfferResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Private store offer creation date
  final String createdAt;
  /// Identifier for purposes of race condition
  final String? eTag;
  /// Icon File Uris
  final Map<String, String>? iconFileUris;
  /// The resource ID.
  final String id;
  /// Private store offer modification date
  final String modifiedAt;
  /// The name of the resource.
  final String name;
  /// It will be displayed prominently in the marketplace
  final String offerDisplayName;
  /// Offer plans
  final List<PlanResponse>? plans;
  /// Private store unique id
  final String privateStoreId;
  /// Publisher name that will be displayed prominently in the marketplace
  final String publisherDisplayName;
  /// Plan ids limitation for this offer
  final List<String>? specificPlanIdsLimitation;
  /// Metadata pertaining to creation and last modification of the resource
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;
  /// Offers unique id
  final String uniqueOfferId;
  /// Indicating whether the offer was not updated to db (true = not updated). If the allow list is identical to the existed one in db, the offer would not be updated.
  final bool? updateSuppressedDueIdempotence;

  /// Creates a new [GetPrivateStoreCollectionOfferResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] Private store offer creation date
  /// [eTag] Identifier for purposes of race condition
  /// [iconFileUris] Icon File Uris
  /// [id] The resource ID.
  /// [modifiedAt] Private store offer modification date
  /// [name] The name of the resource.
  /// [offerDisplayName] It will be displayed prominently in the marketplace
  /// [plans] Offer plans
  /// [privateStoreId] Private store unique id
  /// [publisherDisplayName] Publisher name that will be displayed prominently in the marketplace
  /// [specificPlanIdsLimitation] Plan ids limitation for this offer
  /// [systemData] Metadata pertaining to creation and last modification of the resource
  /// [type] The type of the resource.
  /// [uniqueOfferId] Offers unique id
  /// [updateSuppressedDueIdempotence] Indicating whether the offer was not updated to db (true = not updated). If the allow list is identical to the existed one in db, the offer would not be updated.
  GetPrivateStoreCollectionOfferResult({
    required this.azureApiVersion,
    required this.createdAt,
    this.eTag,
    this.iconFileUris,
    required this.id,
    required this.modifiedAt,
    required this.name,
    required this.offerDisplayName,
    this.plans,
    required this.privateStoreId,
    required this.publisherDisplayName,
    this.specificPlanIdsLimitation,
    required this.systemData,
    required this.type,
    required this.uniqueOfferId,
    this.updateSuppressedDueIdempotence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdAt': createdAt,
      'eTag': ?eTag,
      'iconFileUris': ?iconFileUris,
      'id': id,
      'modifiedAt': modifiedAt,
      'name': name,
      'offerDisplayName': offerDisplayName,
      'plans': ?plans == null ? null : pulumi.Input.encodeList<PlanResponse, Map<String, dynamic>>(plans!, (value) => value.toMap()),
      'privateStoreId': privateStoreId,
      'publisherDisplayName': publisherDisplayName,
      'specificPlanIdsLimitation': ?specificPlanIdsLimitation,
      'systemData': systemData.toMap(),
      'type': type,
      'uniqueOfferId': uniqueOfferId,
      'updateSuppressedDueIdempotence': ?updateSuppressedDueIdempotence,
    };
  }

  factory GetPrivateStoreCollectionOfferResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateStoreCollectionOfferResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdAt: map['createdAt'] as String,
      eTag: map['eTag'] == null ? null : map['eTag']! as String,
      iconFileUris: map['iconFileUris'] == null ? null : (map['iconFileUris']! as Map).cast<String, String>(),
      id: map['id'] as String,
      modifiedAt: map['modifiedAt'] as String,
      name: map['name'] as String,
      offerDisplayName: map['offerDisplayName'] as String,
      plans: map['plans'] == null ? null : pulumi.Input.decodeList<PlanResponse>(map['plans']!, (value) => PlanResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateStoreId: map['privateStoreId'] as String,
      publisherDisplayName: map['publisherDisplayName'] as String,
      specificPlanIdsLimitation: map['specificPlanIdsLimitation'] == null ? null : (map['specificPlanIdsLimitation']! as List).cast<String>(),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      uniqueOfferId: map['uniqueOfferId'] as String,
      updateSuppressedDueIdempotence: map['updateSuppressedDueIdempotence'] == null ? null : map['updateSuppressedDueIdempotence']! as bool,
    );
  }
}

