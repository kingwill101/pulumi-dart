// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Stream governance configuration
class StreamGovernanceConfig {
  /// Stream governance configuration
  final pulumi.Input<String>? package;

  /// Creates a new [StreamGovernanceConfig].
  /// [package] Stream governance configuration
  const StreamGovernanceConfig({
    this.package,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'package': ?package,
    };
  }

  factory StreamGovernanceConfig.fromMap(Map<String, dynamic> map) {
    return StreamGovernanceConfig(
      package: (() { final guardedValue = map['package']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
