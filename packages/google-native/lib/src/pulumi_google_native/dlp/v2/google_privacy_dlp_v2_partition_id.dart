// ignore_for_file: unused_element, unnecessary_cast

/// Datastore partition ID. A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty. A partition ID contains several dimensions: project ID and namespace ID.
class GooglePrivacyDlpV2PartitionId {
  /// If not empty, the ID of the namespace to which the entities belong.
  final String? namespaceId;

  /// The ID of the project to which the entities belong.
  final String? project;

  GooglePrivacyDlpV2PartitionId({
    this.namespaceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final namespaceIdValue = namespaceId;
    if (namespaceIdValue != null) {
      map['namespaceId'] = namespaceIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GooglePrivacyDlpV2PartitionId.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PartitionId(
      namespaceId:
          map['namespaceId'] == null ? null : map['namespaceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
