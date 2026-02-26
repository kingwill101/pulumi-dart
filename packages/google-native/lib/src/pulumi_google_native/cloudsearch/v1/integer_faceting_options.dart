// ignore_for_file: unused_element, unnecessary_cast

/// Used to specify integer faceting options.
class IntegerFacetingOptions {
  /// Buckets for given integer values should be in strictly ascending order. For example, if values supplied are (1,5,10,100), the following facet buckets will be formed {<1, [1,5), [5-10), [10-100), >=100}.
  final List<String>? integerBuckets;

  IntegerFacetingOptions({
    this.integerBuckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final integerBucketsValue = integerBuckets;
    if (integerBucketsValue != null) {
      map['integerBuckets'] = integerBucketsValue;
    }
    return map;
  }

  factory IntegerFacetingOptions.fromMap(Map<String, dynamic> map) {
    return IntegerFacetingOptions(
      integerBuckets: map['integerBuckets'] == null
          ? null
          : (map['integerBuckets'] as List).cast<String>(),
    );
  }
}
