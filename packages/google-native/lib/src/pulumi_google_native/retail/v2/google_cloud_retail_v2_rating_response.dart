// ignore_for_file: unused_element, unnecessary_cast

/// The rating of a Product.
class GoogleCloudRetailV2RatingResponse {
  /// The average rating of the Product. The rating is scaled at 1-5. Otherwise, an INVALID_ARGUMENT error is returned.
  final double averageRating;

  /// The total number of ratings. This value is independent of the value of rating_histogram. This value must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  final int ratingCount;

  /// List of rating counts per rating value (index = rating - 1). The list is empty if there is no rating. If the list is non-empty, its size is always 5. Otherwise, an INVALID_ARGUMENT error is returned. For example, [41, 14, 13, 47, 303]. It means that the Product got 41 ratings with 1 star, 14 ratings with 2 star, and so on.
  final List<int> ratingHistogram;

  GoogleCloudRetailV2RatingResponse({
    required this.averageRating,
    required this.ratingCount,
    required this.ratingHistogram,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['averageRating'] = averageRating;
    map['ratingCount'] = ratingCount;
    map['ratingHistogram'] = ratingHistogram;
    return map;
  }

  factory GoogleCloudRetailV2RatingResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2RatingResponse(
      averageRating: map['averageRating'] as double,
      ratingCount: map['ratingCount'] as int,
      ratingHistogram: (map['ratingHistogram'] as List).cast<int>(),
    );
  }
}
