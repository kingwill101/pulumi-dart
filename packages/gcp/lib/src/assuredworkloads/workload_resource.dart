// ignore_for_file: unused_element, unnecessary_cast


class WorkloadResource {
  /// Resource identifier. For a project this represents project_number.
  final int? resourceId;
  /// Indicates the type of resource. Possible values: RESOURCE_TYPE_UNSPECIFIED, CONSUMER_PROJECT, ENCRYPTION_KEYS_PROJECT, KEYRING, CONSUMER_FOLDER
  final String? resourceType;

  /// Creates a new [WorkloadResource].
  /// [resourceId] Resource identifier. For a project this represents project_number.
  /// [resourceType] Indicates the type of resource. Possible values: RESOURCE_TYPE_UNSPECIFIED, CONSUMER_PROJECT, ENCRYPTION_KEYS_PROJECT, KEYRING, CONSUMER_FOLDER
  WorkloadResource({
    this.resourceId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
    };
  }

  factory WorkloadResource.fromMap(Map<String, dynamic> map) {
    return WorkloadResource(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as int,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}

