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
  final pulumi.Input<String?>? eTag;
  /// Icon File Uris
  final pulumi.Input<Map<String, String>?>? iconFileUris;
  /// The offer ID to update or delete
  final pulumi.Input<String?>? offerId;
  /// Offer plans
  final pulumi.Input<List<Plan>?>? plans;
  /// The store ID - must use the tenant ID
  final pulumi.Input<String> privateStoreId;
  /// Plan ids limitation for this offer
  final pulumi.Input<List<String>?>? specificPlanIdsLimitation;
  /// Indicating whether the offer was not updated to db (true = not updated). If the allow list is identical to the existed one in db, the offer would not be updated.
  final pulumi.Input<bool?>? updateSuppressedDueIdempotence;

  /// Creates a new [PrivateStoreCollectionOfferArgs].
  /// [collectionId] The collection ID
  /// [eTag] Identifier for purposes of race condition
  /// [iconFileUris] Icon File Uris
  /// [offerId] The offer ID to update or delete
  /// [plans] Offer plans
  /// [privateStoreId] The store ID - must use the tenant ID
  /// [specificPlanIdsLimitation] Plan ids limitation for this offer
  /// [updateSuppressedDueIdempotence] Indicating whether the offer was not updated to db (true = not updated). If the allow list is identical to the existed one in db, the offer would not be updated.
  const PrivateStoreCollectionOfferArgs({
    required this.collectionId,
    this.eTag,
    this.iconFileUris,
    this.offerId,
    this.plans,
    required this.privateStoreId,
    this.specificPlanIdsLimitation,
    this.updateSuppressedDueIdempotence,
  });

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
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iconFileUris: (() { final guardedValue = map['iconFileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      offerId: (() { final guardedValue = map['offerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plans: (() { final guardedValue = map['plans']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Plan>(guardedValue, (value) => Plan.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateStoreId: pulumi.Input.fromValue(map['privateStoreId'] as String),
      specificPlanIdsLimitation: (() { final guardedValue = map['specificPlanIdsLimitation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updateSuppressedDueIdempotence: (() { final guardedValue = map['updateSuppressedDueIdempotence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
