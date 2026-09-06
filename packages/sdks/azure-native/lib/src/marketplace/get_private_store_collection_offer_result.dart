// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateStoreCollectionOffer.
class GetPrivateStoreCollectionOfferResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Private store offer creation date
  final String? createdAt;
  /// Identifier for purposes of race condition
  final String? eTag;
  /// Icon File Uris
  final Map<String, String>? iconFileUris;
  /// The resource ID.
  final String? id;
  /// Private store offer modification date
  final String? modifiedAt;
  /// The name of the resource.
  final String? name;
  /// It will be displayed prominently in the marketplace
  final String? offerDisplayName;
  /// Offer plans
  final List<PlanResponse>? plans;
  /// Private store unique id
  final String? privateStoreId;
  /// Publisher name that will be displayed prominently in the marketplace
  final String? publisherDisplayName;
  /// Plan ids limitation for this offer
  final List<String>? specificPlanIdsLimitation;
  /// Metadata pertaining to creation and last modification of the resource
  final SystemDataResponse? systemData;
  /// The type of the resource.
  final String? type;
  /// Offers unique id
  final String? uniqueOfferId;
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
  const GetPrivateStoreCollectionOfferResult({
    this.azureApiVersion,
    this.createdAt,
    this.eTag,
    this.iconFileUris,
    this.id,
    this.modifiedAt,
    this.name,
    this.offerDisplayName,
    this.plans,
    this.privateStoreId,
    this.publisherDisplayName,
    this.specificPlanIdsLimitation,
    this.systemData,
    this.type,
    this.uniqueOfferId,
    this.updateSuppressedDueIdempotence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdAt': ?createdAt,
      'eTag': ?eTag,
      'iconFileUris': ?iconFileUris,
      'id': ?id,
      'modifiedAt': ?modifiedAt,
      'name': ?name,
      'offerDisplayName': ?offerDisplayName,
      'plans': ?(() { final guardedValue = plans; if (guardedValue == null) return null; return pulumi.Input.encodeList<PlanResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'privateStoreId': ?privateStoreId,
      'publisherDisplayName': ?publisherDisplayName,
      'specificPlanIdsLimitation': ?specificPlanIdsLimitation,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'uniqueOfferId': ?uniqueOfferId,
      'updateSuppressedDueIdempotence': ?updateSuppressedDueIdempotence,
    };
  }

  factory GetPrivateStoreCollectionOfferResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateStoreCollectionOfferResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iconFileUris: (() { final guardedValue = map['iconFileUris']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offerDisplayName: (() { final guardedValue = map['offerDisplayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plans: (() { final guardedValue = map['plans']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanResponse>(guardedValue, (value) => PlanResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      privateStoreId: (() { final guardedValue = map['privateStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publisherDisplayName: (() { final guardedValue = map['publisherDisplayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      specificPlanIdsLimitation: (() { final guardedValue = map['specificPlanIdsLimitation']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uniqueOfferId: (() { final guardedValue = map['uniqueOfferId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateSuppressedDueIdempotence: (() { final guardedValue = map['updateSuppressedDueIdempotence']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
