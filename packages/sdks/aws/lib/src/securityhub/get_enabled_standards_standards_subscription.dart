// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_enabled_standards_standards_subscription_standards_status_reason.dart';

class GetEnabledStandardsStandardsSubscription {
  /// ARN of the standard.
  final pulumi.Input<String> standardsArn;
  /// Whether you can retrieve information about and configure individual controls that apply to the standard. Valid values: `READY_FOR_UPDATES`, `NOT_READY_FOR_UPDATES`.
  final pulumi.Input<String> standardsControlsUpdatable;
  /// Key-value map of input for the standard.
  final pulumi.Input<Map<String, String>> standardsInputs;
  /// Status of your subscription to the standard. Valid values: `PENDING`, `READY`, `FAILED`, `DELETING`, `INCOMPLETE`.
  final pulumi.Input<String> standardsStatus;
  /// Reason for the current status. See below for details.
  final pulumi.Input<List<GetEnabledStandardsStandardsSubscriptionStandardsStatusReason>> standardsStatusReasons;
  /// ARN of the resource that represents your subscription to the standard.
  final pulumi.Input<String> standardsSubscriptionArn;

  /// Creates a new [GetEnabledStandardsStandardsSubscription].
  /// [standardsArn] ARN of the standard.
  /// [standardsControlsUpdatable] Whether you can retrieve information about and configure individual controls that apply to the standard. Valid values: `READY_FOR_UPDATES`, `NOT_READY_FOR_UPDATES`.
  /// [standardsInputs] Key-value map of input for the standard.
  /// [standardsStatus] Status of your subscription to the standard. Valid values: `PENDING`, `READY`, `FAILED`, `DELETING`, `INCOMPLETE`.
  /// [standardsStatusReasons] Reason for the current status. See below for details.
  /// [standardsSubscriptionArn] ARN of the resource that represents your subscription to the standard.
  const GetEnabledStandardsStandardsSubscription({
    required this.standardsArn,
    required this.standardsControlsUpdatable,
    required this.standardsInputs,
    required this.standardsStatus,
    required this.standardsStatusReasons,
    required this.standardsSubscriptionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'standardsArn': standardsArn,
      'standardsControlsUpdatable': standardsControlsUpdatable,
      'standardsInputs': standardsInputs,
      'standardsStatus': standardsStatus,
      'standardsStatusReasons': pulumi.Input.mapInputValue<List<GetEnabledStandardsStandardsSubscriptionStandardsStatusReason>, List<Map<String, dynamic>>>(standardsStatusReasons, (value) => pulumi.Input.encodeList<GetEnabledStandardsStandardsSubscriptionStandardsStatusReason, Map<String, dynamic>>(value, (value) => value.toMap())),
      'standardsSubscriptionArn': standardsSubscriptionArn,
    };
  }

  factory GetEnabledStandardsStandardsSubscription.fromMap(Map<String, dynamic> map) {
    return GetEnabledStandardsStandardsSubscription(
      standardsArn: pulumi.Input.fromValue(map['standardsArn'] as String),
      standardsControlsUpdatable: pulumi.Input.fromValue(map['standardsControlsUpdatable'] as String),
      standardsInputs: pulumi.Input.fromValue((map['standardsInputs'] as Map).cast<String, String>()),
      standardsStatus: pulumi.Input.fromValue(map['standardsStatus'] as String),
      standardsStatusReasons: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEnabledStandardsStandardsSubscriptionStandardsStatusReason>(map['standardsStatusReasons']!, (value) => GetEnabledStandardsStandardsSubscriptionStandardsStatusReason.fromMap((value as Map).cast<String, dynamic>()))),
      standardsSubscriptionArn: pulumi.Input.fromValue(map['standardsSubscriptionArn'] as String),
    );
  }
}
