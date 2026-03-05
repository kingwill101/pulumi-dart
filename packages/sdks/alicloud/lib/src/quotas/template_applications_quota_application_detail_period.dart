// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateApplicationsQuotaApplicationDetailPeriod {
  /// Quota calculation cycle unit.
  final pulumi.Input<String>? periodUnit;
  /// The quota calculation period value.
  final pulumi.Input<int>? periodValue;

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
      periodUnit: (() { final guardedValue = map['periodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      periodValue: (() { final guardedValue = map['periodValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

