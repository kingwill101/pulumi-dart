// ignore_for_file: unused_element, unnecessary_cast

class GetSQuotaInfoQuotaIncreaseEligibility {
  /// The enumeration of reasons when it is ineligible to request increase adjustment.
  final String ineligibilityReason;

  /// Whether a higher quota value can be requested for the quota.
  final bool isEligible;

  GetSQuotaInfoQuotaIncreaseEligibility({
    required this.ineligibilityReason,
    required this.isEligible,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ineligibilityReason'] = ineligibilityReason;
    map['isEligible'] = isEligible;
    return map;
  }

  factory GetSQuotaInfoQuotaIncreaseEligibility.fromMap(
      Map<String, dynamic> map) {
    return GetSQuotaInfoQuotaIncreaseEligibility(
      ineligibilityReason: map['ineligibilityReason'] as String,
      isEligible: map['isEligible'] as bool,
    );
  }
}
