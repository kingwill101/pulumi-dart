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
      id: pulumi.Input.fromValue(map['id'] as String),
      planId: pulumi.Input.fromValue(map['planId'] as String),
      planName: pulumi.Input.fromValue(map['planName'] as String),
      privateOfferId: (() { final guardedValue = map['privateOfferId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateOfferIds: (() { final guardedValue = map['privateOfferIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publisherId: pulumi.Input.fromValue(map['publisherId'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      termId: (() { final guardedValue = map['termId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      termUnit: pulumi.Input.fromValue(map['termUnit'] as String),
    );
  }
}

