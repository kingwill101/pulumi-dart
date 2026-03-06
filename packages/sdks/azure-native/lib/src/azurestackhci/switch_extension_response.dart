// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This represents extensions installed on virtualSwitch.
class SwitchExtensionResponse {
  /// This represents whether extension is enabled on virtualSwitch.
  final pulumi.Input<bool> extensionEnabled;
  /// This will show extension name for virtualSwitch.
  final pulumi.Input<String> extensionName;
  /// Unique identifier for virtualSwitch.
  final pulumi.Input<String> switchId;

  /// Creates a new [SwitchExtensionResponse].
  /// [extensionEnabled] This represents whether extension is enabled on virtualSwitch.
  /// [extensionName] This will show extension name for virtualSwitch.
  /// [switchId] Unique identifier for virtualSwitch.
  const SwitchExtensionResponse({
    required this.extensionEnabled,
    required this.extensionName,
    required this.switchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionEnabled': extensionEnabled,
      'extensionName': extensionName,
      'switchId': switchId,
    };
  }

  factory SwitchExtensionResponse.fromMap(Map<String, dynamic> map) {
    return SwitchExtensionResponse(
      extensionEnabled: pulumi.Input.fromValue(map['extensionEnabled'] as bool),
      extensionName: pulumi.Input.fromValue(map['extensionName'] as String),
      switchId: pulumi.Input.fromValue(map['switchId'] as String),
    );
  }
}

