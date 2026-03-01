// ignore_for_file: unused_element, unnecessary_cast


class PoolAutoScale {
  /// The interval to wait before evaluating if the pool needs to be scaled. Defaults to `PT15M`.
  final String? evaluationInterval;
  /// The autoscale formula that needs to be used for scaling the Batch pool.
  final String formula;

  /// Creates a new [PoolAutoScale].
  /// [evaluationInterval] The interval to wait before evaluating if the pool needs to be scaled. Defaults to `PT15M`.
  /// [formula] The autoscale formula that needs to be used for scaling the Batch pool.
  PoolAutoScale({
    this.evaluationInterval,
    required this.formula,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationInterval': ?evaluationInterval,
      'formula': formula,
    };
  }

  factory PoolAutoScale.fromMap(Map<String, dynamic> map) {
    return PoolAutoScale(
      evaluationInterval: map['evaluationInterval'] == null ? null : map['evaluationInterval'] as String,
      formula: map['formula'] as String,
    );
  }
}

