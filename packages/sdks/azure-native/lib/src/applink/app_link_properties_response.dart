// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppLink properties
class AppLinkPropertiesResponse {
  /// Provisioning state
  final pulumi.Input<String> provisioningState;

  /// Creates a new [AppLinkPropertiesResponse].
  /// [provisioningState] Provisioning state
  const AppLinkPropertiesResponse({
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
    };
  }

  factory AppLinkPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AppLinkPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
