// ignore_for_file: unused_element, unnecessary_cast


class TemplateApplicationsQuotaApplicationDetailPeriod {
  /// Quota calculation cycle unit.
  final String? periodUnit;
  /// The quota calculation period value.
  final int? periodValue;

  /// Creates a new [TemplateApplicationsQuotaApplicationDetailPeriod].
  /// [periodUnit] Quota calculation cycle unit.
  /// [periodValue] The quota calculation period value.
  TemplateApplicationsQuotaApplicationDetailPeriod({
    this.periodUnit,
    this.periodValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'periodUnit': ?periodUnit,
      'periodValue': ?periodValue,
    };
  }

  factory TemplateApplicationsQuotaApplicationDetailPeriod.fromMap(Map<String, dynamic> map) {
    return TemplateApplicationsQuotaApplicationDetailPeriod(
      periodUnit: map['periodUnit'] == null ? null : map['periodUnit'] as String,
      periodValue: map['periodValue'] == null ? null : map['periodValue'] as int,
    );
  }
}

