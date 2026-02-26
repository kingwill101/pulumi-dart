// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getManagedZone.
class GetManagedZoneResult {
  /// Created time.
  final String createTime;

  /// Optional. Description of the resource.
  final String description;

  /// DNS Name of the resource
  final String dns;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String> labels;

  /// Resource name of the Managed Zone. Format: projects/{project}/locations/global/managedZones/{managed_zone}
  final String name;

  /// The name of the Target Project
  final String targetProject;

  /// The name of the Target Project VPC Network
  final String targetVpc;

  /// Updated time.
  final String updateTime;

  GetManagedZoneResult({
    required this.createTime,
    required this.description,
    required this.dns,
    required this.labels,
    required this.name,
    required this.targetProject,
    required this.targetVpc,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['dns'] = dns;
    map['labels'] = labels;
    map['name'] = name;
    map['targetProject'] = targetProject;
    map['targetVpc'] = targetVpc;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetManagedZoneResult.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      dns: map['dns'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      targetProject: map['targetProject'] as String,
      targetVpc: map['targetVpc'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
