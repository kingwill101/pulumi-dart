// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan.dart';

/// {@template pulumi_marketplace_private_store_collection_offer_args_doc}
/// The set of arguments for PrivateStoreCollectionOffer.
/// {@endtemplate}
/// {@macro pulumi_marketplace_private_store_collection_offer_args_doc}
class PrivateStoreCollectionOfferArgs {
  /// The collection ID
  final pulumi.Input<String> collectionId;
  /// Identifier for purposes of race condition
  final pulumi.Input<String>? eTag;
  /// Icon File Uris
  final pulumi.Input<Map<String, String>>? iconFileUris;
  /// The offer ID to update or delete
  final pulumi.Input<String>? offerId;
  /// Offer plans
  final pulumi.Input<List<Plan>>? plans;
  /// The store ID - must use the tenant ID
  final pulumi.Input<String> privateStoreId;
  /// Plan ids limitation for this offer
  final pulumi.Input<List<String>>? specificPlanIdsLimitation;
  /// Indicating whether the offer was not updated to db (true = not updated). If the allow list is identical to the existed one in db, the offer would not be updated.
  final pulumi.Input<bool>? updateSuppressedDueIdempotence;

  /// Creates a new [PrivateStoreCollectionOfferArgs].
  /// [collectionId] The collection ID
  /// [eTag] Identifier for purposes of race condition
  /// [iconFileUris] Icon File Uris
  /// [offerId] The offer ID to update or delete
  /// [plans] Offer plans
  /// [privateStoreId] The store ID - must use the tenant ID
  /// [specificPlanIdsLimitation] Plan ids limitation for this offer
  /// [updateSuppressedDueIdempotence] Indicating whether the offer was not updated to db (true = not updated). If the allow list is identical to the existed one in db, the offer would not be updated.
  PrivateStoreCollectionOfferArgs({
    required String collectionId,
    String? eTag,
    Map<String, String>? iconFileUris,
    String? offerId,
    List<Plan>? plans,
    required String privateStoreId,
    List<String>? specificPlanIdsLimitation,
    bool? updateSuppressedDueIdempotence,
  }) :
      collectionId = pulumi.Input.asInput<String>(collectionId),
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      iconFileUris = pulumi.Input.asOptionalInput<Map<String, String>>(iconFileUris),
      offerId = pulumi.Input.asOptionalInput<String>(offerId),
      plans = pulumi.Input.asOptionalInput<List<Plan>>(plans),
      privateStoreId = pulumi.Input.asInput<String>(privateStoreId),
      specificPlanIdsLimitation = pulumi.Input.asOptionalInput<List<String>>(specificPlanIdsLimitation),
      updateSuppressedDueIdempotence = pulumi.Input.asOptionalInput<bool>(updateSuppressedDueIdempotence);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'eTag': ?eTag,
      'iconFileUris': ?iconFileUris,
      'offerId': ?offerId,
      'plans': ?pulumi.Input.mapOptionalInputValue<List<Plan>, List<Map<String, dynamic>>>(plans, (value) => pulumi.Input.encodeList<Plan, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateStoreId': privateStoreId,
      'specificPlanIdsLimitation': ?specificPlanIdsLimitation,
      'updateSuppressedDueIdempotence': ?updateSuppressedDueIdempotence,
    };
  }

  factory PrivateStoreCollectionOfferArgs.fromMap(Map<String, dynamic> map) {
    return PrivateStoreCollectionOfferArgs(
      collectionId: map['collectionId'] as String,
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      iconFileUris: map['iconFileUris'] == null ? null : (map['iconFileUris'] as Map).cast<String, String>(),
      offerId: map['offerId'] == null ? null : map['offerId'] as String,
      plans: map['plans'] == null ? null : pulumi.Input.decodeList<Plan>(map['plans'], (value) => Plan.fromMap((value as Map).cast<String, dynamic>())),
      privateStoreId: map['privateStoreId'] as String,
      specificPlanIdsLimitation: map['specificPlanIdsLimitation'] == null ? null : (map['specificPlanIdsLimitation'] as List).cast<String>(),
      updateSuppressedDueIdempotence: map['updateSuppressedDueIdempotence'] == null ? null : map['updateSuppressedDueIdempotence'] as bool,
    );
  }
}

