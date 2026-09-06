// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_state_change_reason_response.dart';
import 'cluster_state_enum_value_response.dart';
import 'cluster_timeline_response.dart';
import 'error_detail_response.dart';

/// Definition of ClusterStatus
class EmrClusterStatusResponse {
  /// &lt;p&gt;A list of tuples that provides information about the errors that caused a cluster to terminate. This structure can contain up to 10 different &lt;code&gt;ErrorDetail&lt;/code&gt; tuples.&lt;/p&gt;
  final pulumi.Input<List<ErrorDetailResponse>?>? errorDetails;
  /// &lt;p&gt;The current state of the cluster.&lt;/p&gt;
  final pulumi.Input<ClusterStateEnumValueResponse?>? state;
  /// &lt;p&gt;The reason for the cluster status change.&lt;/p&gt;
  final pulumi.Input<ClusterStateChangeReasonResponse?>? stateChangeReason;
  /// &lt;p&gt;A timeline that represents the status of a cluster over the lifetime of the cluster.&lt;/p&gt;
  final pulumi.Input<ClusterTimelineResponse?>? timeline;

  /// Creates a new [EmrClusterStatusResponse].
  /// [errorDetails] &lt;p&gt;A list of tuples that provides information about the errors that caused a cluster to terminate. This structure can contain up to 10 different &lt;code&gt;ErrorDetail&lt;/code&gt; tuples.&lt;/p&gt;
  /// [state] &lt;p&gt;The current state of the cluster.&lt;/p&gt;
  /// [stateChangeReason] &lt;p&gt;The reason for the cluster status change.&lt;/p&gt;
  /// [timeline] &lt;p&gt;A timeline that represents the status of a cluster over the lifetime of the cluster.&lt;/p&gt;
  const EmrClusterStatusResponse({
    this.errorDetails,
    this.state,
    this.stateChangeReason,
    this.timeline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': ?pulumi.Input.mapOptionalInputValue<List<ErrorDetailResponse>, List<Map<String, dynamic>>>(errorDetails, (value) => pulumi.Input.encodeList<ErrorDetailResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?pulumi.Input.mapOptionalInputValue<ClusterStateEnumValueResponse, Map<String, dynamic>>(state, (value) => value.toMap()),
      'stateChangeReason': ?pulumi.Input.mapOptionalInputValue<ClusterStateChangeReasonResponse, Map<String, dynamic>>(stateChangeReason, (value) => value.toMap()),
      'timeline': ?pulumi.Input.mapOptionalInputValue<ClusterTimelineResponse, Map<String, dynamic>>(timeline, (value) => value.toMap()),
    };
  }

  factory EmrClusterStatusResponse.fromMap(Map<String, dynamic> map) {
    return EmrClusterStatusResponse(
      errorDetails: (() { final guardedValue = map['errorDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorDetailResponse>(guardedValue, (value) => ErrorDetailResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStateEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stateChangeReason: (() { final guardedValue = map['stateChangeReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStateChangeReasonResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeline: (() { final guardedValue = map['timeline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterTimelineResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
