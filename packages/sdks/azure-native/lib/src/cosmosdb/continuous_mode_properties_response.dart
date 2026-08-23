// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for periodic mode backup
class ContinuousModePropertiesResponse {
  /// Enum to indicate type of Continuous backup mode
  final pulumi.Input<String>? tier;

  /// Creates a new [ContinuousModePropertiesResponse].
  /// [tier] Enum to indicate type of Continuous backup mode
  const ContinuousModePropertiesResponse({
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tier': ?tier,
    };
  }

  factory ContinuousModePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ContinuousModePropertiesResponse(
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
