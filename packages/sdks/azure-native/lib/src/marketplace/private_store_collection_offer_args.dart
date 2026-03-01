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
    required pulumi.Output<String> collectionId,
    pulumi.Output<String>? eTag,
    pulumi.Output<Map<String, String>>? iconFileUris,
    pulumi.Output<String>? offerId,
    pulumi.Output<List<Plan>>? plans,
    required pulumi.Output<String> privateStoreId,
    pulumi.Output<List<String>>? specificPlanIdsLimitation,
    pulumi.Output<bool>? updateSuppressedDueIdempotence,
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
      collectionId: pulumi.Output.create<String>(map['collectionId'] as String),
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      iconFileUris: map['iconFileUris'] == null ? null : pulumi.Output.create<Map<String, String>>((map['iconFileUris'] as Map).cast<String, String>()),
      offerId: map['offerId'] == null ? null : pulumi.Output.create<String>(map['offerId'] as String),
      plans: map['plans'] == null ? null : pulumi.Output.create<List<Plan>>(pulumi.Input.decodeList<Plan>(map['plans'], (value) => Plan.fromMap((value as Map).cast<String, dynamic>()))),
      privateStoreId: pulumi.Output.create<String>(map['privateStoreId'] as String),
      specificPlanIdsLimitation: map['specificPlanIdsLimitation'] == null ? null : pulumi.Output.create<List<String>>((map['specificPlanIdsLimitation'] as List).cast<String>()),
      updateSuppressedDueIdempotence: map['updateSuppressedDueIdempotence'] == null ? null : pulumi.Output.create<bool>(map['updateSuppressedDueIdempotence'] as bool),
    );
  }
}

