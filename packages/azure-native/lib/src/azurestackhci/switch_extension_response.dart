// ignore_for_file: unused_element, unnecessary_cast


/// This represents extensions installed on virtualSwitch.
class SwitchExtensionResponse {
  /// This represents whether extension is enabled on virtualSwitch.
  final bool extensionEnabled;
  /// This will show extension name for virtualSwitch.
  final String extensionName;
  /// Unique identifier for virtualSwitch.
  final String switchId;

  /// Creates a new [SwitchExtensionResponse].
  /// [extensionEnabled] This represents whether extension is enabled on virtualSwitch.
  /// [extensionName] This will show extension name for virtualSwitch.
  /// [switchId] Unique identifier for virtualSwitch.
  SwitchExtensionResponse({
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
      extensionEnabled: map['extensionEnabled'] as bool,
      extensionName: map['extensionName'] as String,
      switchId: map['switchId'] as String,
    );
  }
}

