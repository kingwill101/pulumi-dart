// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceMappingProvisionedPollerConfig {
  /// Maximum number of event pollers this event source can scale up to. The range is between 1 and 2000.
  final pulumi.Input<int>? maximumPollers;
  /// Minimum number of event pollers this event source can scale down to. The range is between 1 and 200.
  final pulumi.Input<int>? minimumPollers;
  /// The name of the provisioned poller group used to group multiple ESMs within the event source's VPC to share Event Poller Unit (EPU) capacity. You can use this option to optimize Provisioned mode costs for your ESMs. You can group up to 100 ESMs per poller group and aggregate maximum pollers across all ESMs in a group cannot exceed 2000.
  final pulumi.Input<String>? pollerGroupName;

  /// Creates a new [EventSourceMappingProvisionedPollerConfig].
  /// [maximumPollers] Maximum number of event pollers this event source can scale up to. The range is between 1 and 2000.
  /// [minimumPollers] Minimum number of event pollers this event source can scale down to. The range is between 1 and 200.
  /// [pollerGroupName] The name of the provisioned poller group used to group multiple ESMs within the event source's VPC to share Event Poller Unit (EPU) capacity. You can use this option to optimize Provisioned mode costs for your ESMs. You can group up to 100 ESMs per poller group and aggregate maximum pollers across all ESMs in a group cannot exceed 2000.
  const EventSourceMappingProvisionedPollerConfig({
    this.maximumPollers,
    this.minimumPollers,
    this.pollerGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumPollers': ?maximumPollers,
      'minimumPollers': ?minimumPollers,
      'pollerGroupName': ?pollerGroupName,
    };
  }

  factory EventSourceMappingProvisionedPollerConfig.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingProvisionedPollerConfig(
      maximumPollers: (() { final guardedValue = map['maximumPollers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minimumPollers: (() { final guardedValue = map['minimumPollers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pollerGroupName: (() { final guardedValue = map['pollerGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

