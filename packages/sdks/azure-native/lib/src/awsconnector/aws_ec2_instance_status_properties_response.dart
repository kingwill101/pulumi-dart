// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_state_response.dart';
import 'instance_status_event_response.dart';
import 'instance_status_summary_response.dart';

/// Definition of awsEc2InstanceStatus
class AwsEc2InstanceStatusPropertiesResponse {
  /// &lt;p&gt;The Availability Zone of the instance.&lt;/p&gt;
  final pulumi.Input<String>? availabilityZone;
  /// &lt;p&gt;Any scheduled events associated with the instance.&lt;/p&gt;
  final pulumi.Input<List<InstanceStatusEventResponse>>? events;
  /// &lt;p&gt;The ID of the instance.&lt;/p&gt;
  final pulumi.Input<String>? instanceId;
  /// &lt;p&gt;The intended state of the instance. &lt;a&gt;DescribeInstanceStatus&lt;/a&gt; requires that an instance be in the &lt;code&gt;running&lt;/code&gt; state.&lt;/p&gt;
  final pulumi.Input<InstanceStateResponse>? instanceState;
  /// &lt;p&gt;Reports impaired functionality that stems from issues internal to the instance, such as impaired reachability.&lt;/p&gt;
  final pulumi.Input<InstanceStatusSummaryResponse>? instanceStatus;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the Outpost.&lt;/p&gt;
  final pulumi.Input<String>? outpostArn;
  /// &lt;p&gt;Reports impaired functionality that stems from issues related to the systems that support an instance, such as hardware failures and network connectivity problems.&lt;/p&gt;
  final pulumi.Input<InstanceStatusSummaryResponse>? systemStatus;

  /// Creates a new [AwsEc2InstanceStatusPropertiesResponse].
  /// [availabilityZone] &lt;p&gt;The Availability Zone of the instance.&lt;/p&gt;
  /// [events] &lt;p&gt;Any scheduled events associated with the instance.&lt;/p&gt;
  /// [instanceId] &lt;p&gt;The ID of the instance.&lt;/p&gt;
  /// [instanceState] &lt;p&gt;The intended state of the instance. &lt;a&gt;DescribeInstanceStatus&lt;/a&gt; requires that an instance be in the &lt;code&gt;running&lt;/code&gt; state.&lt;/p&gt;
  /// [instanceStatus] &lt;p&gt;Reports impaired functionality that stems from issues internal to the instance, such as impaired reachability.&lt;/p&gt;
  /// [outpostArn] &lt;p&gt;The Amazon Resource Name (ARN) of the Outpost.&lt;/p&gt;
  /// [systemStatus] &lt;p&gt;Reports impaired functionality that stems from issues related to the systems that support an instance, such as hardware failures and network connectivity problems.&lt;/p&gt;
  const AwsEc2InstanceStatusPropertiesResponse({
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
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceStatusEventResponse>(guardedValue, (value) => InstanceStatusEventResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceState: (() { final guardedValue = map['instanceState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceStatus: (() { final guardedValue = map['instanceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceStatusSummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemStatus: (() { final guardedValue = map['systemStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceStatusSummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

