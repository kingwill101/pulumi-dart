// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QuotaPlanQuotaSubQuotaInfoListParameter {
  /// The value of elastic Reserved CUs.
  ///
  /// &gt; **NOTE:**  The total number of elastically reserved CUs in all the level-2 quotas is equal to the number of elastically reserved CUs in the level-1 quota..
  final pulumi.Input<int> elasticReservedCu;

  /// The value of maxCU in Reserved CUs.
  final pulumi.Input<int> maxCu;

  /// The value of minCU in Reserved CUs.
  final pulumi.Input<int> minCu;

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

  factory QuotaPlanQuotaSubQuotaInfoListParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return QuotaPlanQuotaSubQuotaInfoListParameter(
      elasticReservedCu: pulumi.Input.fromValue(
        map['elasticReservedCu'] as int,
      ),
      maxCu: pulumi.Input.fromValue(map['maxCu'] as int),
      minCu: pulumi.Input.fromValue(map['minCu'] as int),
    );
  }
}
