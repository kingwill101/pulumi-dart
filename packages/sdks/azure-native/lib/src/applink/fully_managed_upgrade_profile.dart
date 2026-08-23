// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppLinkMember fully managed upgrade profile
class FullyManagedUpgradeProfile {
  /// Release channel
  final pulumi.Input<String> releaseChannel;

  /// Creates a new [FullyManagedUpgradeProfile].
  /// [releaseChannel] Release channel
  const FullyManagedUpgradeProfile({
    required this.releaseChannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'releaseChannel': releaseChannel,
    };
  }

  factory FullyManagedUpgradeProfile.fromMap(Map<String, dynamic> map) {
    return FullyManagedUpgradeProfile(
      releaseChannel: pulumi.Input.fromValue(map['releaseChannel'] as String),
    );
  }
}
