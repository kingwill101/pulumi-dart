// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefaultScaleSettingsResponse {
  /// Expected value is 'Default'.
  final pulumi.Input<String> scaleType;

  /// Creates a new [DefaultScaleSettingsResponse].
  /// [scaleType] Expected value is 'Default'.
  const DefaultScaleSettingsResponse({
    required this.scaleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleType': scaleType,
    };
  }

  factory DefaultScaleSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DefaultScaleSettingsResponse(
      scaleType: pulumi.Input.fromValue(map['scaleType'] as String),
    );
  }
}

