// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateCreditSpecification {
  /// The credit option for CPU usage.
  /// Can be `standard` or `unlimited`.
  /// T3 instances are launched as `unlimited` by default.
  /// T2 instances are launched as `standard` by default.
  final pulumi.Input<String>? cpuCredits;

  /// Creates a new [LaunchTemplateCreditSpecification].
  /// [cpuCredits] The credit option for CPU usage.
  const LaunchTemplateCreditSpecification({
    this.cpuCredits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCredits': ?cpuCredits,
    };
  }

  factory LaunchTemplateCreditSpecification.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateCreditSpecification(
      cpuCredits: (() { final guardedValue = map['cpuCredits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

