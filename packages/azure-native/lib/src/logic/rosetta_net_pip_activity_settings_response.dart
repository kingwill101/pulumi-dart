// ignore_for_file: unused_element, unnecessary_cast

import 'rosetta_net_pip_acknowledgment_of_receipt_settings_response.dart';
import 'rosetta_net_pip_activity_behavior_response.dart';

/// The integration account RosettaNet ProcessConfiguration activity settings.
class RosettaNetPipActivitySettingsResponse {
  /// The RosettaNet ProcessConfiguration acknowledgement settings.
  final RosettaNetPipAcknowledgmentOfReceiptSettingsResponse acknowledgmentOfReceiptSettings;
  /// The RosettaNet ProcessConfiguration activity behavior.
  final RosettaNetPipActivityBehaviorResponse activityBehavior;
  /// The RosettaNet ProcessConfiguration activity type.
  final String activityType;

  /// Creates a new [RosettaNetPipActivitySettingsResponse].
  /// [acknowledgmentOfReceiptSettings] The RosettaNet ProcessConfiguration acknowledgement settings.
  /// [activityBehavior] The RosettaNet ProcessConfiguration activity behavior.
  /// [activityType] The RosettaNet ProcessConfiguration activity type.
  RosettaNetPipActivitySettingsResponse({
    required this.acknowledgmentOfReceiptSettings,
    required this.activityBehavior,
    required this.activityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acknowledgmentOfReceiptSettings': acknowledgmentOfReceiptSettings.toMap(),
      'activityBehavior': activityBehavior.toMap(),
      'activityType': activityType,
    };
  }

  factory RosettaNetPipActivitySettingsResponse.fromMap(Map<String, dynamic> map) {
    return RosettaNetPipActivitySettingsResponse(
      acknowledgmentOfReceiptSettings: RosettaNetPipAcknowledgmentOfReceiptSettingsResponse.fromMap((map['acknowledgmentOfReceiptSettings'] as Map).cast<String, dynamic>()),
      activityBehavior: RosettaNetPipActivityBehaviorResponse.fromMap((map['activityBehavior'] as Map).cast<String, dynamic>()),
      activityType: map['activityType'] as String,
    );
  }
}

