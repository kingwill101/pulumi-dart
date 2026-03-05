// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Tier
class TierResponse {
  /// The name of this environment tier.
  final pulumi.Input<String>? name;
  /// The type of this environment tier.
  final pulumi.Input<String>? type;
  /// The version of this environment tier. When you don't set a value to it, Elastic Beanstalk uses the latest compatible worker tier version.
  final pulumi.Input<String>? version;

  /// Creates a new [TierResponse].
  /// [name] The name of this environment tier.
  /// [type] The type of this environment tier.
  /// [version] The version of this environment tier. When you don't set a value to it, Elastic Beanstalk uses the latest compatible worker tier version.
  TierResponse({
    this.name,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
      'version': ?version,
    };
  }

  factory TierResponse.fromMap(Map<String, dynamic> map) {
    return TierResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

