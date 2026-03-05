// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPricesPricePromotionDetail {
  /// Offer Description.
  final pulumi.Input<String> promotionDesc;
  /// Offer logo.
  final pulumi.Input<int> promotionId;
  /// Offer Name.
  final pulumi.Input<String> promotionName;

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
      promotionDesc: pulumi.Input.fromValue(map['promotionDesc'] as String),
      promotionId: pulumi.Input.fromValue(map['promotionId'] as int),
      promotionName: pulumi.Input.fromValue(map['promotionName'] as String),
    );
  }
}

