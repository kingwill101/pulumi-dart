// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefaultScaleSettings {
  /// Expected value is 'Default'.
  final pulumi.Input<String> scaleType;

  /// Creates a new [DefaultScaleSettings].
  /// [scaleType] Expected value is 'Default'.
  DefaultScaleSettings({
    required this.scaleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleType': scaleType,
    };
  }

  factory DefaultScaleSettings.fromMap(Map<String, dynamic> map) {
    return DefaultScaleSettings(
      scaleType: pulumi.Input.fromValue(map['scaleType'] as String),
    );
  }
}

