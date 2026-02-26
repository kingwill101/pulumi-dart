// ignore_for_file: unused_element, unnecessary_cast

class WorkloadResource {
  /// Resource identifier. For a project this represents project_number.
  final int? resourceId;

  /// Indicates the type of resource. Possible values: RESOURCE_TYPE_UNSPECIFIED, CONSUMER_PROJECT, ENCRYPTION_KEYS_PROJECT, KEYRING, CONSUMER_FOLDER
  final String? resourceType;

  WorkloadResource({
    this.resourceId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resourceIdValue = resourceId;
    if (resourceIdValue != null) {
      map['resourceId'] = resourceIdValue;
    }
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    return map;
  }

  factory WorkloadResource.fromMap(Map<String, dynamic> map) {
    return WorkloadResource(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as int,
      resourceType:
          map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}
