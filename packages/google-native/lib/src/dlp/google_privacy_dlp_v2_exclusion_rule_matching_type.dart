/// How the rule is applied, see MatchingType documentation for details.
enum GooglePrivacyDlpV2ExclusionRuleMatchingType {
  matchingTypeUnspecified("MATCHING_TYPE_UNSPECIFIED"),
  matchingTypeFullMatch("MATCHING_TYPE_FULL_MATCH"),
  matchingTypePartialMatch("MATCHING_TYPE_PARTIAL_MATCH"),
  matchingTypeInverseMatch("MATCHING_TYPE_INVERSE_MATCH");

  const GooglePrivacyDlpV2ExclusionRuleMatchingType(this.value);
  final String value;

  static GooglePrivacyDlpV2ExclusionRuleMatchingType fromValue(String value) {
    for (final item in GooglePrivacyDlpV2ExclusionRuleMatchingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2ExclusionRuleMatchingType value: $value');
  }
}

