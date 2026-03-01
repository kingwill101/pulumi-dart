// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsPartitionId {
  /// If not empty, the ID of the namespace to which the entities belong.
  final String? namespaceId;

  /// The ID of the project to which the entities belong.
  final String projectId;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsPartitionId].
  /// [namespaceId] If not empty, the ID of the namespace to which the entities belong.
  /// [projectId] The ID of the project to which the entities belong.
  PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsPartitionId({
    this.namespaceId,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': ?namespaceId,
      'projectId': projectId,
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsPartitionId.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsPartitionId(
      namespaceId: map['namespaceId'] == null
          ? null
          : map['namespaceId'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
