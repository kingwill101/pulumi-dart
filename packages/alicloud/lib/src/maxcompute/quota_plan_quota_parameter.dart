// ignore_for_file: unused_element, unnecessary_cast


class QuotaPlanQuotaParameter {
  /// The value of elastic Reserved CUs.
  ///
  /// > **NOTE:**  The total number of elastically reserved CUs in all the level-2 quotas is equal to the number of elastically reserved CUs in the level-1 quota..
  final int elasticReservedCu;
  /// The value of maxCU in Reserved CUs.
  final int? maxCu;
  /// The value of minCU in Reserved CUs.
  final int? minCu;

  /// Creates a new [QuotaPlanQuotaParameter].
  /// [elasticReservedCu] The value of elastic Reserved CUs.
  /// [maxCu] The value of maxCU in Reserved CUs.
  /// [minCu] The value of minCU in Reserved CUs.
  QuotaPlanQuotaParameter({
    required this.elasticReservedCu,
    this.maxCu,
    this.minCu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticReservedCu': elasticReservedCu,
      'maxCu': ?maxCu,
      'minCu': ?minCu,
    };
  }

  factory QuotaPlanQuotaParameter.fromMap(Map<String, dynamic> map) {
    return QuotaPlanQuotaParameter(
      elasticReservedCu: map['elasticReservedCu'] as int,
      maxCu: map['maxCu'] == null ? null : map['maxCu'] as int,
      minCu: map['minCu'] == null ? null : map['minCu'] as int,
    );
  }
}

