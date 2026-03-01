// ignore_for_file: unused_element, unnecessary_cast


/// The integration account RosettaNet ProcessConfiguration Acknowledgement settings.
class RosettaNetPipAcknowledgmentOfReceiptSettingsResponse {
  /// The non-repudiation is required or not.
  final bool isNonRepudiationRequired;
  /// The time to acknowledge in seconds.
  final int timeToAcknowledgeInSeconds;

  /// Creates a new [RosettaNetPipAcknowledgmentOfReceiptSettingsResponse].
  /// [isNonRepudiationRequired] The non-repudiation is required or not.
  /// [timeToAcknowledgeInSeconds] The time to acknowledge in seconds.
  RosettaNetPipAcknowledgmentOfReceiptSettingsResponse({
    required this.isNonRepudiationRequired,
    required this.timeToAcknowledgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isNonRepudiationRequired': isNonRepudiationRequired,
      'timeToAcknowledgeInSeconds': timeToAcknowledgeInSeconds,
    };
  }

  factory RosettaNetPipAcknowledgmentOfReceiptSettingsResponse.fromMap(Map<String, dynamic> map) {
    return RosettaNetPipAcknowledgmentOfReceiptSettingsResponse(
      isNonRepudiationRequired: map['isNonRepudiationRequired'] as bool,
      timeToAcknowledgeInSeconds: map['timeToAcknowledgeInSeconds'] as int,
    );
  }
}

