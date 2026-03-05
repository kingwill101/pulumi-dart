// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Buildpack Binding Launch Properties
class BuildpackBindingLaunchProperties {
  /// Non-sensitive properties for launchProperties
  final pulumi.Input<Map<String, String>>? properties;
  /// Sensitive properties for launchProperties
  final pulumi.Input<Map<String, String>>? secrets;

  /// Creates a new [BuildpackBindingLaunchProperties].
  /// [properties] Non-sensitive properties for launchProperties
  /// [secrets] Sensitive properties for launchProperties
  BuildpackBindingLaunchProperties({
    this.properties,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'secrets': ?secrets,
    };
  }

  factory BuildpackBindingLaunchProperties.fromMap(Map<String, dynamic> map) {
    return BuildpackBindingLaunchProperties(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

