// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NestServiceInstanceCommodity {
  /// Length of purchase.
  final pulumi.Input<int>? payPeriod;
  /// Duration unit. Valid values: `Year`, `Month`, `Day`.
  final pulumi.Input<String>? payPeriodUnit;

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
      payPeriod: (() { final guardedValue = map['payPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      payPeriodUnit: (() { final guardedValue = map['payPeriodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

