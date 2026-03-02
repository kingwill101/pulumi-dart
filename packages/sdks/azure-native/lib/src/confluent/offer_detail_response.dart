// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Confluent Offer detail
class OfferDetailResponse {
  /// Offer Id
  final pulumi.Input<String> id;
  /// Offer Plan Id
  final pulumi.Input<String> planId;
  /// Offer Plan Name
  final pulumi.Input<String> planName;
  /// Private Offer Id
  final pulumi.Input<String>? privateOfferId;
  /// Array of Private Offer Ids
  final pulumi.Input<List<String>>? privateOfferIds;
  /// Publisher Id
  final pulumi.Input<String> publisherId;
  /// SaaS Offer Status
  final pulumi.Input<String>? status;
  /// Offer Plan Term Id
  final pulumi.Input<String>? termId;
  /// Offer Plan Term unit
  final pulumi.Input<String> termUnit;

  /// Creates a new [OfferDetailResponse].
  /// [id] Offer Id
  /// [planId] Offer Plan Id
  /// [planName] Offer Plan Name
  /// [privateOfferId] Private Offer Id
  /// [privateOfferIds] Array of Private Offer Ids
  /// [publisherId] Publisher Id
  /// [status] SaaS Offer Status
  /// [termId] Offer Plan Term Id
  /// [termUnit] Offer Plan Term unit
  OfferDetailResponse({
    required this.id,
    required this.planId,
    required this.planName,
    this.privateOfferId,
    this.privateOfferIds,
    required this.publisherId,
    this.status,
    this.termId,
    required this.termUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'planId': planId,
      'planName': planName,
      'privateOfferId': ?privateOfferId,
      'privateOfferIds': ?privateOfferIds,
      'publisherId': publisherId,
      'status': ?status,
      'termId': ?termId,
      'termUnit': termUnit,
    };
  }

  factory OfferDetailResponse.fromMap(Map<String, dynamic> map) {
    return OfferDetailResponse(
      id: (map['id'] as String).input(),
      planId: (map['planId'] as String).input(),
      planName: (map['planName'] as String).input(),
      privateOfferId: map['privateOfferId'] == null ? null : (map['privateOfferId']! as String).input(),
      privateOfferIds: map['privateOfferIds'] == null ? null : ((map['privateOfferIds']! as List).cast<String>()).input(),
      publisherId: (map['publisherId'] as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      termId: map['termId'] == null ? null : (map['termId']! as String).input(),
      termUnit: (map['termUnit'] as String).input(),
    );
  }
}

