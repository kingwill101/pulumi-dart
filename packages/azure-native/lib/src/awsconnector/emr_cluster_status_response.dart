// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_state_change_reason_response.dart';
import 'cluster_state_enum_value_response.dart';
import 'cluster_timeline_response.dart';
import 'error_detail_response.dart';

/// Definition of ClusterStatus
class EmrClusterStatusResponse {
  /// <p>A list of tuples that provides information about the errors that caused a cluster to terminate. This structure can contain up to 10 different <code>ErrorDetail</code> tuples.</p>
  final List<ErrorDetailResponse>? errorDetails;
  /// <p>The current state of the cluster.</p>
  final ClusterStateEnumValueResponse? state;
  /// <p>The reason for the cluster status change.</p>
  final ClusterStateChangeReasonResponse? stateChangeReason;
  /// <p>A timeline that represents the status of a cluster over the lifetime of the cluster.</p>
  final ClusterTimelineResponse? timeline;

  /// Creates a new [EmrClusterStatusResponse].
  /// [errorDetails] <p>A list of tuples that provides information about the errors that caused a cluster to terminate. This structure can contain up to 10 different <code>ErrorDetail</code> tuples.</p>
  /// [state] <p>The current state of the cluster.</p>
  /// [stateChangeReason] <p>The reason for the cluster status change.</p>
  /// [timeline] <p>A timeline that represents the status of a cluster over the lifetime of the cluster.</p>
  EmrClusterStatusResponse({
    this.errorDetails,
    this.state,
    this.stateChangeReason,
    this.timeline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': ?errorDetails == null ? null : pulumi.Input.encodeList<ErrorDetailResponse, Map<String, dynamic>>(errorDetails!, (value) => value.toMap()),
      'state': ?state == null ? null : state!.toMap(),
      'stateChangeReason': ?stateChangeReason == null ? null : stateChangeReason!.toMap(),
      'timeline': ?timeline == null ? null : timeline!.toMap(),
    };
  }

  factory EmrClusterStatusResponse.fromMap(Map<String, dynamic> map) {
    return EmrClusterStatusResponse(
      errorDetails: map['errorDetails'] == null ? null : pulumi.Input.decodeList<ErrorDetailResponse>(map['errorDetails'], (value) => ErrorDetailResponse.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : ClusterStateEnumValueResponse.fromMap((map['state'] as Map).cast<String, dynamic>()),
      stateChangeReason: map['stateChangeReason'] == null ? null : ClusterStateChangeReasonResponse.fromMap((map['stateChangeReason'] as Map).cast<String, dynamic>()),
      timeline: map['timeline'] == null ? null : ClusterTimelineResponse.fromMap((map['timeline'] as Map).cast<String, dynamic>()),
    );
  }
}

