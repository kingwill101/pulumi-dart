// ignore_for_file: unused_element, unnecessary_cast


class QuotaPlanQuotaSubQuotaInfoListParameter {
  /// The value of elastic Reserved CUs.
  ///
  /// > **NOTE:**  The total number of elastically reserved CUs in all the level-2 quotas is equal to the number of elastically reserved CUs in the level-1 quota..
  final int elasticReservedCu;
  /// The value of maxCU in Reserved CUs.
  final int maxCu;
  /// The value of minCU in Reserved CUs.
  final int minCu;

  /// Creates a new [QuotaPlanQuotaSubQuotaInfoListParameter].
  /// [elasticReservedCu] The value of elastic Reserved CUs.
  /// [maxCu] The value of maxCU in Reserved CUs.
  /// [minCu] The value of minCU in Reserved CUs.
  QuotaPlanQuotaSubQuotaInfoListParameter({
    required this.elasticReservedCu,
    required this.maxCu,
    required this.minCu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticReservedCu': elasticReservedCu,
      'maxCu': maxCu,
      'minCu': minCu,
    };
  }

  factory QuotaPlanQuotaSubQuotaInfoListParameter.fromMap(Map<String, dynamic> map) {
    return QuotaPlanQuotaSubQuotaInfoListParameter(
      elasticReservedCu: map['elasticReservedCu'] as int,
      maxCu: map['maxCu'] as int,
      minCu: map['minCu'] as int,
    );
  }
}

