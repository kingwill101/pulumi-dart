// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppLinkMember self managed upgrade profile
class SelfManagedUpgradeProfile {
  /// Istio version
  final pulumi.Input<String> version;

  /// Creates a new [SelfManagedUpgradeProfile].
  /// [version] Istio version
  const SelfManagedUpgradeProfile({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory SelfManagedUpgradeProfile.fromMap(Map<String, dynamic> map) {
    return SelfManagedUpgradeProfile(
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
