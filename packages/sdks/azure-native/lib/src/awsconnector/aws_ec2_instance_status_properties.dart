// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_state.dart';
import 'instance_status_event.dart';
import 'instance_status_summary.dart';

/// Definition of awsEc2InstanceStatus
class AwsEc2InstanceStatusProperties {
  /// <p>The Availability Zone of the instance.</p>
  final String? availabilityZone;
  /// <p>Any scheduled events associated with the instance.</p>
  final List<InstanceStatusEvent>? events;
  /// <p>The ID of the instance.</p>
  final String? instanceId;
  /// <p>The intended state of the instance. <a>DescribeInstanceStatus</a> requires that an instance be in the <code>running</code> state.</p>
  final InstanceState? instanceState;
  /// <p>Reports impaired functionality that stems from issues internal to the instance, such as impaired reachability.</p>
  final InstanceStatusSummary? instanceStatus;
  /// <p>The Amazon Resource Name (ARN) of the Outpost.</p>
  final String? outpostArn;
  /// <p>Reports impaired functionality that stems from issues related to the systems that support an instance, such as hardware failures and network connectivity problems.</p>
  final InstanceStatusSummary? systemStatus;

  /// Creates a new [AwsEc2InstanceStatusProperties].
  /// [availabilityZone] <p>The Availability Zone of the instance.</p>
  /// [events] <p>Any scheduled events associated with the instance.</p>
  /// [instanceId] <p>The ID of the instance.</p>
  /// [instanceState] <p>The intended state of the instance. <a>DescribeInstanceStatus</a> requires that an instance be in the <code>running</code> state.</p>
  /// [instanceStatus] <p>Reports impaired functionality that stems from issues internal to the instance, such as impaired reachability.</p>
  /// [outpostArn] <p>The Amazon Resource Name (ARN) of the Outpost.</p>
  /// [systemStatus] <p>Reports impaired functionality that stems from issues related to the systems that support an instance, such as hardware failures and network connectivity problems.</p>
  AwsEc2InstanceStatusProperties({
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
      'events': ?events == null ? null : pulumi.Input.encodeList<InstanceStatusEvent, Map<String, dynamic>>(events!, (value) => value.toMap()),
      'instanceId': ?instanceId,
      'instanceState': ?instanceState == null ? null : instanceState!.toMap(),
      'instanceStatus': ?instanceStatus == null ? null : instanceStatus!.toMap(),
      'outpostArn': ?outpostArn,
      'systemStatus': ?systemStatus == null ? null : systemStatus!.toMap(),
    };
  }

  factory AwsEc2InstanceStatusProperties.fromMap(Map<String, dynamic> map) {
    return AwsEc2InstanceStatusProperties(
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      events: map['events'] == null ? null : pulumi.Input.decodeList<InstanceStatusEvent>(map['events'], (value) => InstanceStatusEvent.fromMap((value as Map).cast<String, dynamic>())),
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      instanceState: map['instanceState'] == null ? null : InstanceState.fromMap((map['instanceState'] as Map).cast<String, dynamic>()),
      instanceStatus: map['instanceStatus'] == null ? null : InstanceStatusSummary.fromMap((map['instanceStatus'] as Map).cast<String, dynamic>()),
      outpostArn: map['outpostArn'] == null ? null : map['outpostArn'] as String,
      systemStatus: map['systemStatus'] == null ? null : InstanceStatusSummary.fromMap((map['systemStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

