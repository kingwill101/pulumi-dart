// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of usage plan properties.
class UsagePlanProperties {
  /// The type of the usage plan.
  final pulumi.Input<dynamic>? planType;

  /// Creates a new [UsagePlanProperties].
  /// [planType] The type of the usage plan.
  const UsagePlanProperties({
    this.planType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planType': ?planType,
    };
  }

  factory UsagePlanProperties.fromMap(Map<String, dynamic> map) {
    return UsagePlanProperties(
      planType: (() { final guardedValue = map['planType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
