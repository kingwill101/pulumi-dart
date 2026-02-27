// ignore_for_file: unused_element, unnecessary_cast

class SpotInstanceRequestCreditSpecification {
  /// Credit option for CPU usage. Valid values include `standard` or `unlimited`. T3 instances are launched as unlimited by default. T2 instances are launched as standard by default.
  final String? cpuCredits;

  SpotInstanceRequestCreditSpecification({
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

  factory SpotInstanceRequestCreditSpecification.fromMap(
      Map<String, dynamic> map) {
    return SpotInstanceRequestCreditSpecification(
      cpuCredits:
          map['cpuCredits'] == null ? null : map['cpuCredits'] as String,
    );
  }
}
