// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypesInstanceTypeBurstableInstance {
  /// The compute performance benchmark CPU credit of a burstable instance.
  final String baselineCredit;
  /// The initial CPU credit of a burstable instance.
  final String initialCredit;

  /// Creates a new [GetInstanceTypesInstanceTypeBurstableInstance].
  /// [baselineCredit] The compute performance benchmark CPU credit of a burstable instance.
  /// [initialCredit] The initial CPU credit of a burstable instance.
  GetInstanceTypesInstanceTypeBurstableInstance({
    required this.baselineCredit,
    required this.initialCredit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineCredit': baselineCredit,
      'initialCredit': initialCredit,
    };
  }

  factory GetInstanceTypesInstanceTypeBurstableInstance.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesInstanceTypeBurstableInstance(
      baselineCredit: map['baselineCredit'] as String,
      initialCredit: map['initialCredit'] as String,
    );
  }
}

