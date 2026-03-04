// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rosetta_net_pip_acknowledgment_of_receipt_settings_response.dart';
import 'rosetta_net_pip_activity_behavior_response.dart';

/// The integration account RosettaNet ProcessConfiguration activity settings.
class RosettaNetPipActivitySettingsResponse {
  /// The RosettaNet ProcessConfiguration acknowledgement settings.
  final pulumi.Input<RosettaNetPipAcknowledgmentOfReceiptSettingsResponse>
  acknowledgmentOfReceiptSettings;

  /// The RosettaNet ProcessConfiguration activity behavior.
  final pulumi.Input<RosettaNetPipActivityBehaviorResponse> activityBehavior;

  /// The RosettaNet ProcessConfiguration activity type.
  final pulumi.Input<String> activityType;

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
      'acknowledgmentOfReceiptSettings':
          pulumi.Input.mapInputValue<
            RosettaNetPipAcknowledgmentOfReceiptSettingsResponse,
            Map<String, dynamic>
          >(acknowledgmentOfReceiptSettings, (value) => value.toMap()),
      'activityBehavior':
          pulumi.Input.mapInputValue<
            RosettaNetPipActivityBehaviorResponse,
            Map<String, dynamic>
          >(activityBehavior, (value) => value.toMap()),
      'activityType': activityType,
    };
  }

  factory RosettaNetPipActivitySettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return RosettaNetPipActivitySettingsResponse(
      acknowledgmentOfReceiptSettings: pulumi.Input.fromValue(
        RosettaNetPipAcknowledgmentOfReceiptSettingsResponse.fromMap(
          (map['acknowledgmentOfReceiptSettings']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      activityBehavior: pulumi.Input.fromValue(
        RosettaNetPipActivityBehaviorResponse.fromMap(
          (map['activityBehavior']! as Map).cast<String, dynamic>(),
        ),
      ),
      activityType: pulumi.Input.fromValue(map['activityType'] as String),
    );
  }
}
