// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_state_change_reason_code_enum_value.dart';

/// Definition of ClusterStateChangeReason
class ClusterStateChangeReason {
  /// <p>The programmatic code for the state change reason.</p>
  final pulumi.Input<ClusterStateChangeReasonCodeEnumValue>? code;
  /// <p>The descriptive message for the state change reason.</p>
  final pulumi.Input<String>? message;

  /// Creates a new [ClusterStateChangeReason].
  /// [code] <p>The programmatic code for the state change reason.</p>
  /// [message] <p>The descriptive message for the state change reason.</p>
  ClusterStateChangeReason({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?pulumi.Input.mapOptionalInputValue<ClusterStateChangeReasonCodeEnumValue, Map<String, dynamic>>(code, (value) => value.toMap()),
      'message': ?message,
    };
  }

  factory ClusterStateChangeReason.fromMap(Map<String, dynamic> map) {
    return ClusterStateChangeReason(
      code: map['code'] == null ? null : (ClusterStateChangeReasonCodeEnumValue.fromMap((map['code']! as Map).cast<String, dynamic>())).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

