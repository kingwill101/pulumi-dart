// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppLinkMember east-west gateway profile.
class EastWestGatewayProfileResponse {
  /// East-West gateway visibility.
  final pulumi.Input<String> visibility;

  /// Creates a new [EastWestGatewayProfileResponse].
  /// [visibility] East-West gateway visibility.
  const EastWestGatewayProfileResponse({
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'visibility': visibility,
    };
  }

  factory EastWestGatewayProfileResponse.fromMap(Map<String, dynamic> map) {
    return EastWestGatewayProfileResponse(
      visibility: pulumi.Input.fromValue(map['visibility'] as String),
    );
  }
}
