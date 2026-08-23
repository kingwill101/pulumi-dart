// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppLinkMember self managed upgrade profile
class SelfManagedUpgradeProfileResponse {
  /// Istio version
  final pulumi.Input<String> version;

  /// Creates a new [SelfManagedUpgradeProfileResponse].
  /// [version] Istio version
  const SelfManagedUpgradeProfileResponse({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory SelfManagedUpgradeProfileResponse.fromMap(Map<String, dynamic> map) {
    return SelfManagedUpgradeProfileResponse(
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
