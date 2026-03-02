// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for periodic mode backup
class ContinuousModePropertiesResponse {
  /// Enum to indicate type of Continuous backup mode
  final pulumi.Input<String>? tier;

  /// Creates a new [ContinuousModePropertiesResponse].
  /// [tier] Enum to indicate type of Continuous backup mode
  ContinuousModePropertiesResponse({
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tier': ?tier,
    };
  }

  factory ContinuousModePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ContinuousModePropertiesResponse(
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

