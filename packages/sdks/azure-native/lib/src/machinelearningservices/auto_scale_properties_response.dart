// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auto scale properties
class AutoScalePropertiesResponse {
  final pulumi.Input<bool>? enabled;
  final pulumi.Input<int>? maxNodeCount;
  final pulumi.Input<int>? minNodeCount;

  /// Creates a new [AutoScalePropertiesResponse].
  /// [enabled] Optional.
  /// [maxNodeCount] Optional.
  /// [minNodeCount] Optional.
  AutoScalePropertiesResponse({
    this.enabled,
    this.maxNodeCount,
    this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
    };
  }

  factory AutoScalePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AutoScalePropertiesResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      maxNodeCount: map['maxNodeCount'] == null ? null : (map['maxNodeCount']! as int).input(),
      minNodeCount: map['minNodeCount'] == null ? null : (map['minNodeCount']! as int).input(),
    );
  }
}

