// ignore_for_file: unused_element, unnecessary_cast


class GetPricesPricePromotionDetail {
  /// Offer Description.
  final String promotionDesc;
  /// Offer logo.
  final int promotionId;
  /// Offer Name.
  final String promotionName;

  /// Creates a new [GetPricesPricePromotionDetail].
  /// [promotionDesc] Offer Description.
  /// [promotionId] Offer logo.
  /// [promotionName] Offer Name.
  GetPricesPricePromotionDetail({
    required this.promotionDesc,
    required this.promotionId,
    required this.promotionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'promotionDesc': promotionDesc,
      'promotionId': promotionId,
      'promotionName': promotionName,
    };
  }

  factory GetPricesPricePromotionDetail.fromMap(Map<String, dynamic> map) {
    return GetPricesPricePromotionDetail(
      promotionDesc: map['promotionDesc'] as String,
      promotionId: map['promotionId'] as int,
      promotionName: map['promotionName'] as String,
    );
  }
}

