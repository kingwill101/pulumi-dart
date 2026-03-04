// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QuotaPlanQuotaParameter {
  /// The value of elastic Reserved CUs.
  ///
  /// &gt; **NOTE:**  The total number of elastically reserved CUs in all the level-2 quotas is equal to the number of elastically reserved CUs in the level-1 quota..
  final pulumi.Input<int> elasticReservedCu;

  /// The value of maxCU in Reserved CUs.
  final pulumi.Input<int>? maxCu;

  /// The value of minCU in Reserved CUs.
  final pulumi.Input<int>? minCu;

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
      elasticReservedCu: pulumi.Input.fromValue(
        map['elasticReservedCu'] as int,
      ),
      maxCu: (() {
        final guardedValue = map['maxCu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minCu: (() {
        final guardedValue = map['minCu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
