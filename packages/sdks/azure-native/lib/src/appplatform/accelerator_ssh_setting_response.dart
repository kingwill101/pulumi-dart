// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auth setting for SSH auth.
class AcceleratorSshSettingResponse {
  /// The type of the auth setting.
  /// Expected value is 'SSH'.
  final pulumi.Input<String> authType;

  /// Creates a new [AcceleratorSshSettingResponse].
  /// [authType] The type of the auth setting.
  AcceleratorSshSettingResponse({required this.authType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'authType': authType};
  }

  factory AcceleratorSshSettingResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorSshSettingResponse(
      authType: pulumi.Input.fromValue(map['authType'] as String),
    );
  }
}
