// ignore_for_file: unused_element, unnecessary_cast


class NestServiceInstanceCommodity {
  /// Length of purchase.
  final int? payPeriod;
  /// Duration unit. Valid values: `Year`, `Month`, `Day`.
  final String? payPeriodUnit;

  /// Creates a new [NestServiceInstanceCommodity].
  /// [payPeriod] Length of purchase.
  /// [payPeriodUnit] Duration unit. Valid values: `Year`, `Month`, `Day`.
  NestServiceInstanceCommodity({
    this.payPeriod,
    this.payPeriodUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payPeriod': ?payPeriod,
      'payPeriodUnit': ?payPeriodUnit,
    };
  }

  factory NestServiceInstanceCommodity.fromMap(Map<String, dynamic> map) {
    return NestServiceInstanceCommodity(
      payPeriod: map['payPeriod'] == null ? null : map['payPeriod'] as int,
      payPeriodUnit: map['payPeriodUnit'] == null ? null : map['payPeriodUnit'] as String,
    );
  }
}

