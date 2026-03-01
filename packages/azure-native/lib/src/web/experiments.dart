// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ramp_up_rule.dart';

/// Routing rules in production experiments.
class Experiments {
  /// List of ramp-up rules.
  final List<RampUpRule>? rampUpRules;

  /// Creates a new [Experiments].
  /// [rampUpRules] List of ramp-up rules.
  Experiments({
    this.rampUpRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rampUpRules': ?rampUpRules == null ? null : pulumi.Input.encodeList<RampUpRule, Map<String, dynamic>>(rampUpRules!, (value) => value.toMap()),
    };
  }

  factory Experiments.fromMap(Map<String, dynamic> map) {
    return Experiments(
      rampUpRules: map['rampUpRules'] == null ? null : pulumi.Input.decodeList<RampUpRule>(map['rampUpRules'], (value) => RampUpRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

