// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnabledStandardsStandardsSubscriptionStandardsStatusReason {
  /// Reason code that represents the reason for the current status of a standard subscription. Valid values: `NO_AVAILABLE_CONFIGURATION_RECORDER`, `MAXIMUM_NUMBER_OF_CONFIG_RULES_EXCEEDED`, `INTERNAL_ERROR`.
  final pulumi.Input<String> statusReasonCode;

  /// Creates a new [GetEnabledStandardsStandardsSubscriptionStandardsStatusReason].
  /// [statusReasonCode] Reason code that represents the reason for the current status of a standard subscription. Valid values: `NO_AVAILABLE_CONFIGURATION_RECORDER`, `MAXIMUM_NUMBER_OF_CONFIG_RULES_EXCEEDED`, `INTERNAL_ERROR`.
  const GetEnabledStandardsStandardsSubscriptionStandardsStatusReason({
    required this.statusReasonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusReasonCode': statusReasonCode,
    };
  }

  factory GetEnabledStandardsStandardsSubscriptionStandardsStatusReason.fromMap(Map<String, dynamic> map) {
    return GetEnabledStandardsStandardsSubscriptionStandardsStatusReason(
      statusReasonCode: pulumi.Input.fromValue(map['statusReasonCode'] as String),
    );
  }
}
