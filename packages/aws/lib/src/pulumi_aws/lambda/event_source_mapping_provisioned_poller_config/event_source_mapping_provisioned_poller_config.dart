// ignore_for_file: unused_element, unnecessary_cast

class EventSourceMappingProvisionedPollerConfig {
  /// Maximum number of event pollers this event source can scale up to. The range is between 1 and 2000.
  final int? maximumPollers;

  /// Minimum number of event pollers this event source can scale down to. The range is between 1 and 200.
  final int? minimumPollers;

  /// The name of the provisioned poller group used to group multiple ESMs within the event source's VPC to share Event Poller Unit (EPU) capacity. You can use this option to optimize Provisioned mode costs for your ESMs. You can group up to 100 ESMs per poller group and aggregate maximum pollers across all ESMs in a group cannot exceed 2000.
  final String? pollerGroupName;

  EventSourceMappingProvisionedPollerConfig({
    this.maximumPollers,
    this.minimumPollers,
    this.pollerGroupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maximumPollersValue = maximumPollers;
    if (maximumPollersValue != null) {
      map['maximumPollers'] = maximumPollersValue;
    }
    final minimumPollersValue = minimumPollers;
    if (minimumPollersValue != null) {
      map['minimumPollers'] = minimumPollersValue;
    }
    final pollerGroupNameValue = pollerGroupName;
    if (pollerGroupNameValue != null) {
      map['pollerGroupName'] = pollerGroupNameValue;
    }
    return map;
  }

  factory EventSourceMappingProvisionedPollerConfig.fromMap(
      Map<String, dynamic> map) {
    return EventSourceMappingProvisionedPollerConfig(
      maximumPollers:
          map['maximumPollers'] == null ? null : map['maximumPollers'] as int,
      minimumPollers:
          map['minimumPollers'] == null ? null : map['minimumPollers'] as int,
      pollerGroupName: map['pollerGroupName'] == null
          ? null
          : map['pollerGroupName'] as String,
    );
  }
}
