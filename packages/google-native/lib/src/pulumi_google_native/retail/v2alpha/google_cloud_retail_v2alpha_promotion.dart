// ignore_for_file: unused_element, unnecessary_cast

/// Promotion specification.
class GoogleCloudRetailV2alphaPromotion {
  /// Promotion identifier, which is the final component of name. For example, this field is "free_gift", if name is `projects/*/locations/global/catalogs/default_catalog/promotions/free_gift`. The value must be a UTF-8 encoded string with a length limit of 128 characters, and match the pattern: `a-zA-Z*`. For example, id0LikeThis or ID_1_LIKE_THIS. Otherwise, an INVALID_ARGUMENT error is returned. Corresponds to Google Merchant Center property [promotion_id](https://support.google.com/merchants/answer/7050148).
  final String? promotionId;

  GoogleCloudRetailV2alphaPromotion({
    this.promotionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final promotionIdValue = promotionId;
    if (promotionIdValue != null) {
      map['promotionId'] = promotionIdValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2alphaPromotion.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaPromotion(
      promotionId:
          map['promotionId'] == null ? null : map['promotionId'] as String,
    );
  }
}
