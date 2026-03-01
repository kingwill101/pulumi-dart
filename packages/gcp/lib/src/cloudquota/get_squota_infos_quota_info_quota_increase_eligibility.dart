// ignore_for_file: unused_element, unnecessary_cast

class GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility {
  /// The enumeration of reasons when it is ineligible to request increase adjustment.
  final String ineligibilityReason;

  /// Whether a higher quota value can be requested for the quota.
  final bool isEligible;

  /// Creates a new [GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility].
  /// [ineligibilityReason] The enumeration of reasons when it is ineligible to request increase adjustment.
  /// [isEligible] Whether a higher quota value can be requested for the quota.
  GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility({
    required this.ineligibilityReason,
    required this.isEligible,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ineligibilityReason': ineligibilityReason,
      'isEligible': isEligible,
    };
  }

  factory GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility(
      ineligibilityReason: map['ineligibilityReason'] as String,
      isEligible: map['isEligible'] as bool,
    );
  }
}
