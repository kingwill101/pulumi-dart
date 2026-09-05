// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpotInstanceRequestCreditSpecification {
  /// Credit option for CPU usage. Valid values include `standard` or `unlimited`. T3 instances are launched as unlimited by default. T2 instances are launched as standard by default.
  final pulumi.Input<String?>? cpuCredits;

  /// Creates a new [SpotInstanceRequestCreditSpecification].
  /// [cpuCredits] Credit option for CPU usage. Valid values include `standard` or `unlimited`. T3 instances are launched as unlimited by default. T2 instances are launched as standard by default.
  const SpotInstanceRequestCreditSpecification({
    this.cpuCredits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCredits': ?cpuCredits,
    };
  }

  factory SpotInstanceRequestCreditSpecification.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestCreditSpecification(
      cpuCredits: (() { final guardedValue = map['cpuCredits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
