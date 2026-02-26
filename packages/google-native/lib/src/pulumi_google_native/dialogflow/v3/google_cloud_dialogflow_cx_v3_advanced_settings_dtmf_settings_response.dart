// ignore_for_file: unused_element, unnecessary_cast

/// Define behaviors for DTMF (dual tone multi frequency).
class GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettingsResponse {
  /// If true, incoming audio is processed for DTMF (dual tone multi frequency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will detect the event (e.g. a "3" was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance).
  final bool enabled;

  /// The digit that terminates a DTMF digit sequence.
  final String finishDigit;

  /// Max length of DTMF digits.
  final int maxDigits;

  GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettingsResponse({
    required this.enabled,
    required this.finishDigit,
    required this.maxDigits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['finishDigit'] = finishDigit;
    map['maxDigits'] = maxDigits;
    return map;
  }

  factory GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettingsResponse(
      enabled: map['enabled'] as bool,
      finishDigit: map['finishDigit'] as String,
      maxDigits: map['maxDigits'] as int,
    );
  }
}
