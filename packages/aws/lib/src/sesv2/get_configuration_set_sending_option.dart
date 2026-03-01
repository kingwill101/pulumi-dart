// ignore_for_file: unused_element, unnecessary_cast

class GetConfigurationSetSendingOption {
  /// Specifies whether email sending is enabled.
  final bool sendingEnabled;

  /// Creates a new [GetConfigurationSetSendingOption].
  /// [sendingEnabled] Specifies whether email sending is enabled.
  GetConfigurationSetSendingOption({required this.sendingEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sendingEnabled': sendingEnabled};
  }

  factory GetConfigurationSetSendingOption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetSendingOption(
      sendingEnabled: map['sendingEnabled'] as bool,
    );
  }
}
