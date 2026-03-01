// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_state_change_reason.dart';
import 'cluster_state_enum_value.dart';
import 'cluster_timeline.dart';
import 'error_detail.dart';

/// Definition of ClusterStatus
class EmrClusterStatus {
  /// <p>A list of tuples that provides information about the errors that caused a cluster to terminate. This structure can contain up to 10 different <code>ErrorDetail</code> tuples.</p>
  final List<ErrorDetail>? errorDetails;
  /// <p>The current state of the cluster.</p>
  final ClusterStateEnumValue? state;
  /// <p>The reason for the cluster status change.</p>
  final ClusterStateChangeReason? stateChangeReason;
  /// <p>A timeline that represents the status of a cluster over the lifetime of the cluster.</p>
  final ClusterTimeline? timeline;

  /// Creates a new [EmrClusterStatus].
  /// [errorDetails] <p>A list of tuples that provides information about the errors that caused a cluster to terminate. This structure can contain up to 10 different <code>ErrorDetail</code> tuples.</p>
  /// [state] <p>The current state of the cluster.</p>
  /// [stateChangeReason] <p>The reason for the cluster status change.</p>
  /// [timeline] <p>A timeline that represents the status of a cluster over the lifetime of the cluster.</p>
  EmrClusterStatus({
    this.errorDetails,
    this.state,
    this.stateChangeReason,
    this.timeline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': ?errorDetails == null ? null : pulumi.Input.encodeList<ErrorDetail, Map<String, dynamic>>(errorDetails!, (value) => value.toMap()),
      'state': ?state == null ? null : state!.toMap(),
      'stateChangeReason': ?stateChangeReason == null ? null : stateChangeReason!.toMap(),
      'timeline': ?timeline == null ? null : timeline!.toMap(),
    };
  }

  factory EmrClusterStatus.fromMap(Map<String, dynamic> map) {
    return EmrClusterStatus(
      errorDetails: map['errorDetails'] == null ? null : pulumi.Input.decodeList<ErrorDetail>(map['errorDetails'], (value) => ErrorDetail.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : ClusterStateEnumValue.fromMap((map['state'] as Map).cast<String, dynamic>()),
      stateChangeReason: map['stateChangeReason'] == null ? null : ClusterStateChangeReason.fromMap((map['stateChangeReason'] as Map).cast<String, dynamic>()),
      timeline: map['timeline'] == null ? null : ClusterTimeline.fromMap((map['timeline'] as Map).cast<String, dynamic>()),
    );
  }
}

