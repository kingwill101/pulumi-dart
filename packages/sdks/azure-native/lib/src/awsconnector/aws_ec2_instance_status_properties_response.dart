// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_state_response.dart';
import 'instance_status_event_response.dart';
import 'instance_status_summary_response.dart';

/// Definition of awsEc2InstanceStatus
class AwsEc2InstanceStatusPropertiesResponse {
  /// <p>The Availability Zone of the instance.</p>
  final pulumi.Input<String>? availabilityZone;
  /// <p>Any scheduled events associated with the instance.</p>
  final pulumi.Input<List<InstanceStatusEventResponse>>? events;
  /// <p>The ID of the instance.</p>
  final pulumi.Input<String>? instanceId;
  /// <p>The intended state of the instance. <a>DescribeInstanceStatus</a> requires that an instance be in the <code>running</code> state.</p>
  final pulumi.Input<InstanceStateResponse>? instanceState;
  /// <p>Reports impaired functionality that stems from issues internal to the instance, such as impaired reachability.</p>
  final pulumi.Input<InstanceStatusSummaryResponse>? instanceStatus;
  /// <p>The Amazon Resource Name (ARN) of the Outpost.</p>
  final pulumi.Input<String>? outpostArn;
  /// <p>Reports impaired functionality that stems from issues related to the systems that support an instance, such as hardware failures and network connectivity problems.</p>
  final pulumi.Input<InstanceStatusSummaryResponse>? systemStatus;

  /// Creates a new [AwsEc2InstanceStatusPropertiesResponse].
  /// [availabilityZone] <p>The Availability Zone of the instance.</p>
  /// [events] <p>Any scheduled events associated with the instance.</p>
  /// [instanceId] <p>The ID of the instance.</p>
  /// [instanceState] <p>The intended state of the instance. <a>DescribeInstanceStatus</a> requires that an instance be in the <code>running</code> state.</p>
  /// [instanceStatus] <p>Reports impaired functionality that stems from issues internal to the instance, such as impaired reachability.</p>
  /// [outpostArn] <p>The Amazon Resource Name (ARN) of the Outpost.</p>
  /// [systemStatus] <p>Reports impaired functionality that stems from issues related to the systems that support an instance, such as hardware failures and network connectivity problems.</p>
  AwsEc2InstanceStatusPropertiesResponse({
    this.availabilityZone,
    this.events,
    this.instanceId,
    this.instanceState,
    this.instanceStatus,
    this.outpostArn,
    this.systemStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'events': ?pulumi.Input.mapOptionalInputValue<List<InstanceStatusEventResponse>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<InstanceStatusEventResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceId': ?instanceId,
      'instanceState': ?pulumi.Input.mapOptionalInputValue<InstanceStateResponse, Map<String, dynamic>>(instanceState, (value) => value.toMap()),
      'instanceStatus': ?pulumi.Input.mapOptionalInputValue<InstanceStatusSummaryResponse, Map<String, dynamic>>(instanceStatus, (value) => value.toMap()),
      'outpostArn': ?outpostArn,
      'systemStatus': ?pulumi.Input.mapOptionalInputValue<InstanceStatusSummaryResponse, Map<String, dynamic>>(systemStatus, (value) => value.toMap()),
    };
  }

  factory AwsEc2InstanceStatusPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2InstanceStatusPropertiesResponse(
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      events: map['events'] == null ? null : (pulumi.Input.decodeList<InstanceStatusEventResponse>(map['events'], (value) => InstanceStatusEventResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      instanceState: map['instanceState'] == null ? null : (InstanceStateResponse.fromMap((map['instanceState'] as Map).cast<String, dynamic>())).input(),
      instanceStatus: map['instanceStatus'] == null ? null : (InstanceStatusSummaryResponse.fromMap((map['instanceStatus'] as Map).cast<String, dynamic>())).input(),
      outpostArn: map['outpostArn'] == null ? null : (map['outpostArn'] as String).input(),
      systemStatus: map['systemStatus'] == null ? null : (InstanceStatusSummaryResponse.fromMap((map['systemStatus'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

