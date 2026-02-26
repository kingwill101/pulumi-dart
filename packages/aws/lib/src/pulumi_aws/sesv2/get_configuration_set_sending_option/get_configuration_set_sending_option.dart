// ignore_for_file: unused_element, unnecessary_cast

class GetConfigurationSetSendingOption {
  /// Specifies whether email sending is enabled.
  final bool sendingEnabled;

  GetConfigurationSetSendingOption({
    required this.sendingEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sendingEnabled'] = sendingEnabled;
    return map;
  }

  factory GetConfigurationSetSendingOption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetSendingOption(
      sendingEnabled: map['sendingEnabled'] as bool,
    );
  }
}
