// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppLinkMember east-west gateway profile.
class EastWestGatewayProfile {
  /// East-West gateway visibility.
  final pulumi.Input<dynamic> visibility;

  /// Creates a new [EastWestGatewayProfile].
  /// [visibility] East-West gateway visibility.
  const EastWestGatewayProfile({
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'visibility': visibility,
    };
  }

  factory EastWestGatewayProfile.fromMap(Map<String, dynamic> map) {
    return EastWestGatewayProfile(
      visibility: pulumi.Input.fromValue(map['visibility']),
    );
  }
}
