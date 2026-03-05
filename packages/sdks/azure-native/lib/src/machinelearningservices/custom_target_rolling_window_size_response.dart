// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomTargetRollingWindowSizeResponse {
  /// Target rolling windows size mode.
  /// Expected value is 'Custom'.
  final pulumi.Input<String> mode;
  /// [Required] TargetRollingWindowSize value.
  final pulumi.Input<int> value;

  /// Creates a new [CustomTargetRollingWindowSizeResponse].
  /// [mode] Target rolling windows size mode.
  /// [value] [Required] TargetRollingWindowSize value.
  CustomTargetRollingWindowSizeResponse({
    required this.mode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'value': value,
    };
  }

  factory CustomTargetRollingWindowSizeResponse.fromMap(Map<String, dynamic> map) {
    return CustomTargetRollingWindowSizeResponse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}

