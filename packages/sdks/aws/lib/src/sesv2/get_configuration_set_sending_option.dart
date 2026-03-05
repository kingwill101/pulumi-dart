// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationSetSendingOption {
  /// Specifies whether email sending is enabled.
  final pulumi.Input<bool> sendingEnabled;

  /// Creates a new [GetConfigurationSetSendingOption].
  /// [sendingEnabled] Specifies whether email sending is enabled.
  GetConfigurationSetSendingOption({
    required this.sendingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sendingEnabled': sendingEnabled,
    };
  }

  factory GetConfigurationSetSendingOption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetSendingOption(
      sendingEnabled: pulumi.Input.fromValue(map['sendingEnabled'] as bool),
    );
  }
}

