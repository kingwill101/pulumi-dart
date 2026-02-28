// ignore_for_file: unused_element, unnecessary_cast


/// Used to specify integer faceting options.
class IntegerFacetingOptionsResponse {
  /// Buckets for given integer values should be in strictly ascending order. For example, if values supplied are (1,5,10,100), the following facet buckets will be formed {<1, [1,5), [5-10), [10-100), >=100}.
  final List<String> integerBuckets;

  /// Creates a new [IntegerFacetingOptionsResponse].
  /// [integerBuckets] Buckets for given integer values should be in strictly ascending order. For example, if values supplied are (1,5,10,100), the following facet buckets will be formed {<1, [1,5), [5-10), [10-100), >=100}.
  IntegerFacetingOptionsResponse({
    required this.integerBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integerBuckets': integerBuckets,
    };
  }

  factory IntegerFacetingOptionsResponse.fromMap(Map<String, dynamic> map) {
    return IntegerFacetingOptionsResponse(
      integerBuckets: (map['integerBuckets'] as List).cast<String>(),
    );
  }
}

