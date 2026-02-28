// ignore_for_file: unused_element, unnecessary_cast

/// Query terms that we want to match on.
class GoogleCloudRetailV2betaConditionQueryTermResponse {
  /// Whether this is supposed to be a full or partial match.
  final bool fullMatch;

  /// The value of the term to match on. Value cannot be empty. Value can have at most 3 terms if specified as a partial match. Each space separated string is considered as one term. For example, "a b c" is 3 terms and allowed, but " a b c d" is 4 terms and not allowed for a partial match.
  final String value;

  /// Creates a new [GoogleCloudRetailV2betaConditionQueryTermResponse].
  /// [fullMatch] Whether this is supposed to be a full or partial match.
  /// [value] The value of the term to match on. Value cannot be empty. Value can have at most 3 terms if specified as a partial match. Each space separated string is considered as one term. For example, "a b c" is 3 terms and allowed, but " a b c d" is 4 terms and not allowed for a partial match.
  GoogleCloudRetailV2betaConditionQueryTermResponse({
    required this.fullMatch,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fullMatch'] = fullMatch;
    map['value'] = value;
    return map;
  }

  factory GoogleCloudRetailV2betaConditionQueryTermResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaConditionQueryTermResponse(
      fullMatch: map['fullMatch'] as bool,
      value: map['value'] as String,
    );
  }
}
