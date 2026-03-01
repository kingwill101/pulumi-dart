// ignore_for_file: unused_element, unnecessary_cast


class CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings {
  /// If true, incoming audio is processed for DTMF (dual tone multi frequtectency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will de the event (e.g. a "3" was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance).
  final bool? enabled;
  /// Endpoint timeout setting for matching dtmf input to regex.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.500s".
  final String? endpointingTimeoutDuration;
  /// The digit that terminates a DTMF digit sequence.
  final String? finishDigit;
  /// Interdigit timeout setting for matching dtmf input to regex.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.500s".
  final String? interdigitTimeoutDuration;
  /// Max length of DTMF digits.
  final int? maxDigits;

  /// Creates a new [CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings].
  /// [enabled] If true, incoming audio is processed for DTMF (dual tone multi frequtectency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will de the event (e.g. a "3" was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance).
  /// [endpointingTimeoutDuration] Endpoint timeout setting for matching dtmf input to regex.
  /// [finishDigit] The digit that terminates a DTMF digit sequence.
  /// [interdigitTimeoutDuration] Interdigit timeout setting for matching dtmf input to regex.
  /// [maxDigits] Max length of DTMF digits.
  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings({
    this.enabled,
    this.endpointingTimeoutDuration,
    this.finishDigit,
    this.interdigitTimeoutDuration,
    this.maxDigits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'endpointingTimeoutDuration': ?endpointingTimeoutDuration,
      'finishDigit': ?finishDigit,
      'interdigitTimeoutDuration': ?interdigitTimeoutDuration,
      'maxDigits': ?maxDigits,
    };
  }

  factory CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings.fromMap(Map<String, dynamic> map) {
    return CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      endpointingTimeoutDuration: map['endpointingTimeoutDuration'] == null ? null : map['endpointingTimeoutDuration'] as String,
      finishDigit: map['finishDigit'] == null ? null : map['finishDigit'] as String,
      interdigitTimeoutDuration: map['interdigitTimeoutDuration'] == null ? null : map['interdigitTimeoutDuration'] as String,
      maxDigits: map['maxDigits'] == null ? null : map['maxDigits'] as int,
    );
  }
}

