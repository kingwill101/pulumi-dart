// ignore_for_file: unused_element, unnecessary_cast


class BucketResponseHeaderRuleFilters {
  /// The operation to which the rule applies.
  final List<String>? operations;

  /// Creates a new [BucketResponseHeaderRuleFilters].
  /// [operations] The operation to which the rule applies.
  BucketResponseHeaderRuleFilters({
    this.operations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operations': ?operations,
    };
  }

  factory BucketResponseHeaderRuleFilters.fromMap(Map<String, dynamic> map) {
    return BucketResponseHeaderRuleFilters(
      operations: map['operations'] == null ? null : (map['operations'] as List).cast<String>(),
    );
  }
}

