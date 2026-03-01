// ignore_for_file: unused_element, unnecessary_cast


/// Confluent Offer detail
class OfferDetail {
  /// Offer Id
  final String id;
  /// Offer Plan Id
  final String planId;
  /// Offer Plan Name
  final String planName;
  /// Private Offer Id
  final String? privateOfferId;
  /// Array of Private Offer Ids
  final List<String>? privateOfferIds;
  /// Publisher Id
  final String publisherId;
  /// SaaS Offer Status
  final String? status;
  /// Offer Plan Term Id
  final String? termId;
  /// Offer Plan Term unit
  final String termUnit;

  /// Creates a new [OfferDetail].
  /// [id] Offer Id
  /// [planId] Offer Plan Id
  /// [planName] Offer Plan Name
  /// [privateOfferId] Private Offer Id
  /// [privateOfferIds] Array of Private Offer Ids
  /// [publisherId] Publisher Id
  /// [status] SaaS Offer Status
  /// [termId] Offer Plan Term Id
  /// [termUnit] Offer Plan Term unit
  OfferDetail({
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

  factory OfferDetail.fromMap(Map<String, dynamic> map) {
    return OfferDetail(
      id: map['id'] as String,
      planId: map['planId'] as String,
      planName: map['planName'] as String,
      privateOfferId: map['privateOfferId'] == null ? null : map['privateOfferId'] as String,
      privateOfferIds: map['privateOfferIds'] == null ? null : (map['privateOfferIds'] as List).cast<String>(),
      publisherId: map['publisherId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      termId: map['termId'] == null ? null : map['termId'] as String,
      termUnit: map['termUnit'] as String,
    );
  }
}

