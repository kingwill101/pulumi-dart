// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dynamic Configuration Properties
class DynamicConfigurationProperties {
  /// Current Version of dynamic configuration
  final pulumi.Input<String> currentVersion;

  /// Creates a new [DynamicConfigurationProperties].
  /// [currentVersion] Current Version of dynamic configuration
  DynamicConfigurationProperties({
    required this.currentVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVersion': currentVersion,
    };
  }

  factory DynamicConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return DynamicConfigurationProperties(
      currentVersion: (map['currentVersion'] as String).input(),
    );
  }
}

