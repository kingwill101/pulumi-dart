// ignore_for_file: unused_element, unnecessary_cast

class InstanceCreditSpecification {
  /// Credit option for CPU usage. Valid values include `standard` or `unlimited`. T3 instances are launched as unlimited by default. T2 instances are launched as standard by default.
  final String? cpuCredits;

  /// Creates a new [InstanceCreditSpecification].
  /// [cpuCredits] Credit option for CPU usage. Valid values include `standard` or `unlimited`. T3 instances are launched as unlimited by default. T2 instances are launched as standard by default.
  InstanceCreditSpecification({
    this.cpuCredits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuCreditsValue = cpuCredits;
    if (cpuCreditsValue != null) {
      map['cpuCredits'] = cpuCreditsValue;
    }
    return map;
  }

  factory InstanceCreditSpecification.fromMap(Map<String, dynamic> map) {
    return InstanceCreditSpecification(
      cpuCredits:
          map['cpuCredits'] == null ? null : map['cpuCredits'] as String,
    );
  }
}
