// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppLinkMember private connect profile.
class PrivateConnectProfile {
  /// Delegated Subnet to AppLink.
  final pulumi.Input<String> subnetResourceId;

  /// Creates a new [PrivateConnectProfile].
  /// [subnetResourceId] Delegated Subnet to AppLink.
  const PrivateConnectProfile({
    required this.subnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetResourceId': subnetResourceId,
    };
  }

  factory PrivateConnectProfile.fromMap(Map<String, dynamic> map) {
    return PrivateConnectProfile(
      subnetResourceId: pulumi.Input.fromValue(map['subnetResourceId'] as String),
    );
  }
}
