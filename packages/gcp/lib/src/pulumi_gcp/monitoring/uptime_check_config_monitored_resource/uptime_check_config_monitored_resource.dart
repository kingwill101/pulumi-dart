// ignore_for_file: unused_element, unnecessary_cast

class UptimeCheckConfigMonitoredResource {
  /// Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels <span pulumi-lang-nodejs="`projectId`" pulumi-lang-dotnet="`ProjectId`" pulumi-lang-go="`projectId`" pulumi-lang-python="`project_id`" pulumi-lang-yaml="`projectId`" pulumi-lang-java="`projectId`">`project_id`</span>, <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span>, and <span pulumi-lang-nodejs="`zone`" pulumi-lang-dotnet="`Zone`" pulumi-lang-go="`zone`" pulumi-lang-python="`zone`" pulumi-lang-yaml="`zone`" pulumi-lang-java="`zone`">`zone`</span>.
  final Map<String, String> labels;

  /// The monitored resource type. This field must match the type field of a [`MonitoredResourceDescriptor`](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.monitoredResourceDescriptors#MonitoredResourceDescriptor) object. For example, the type of a Compute Engine VM instance is <span pulumi-lang-nodejs="`gceInstance`" pulumi-lang-dotnet="`GceInstance`" pulumi-lang-go="`gceInstance`" pulumi-lang-python="`gce_instance`" pulumi-lang-yaml="`gceInstance`" pulumi-lang-java="`gceInstance`">`gce_instance`</span>. For a list of types, see [Monitoring resource types](https://cloud.google.com/monitoring/api/resources) and [Logging resource types](https://cloud.google.com/logging/docs/api/v2/resource-list).
  final String type;

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
