// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppLinkMember fully managed upgrade profile
class FullyManagedUpgradeProfileResponse {
  /// Release channel
  final pulumi.Input<String> releaseChannel;

  /// Creates a new [FullyManagedUpgradeProfileResponse].
  /// [releaseChannel] Release channel
  const FullyManagedUpgradeProfileResponse({
    required this.releaseChannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'releaseChannel': releaseChannel,
    };
  }

  factory FullyManagedUpgradeProfileResponse.fromMap(Map<String, dynamic> map) {
    return FullyManagedUpgradeProfileResponse(
      releaseChannel: pulumi.Input.fromValue(map['releaseChannel'] as String),
    );
  }
}
