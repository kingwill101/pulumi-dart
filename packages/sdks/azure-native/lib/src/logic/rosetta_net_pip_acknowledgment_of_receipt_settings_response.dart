// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The integration account RosettaNet ProcessConfiguration Acknowledgement settings.
class RosettaNetPipAcknowledgmentOfReceiptSettingsResponse {
  /// The non-repudiation is required or not.
  final pulumi.Input<bool> isNonRepudiationRequired;
  /// The time to acknowledge in seconds.
  final pulumi.Input<int> timeToAcknowledgeInSeconds;

  /// Creates a new [RosettaNetPipAcknowledgmentOfReceiptSettingsResponse].
  /// [isNonRepudiationRequired] The non-repudiation is required or not.
  /// [timeToAcknowledgeInSeconds] The time to acknowledge in seconds.
  const RosettaNetPipAcknowledgmentOfReceiptSettingsResponse({
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
      isNonRepudiationRequired: pulumi.Input.fromValue(map['isNonRepudiationRequired'] as bool),
      timeToAcknowledgeInSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['timeToAcknowledgeInSeconds'])),
    );
  }
}
