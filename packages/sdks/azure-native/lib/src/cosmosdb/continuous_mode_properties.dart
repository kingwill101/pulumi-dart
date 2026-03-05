// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for periodic mode backup
class ContinuousModeProperties {
  /// Enum to indicate type of Continuous backup mode
  final pulumi.Input<String>? tier;

  /// Creates a new [ContinuousModeProperties].
  /// [tier] Enum to indicate type of Continuous backup mode
  ContinuousModeProperties({
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tier': ?tier,
    };
  }

  factory ContinuousModeProperties.fromMap(Map<String, dynamic> map) {
    return ContinuousModeProperties(
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

