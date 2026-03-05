// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_state_change_reason.dart';
import 'cluster_state_enum_value.dart';
import 'cluster_timeline.dart';
import 'error_detail.dart';

/// Definition of ClusterStatus
class EmrClusterStatus {
  /// &lt;p&gt;A list of tuples that provides information about the errors that caused a cluster to terminate. This structure can contain up to 10 different &lt;code&gt;ErrorDetail&lt;/code&gt; tuples.&lt;/p&gt;
  final pulumi.Input<List<ErrorDetail>>? errorDetails;
  /// &lt;p&gt;The current state of the cluster.&lt;/p&gt;
  final pulumi.Input<ClusterStateEnumValue>? state;
  /// &lt;p&gt;The reason for the cluster status change.&lt;/p&gt;
  final pulumi.Input<ClusterStateChangeReason>? stateChangeReason;
  /// &lt;p&gt;A timeline that represents the status of a cluster over the lifetime of the cluster.&lt;/p&gt;
  final pulumi.Input<ClusterTimeline>? timeline;

  /// Creates a new [EmrClusterStatus].
  /// [errorDetails] &lt;p&gt;A list of tuples that provides information about the errors that caused a cluster to terminate. This structure can contain up to 10 different &lt;code&gt;ErrorDetail&lt;/code&gt; tuples.&lt;/p&gt;
  /// [state] &lt;p&gt;The current state of the cluster.&lt;/p&gt;
  /// [stateChangeReason] &lt;p&gt;The reason for the cluster status change.&lt;/p&gt;
  /// [timeline] &lt;p&gt;A timeline that represents the status of a cluster over the lifetime of the cluster.&lt;/p&gt;
  EmrClusterStatus({
    this.errorDetails,
    this.state,
    this.stateChangeReason,
    this.timeline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': ?pulumi.Input.mapOptionalInputValue<List<ErrorDetail>, List<Map<String, dynamic>>>(errorDetails, (value) => pulumi.Input.encodeList<ErrorDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?pulumi.Input.mapOptionalInputValue<ClusterStateEnumValue, Map<String, dynamic>>(state, (value) => value.toMap()),
      'stateChangeReason': ?pulumi.Input.mapOptionalInputValue<ClusterStateChangeReason, Map<String, dynamic>>(stateChangeReason, (value) => value.toMap()),
      'timeline': ?pulumi.Input.mapOptionalInputValue<ClusterTimeline, Map<String, dynamic>>(timeline, (value) => value.toMap()),
    };
  }

  factory EmrClusterStatus.fromMap(Map<String, dynamic> map) {
    return EmrClusterStatus(
      errorDetails: (() { final guardedValue = map['errorDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorDetail>(guardedValue, (value) => ErrorDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStateEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stateChangeReason: (() { final guardedValue = map['stateChangeReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStateChangeReason.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeline: (() { final guardedValue = map['timeline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterTimeline.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

