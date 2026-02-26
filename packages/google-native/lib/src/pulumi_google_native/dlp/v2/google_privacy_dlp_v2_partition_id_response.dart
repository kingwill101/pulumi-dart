// ignore_for_file: unused_element, unnecessary_cast

/// Datastore partition ID. A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty. A partition ID contains several dimensions: project ID and namespace ID.
class GooglePrivacyDlpV2PartitionIdResponse {
  /// If not empty, the ID of the namespace to which the entities belong.
  final String namespaceId;

  /// The ID of the project to which the entities belong.
  final String project;

  GooglePrivacyDlpV2PartitionIdResponse({
    required this.namespaceId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespaceId'] = namespaceId;
    map['project'] = project;
    return map;
  }

  factory GooglePrivacyDlpV2PartitionIdResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PartitionIdResponse(
      namespaceId: map['namespaceId'] as String,
      project: map['project'] as String,
    );
  }
}
