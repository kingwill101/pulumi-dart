// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_state_change_reason_code_enum_value_response.dart';

/// Definition of ClusterStateChangeReason
class ClusterStateChangeReasonResponse {
  /// &lt;p&gt;The programmatic code for the state change reason.&lt;/p&gt;
  final pulumi.Input<ClusterStateChangeReasonCodeEnumValueResponse>? code;

  /// &lt;p&gt;The descriptive message for the state change reason.&lt;/p&gt;
  final pulumi.Input<String>? message;

  /// Creates a new [ClusterStateChangeReasonResponse].
  /// [code] &lt;p&gt;The programmatic code for the state change reason.&lt;/p&gt;
  /// [message] &lt;p&gt;The descriptive message for the state change reason.&lt;/p&gt;
  ClusterStateChangeReasonResponse({this.code, this.message});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterStateChangeReasonCodeEnumValueResponse,
            Map<String, dynamic>
          >(code, (value) => value.toMap()),
      'message': ?message,
    };
  }

  factory ClusterStateChangeReasonResponse.fromMap(Map<String, dynamic> map) {
    return ClusterStateChangeReasonResponse(
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterStateChangeReasonCodeEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
