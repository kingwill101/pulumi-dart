// ignore_for_file: unused_element, unnecessary_cast

import 'rosetta_net_pip_acknowledgment_of_receipt_settings.dart';
import 'rosetta_net_pip_activity_behavior.dart';
import 'rosetta_net_pip_activity_type.dart';

/// The integration account RosettaNet ProcessConfiguration activity settings.
class RosettaNetPipActivitySettings {
  /// The RosettaNet ProcessConfiguration acknowledgement settings.
  final RosettaNetPipAcknowledgmentOfReceiptSettings acknowledgmentOfReceiptSettings;
  /// The RosettaNet ProcessConfiguration activity behavior.
  final RosettaNetPipActivityBehavior activityBehavior;
  /// The RosettaNet ProcessConfiguration activity type.
  final RosettaNetPipActivityType activityType;

  /// Creates a new [RosettaNetPipActivitySettings].
  /// [acknowledgmentOfReceiptSettings] The RosettaNet ProcessConfiguration acknowledgement settings.
  /// [activityBehavior] The RosettaNet ProcessConfiguration activity behavior.
  /// [activityType] The RosettaNet ProcessConfiguration activity type.
  RosettaNetPipActivitySettings({
    required this.acknowledgmentOfReceiptSettings,
    required this.activityBehavior,
    required this.activityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acknowledgmentOfReceiptSettings': acknowledgmentOfReceiptSettings.toMap(),
      'activityBehavior': activityBehavior.toMap(),
      'activityType': activityType.value,
    };
  }

  factory RosettaNetPipActivitySettings.fromMap(Map<String, dynamic> map) {
    return RosettaNetPipActivitySettings(
      acknowledgmentOfReceiptSettings: RosettaNetPipAcknowledgmentOfReceiptSettings.fromMap((map['acknowledgmentOfReceiptSettings'] as Map).cast<String, dynamic>()),
      activityBehavior: RosettaNetPipActivityBehavior.fromMap((map['activityBehavior'] as Map).cast<String, dynamic>()),
      activityType: RosettaNetPipActivityType.fromValue(map['activityType'] as String),
    );
  }
}

