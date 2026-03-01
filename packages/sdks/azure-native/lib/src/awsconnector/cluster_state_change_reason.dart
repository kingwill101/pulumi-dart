// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_state_change_reason_code_enum_value.dart';

/// Definition of ClusterStateChangeReason
class ClusterStateChangeReason {
  /// <p>The programmatic code for the state change reason.</p>
  final ClusterStateChangeReasonCodeEnumValue? code;
  /// <p>The descriptive message for the state change reason.</p>
  final String? message;

  /// Creates a new [ClusterStateChangeReason].
  /// [code] <p>The programmatic code for the state change reason.</p>
  /// [message] <p>The descriptive message for the state change reason.</p>
  ClusterStateChangeReason({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code == null ? null : code!.toMap(),
      'message': ?message,
    };
  }

  factory ClusterStateChangeReason.fromMap(Map<String, dynamic> map) {
    return ClusterStateChangeReason(
      code: map['code'] == null ? null : ClusterStateChangeReasonCodeEnumValue.fromMap((map['code'] as Map).cast<String, dynamic>()),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

