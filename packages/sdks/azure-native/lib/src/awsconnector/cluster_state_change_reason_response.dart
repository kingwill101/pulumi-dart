// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_state_change_reason_code_enum_value_response.dart';

/// Definition of ClusterStateChangeReason
class ClusterStateChangeReasonResponse {
  /// <p>The programmatic code for the state change reason.</p>
  final ClusterStateChangeReasonCodeEnumValueResponse? code;
  /// <p>The descriptive message for the state change reason.</p>
  final String? message;

  /// Creates a new [ClusterStateChangeReasonResponse].
  /// [code] <p>The programmatic code for the state change reason.</p>
  /// [message] <p>The descriptive message for the state change reason.</p>
  ClusterStateChangeReasonResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code == null ? null : code!.toMap(),
      'message': ?message,
    };
  }

  factory ClusterStateChangeReasonResponse.fromMap(Map<String, dynamic> map) {
    return ClusterStateChangeReasonResponse(
      code: map['code'] == null ? null : ClusterStateChangeReasonCodeEnumValueResponse.fromMap((map['code'] as Map).cast<String, dynamic>()),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

