// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppLinkMember private connect profile.
class PrivateConnectProfileResponse {
  /// Delegated Subnet to AppLink.
  final pulumi.Input<String> subnetResourceId;

  /// Creates a new [PrivateConnectProfileResponse].
  /// [subnetResourceId] Delegated Subnet to AppLink.
  const PrivateConnectProfileResponse({
    required this.subnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetResourceId': subnetResourceId,
    };
  }

  factory PrivateConnectProfileResponse.fromMap(Map<String, dynamic> map) {
    return PrivateConnectProfileResponse(
      subnetResourceId: pulumi.Input.fromValue(map['subnetResourceId'] as String),
    );
  }
}
