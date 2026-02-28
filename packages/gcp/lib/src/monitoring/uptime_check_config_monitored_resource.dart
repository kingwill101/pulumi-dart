// ignore_for_file: unused_element, unnecessary_cast

class UptimeCheckConfigMonitoredResource {
  /// Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels `project_id`, `instance_id`, and `zone`.
  final Map<String, String> labels;

  /// The monitored resource type. This field must match the type field of a [`MonitoredResourceDescriptor`](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.monitoredResourceDescriptors#MonitoredResourceDescriptor) object. For example, the type of a Compute Engine VM instance is `gce_instance`. For a list of types, see [Monitoring resource types](https://cloud.google.com/monitoring/api/resources) and [Logging resource types](https://cloud.google.com/logging/docs/api/v2/resource-list).
  final String type;

  /// Creates a new [UptimeCheckConfigMonitoredResource].
  /// [labels] Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels `project_id`, `instance_id`, and `zone`.
  /// [type] The monitored resource type. This field must match the type field of a [`MonitoredResourceDescriptor`](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.monitoredResourceDescriptors#MonitoredResourceDescriptor) object. For example, the type of a Compute Engine VM instance is `gce_instance`. For a list of types, see [Monitoring resource types](https://cloud.google.com/monitoring/api/resources) and [Logging resource types](https://cloud.google.com/logging/docs/api/v2/resource-list).
  UptimeCheckConfigMonitoredResource({
    required this.labels,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    map['type'] = type;
    return map;
  }

  factory UptimeCheckConfigMonitoredResource.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigMonitoredResource(
      labels: (map['labels'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
