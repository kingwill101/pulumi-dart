// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskThrottleFiltersThrottleFilter {
  /// Sets the group name for the throttle filter applied to the disk device.
  final String group;

  /// Creates a new [DomainDevicesDiskThrottleFiltersThrottleFilter].
  /// [group] Sets the group name for the throttle filter applied to the disk device.
  DomainDevicesDiskThrottleFiltersThrottleFilter({
    required this.group,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
    };
  }

  factory DomainDevicesDiskThrottleFiltersThrottleFilter.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskThrottleFiltersThrottleFilter(
      group: map['group'] as String,
    );
  }
}

