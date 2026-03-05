// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The integration account RosettaNet ProcessConfiguration Acknowledgement settings.
class RosettaNetPipAcknowledgmentOfReceiptSettings {
  /// The non-repudiation is required or not.
  final pulumi.Input<bool> isNonRepudiationRequired;
  /// The time to acknowledge in seconds.
  final pulumi.Input<int> timeToAcknowledgeInSeconds;

  /// Creates a new [RosettaNetPipAcknowledgmentOfReceiptSettings].
  /// [isNonRepudiationRequired] The non-repudiation is required or not.
  /// [timeToAcknowledgeInSeconds] The time to acknowledge in seconds.
  RosettaNetPipAcknowledgmentOfReceiptSettings({
    required this.isNonRepudiationRequired,
    required this.timeToAcknowledgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isNonRepudiationRequired': isNonRepudiationRequired,
      'timeToAcknowledgeInSeconds': timeToAcknowledgeInSeconds,
    };
  }

  factory RosettaNetPipAcknowledgmentOfReceiptSettings.fromMap(Map<String, dynamic> map) {
    return RosettaNetPipAcknowledgmentOfReceiptSettings(
      isNonRepudiationRequired: pulumi.Input.fromValue(map['isNonRepudiationRequired'] as bool),
      timeToAcknowledgeInSeconds: pulumi.Input.fromValue(map['timeToAcknowledgeInSeconds'] as int),
    );
  }
}

