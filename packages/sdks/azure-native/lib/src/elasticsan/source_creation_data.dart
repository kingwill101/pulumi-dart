// ignore_for_file: unused_element, unnecessary_cast


/// Data source used when creating the volume.
class SourceCreationData {
  /// This enumerates the possible sources of a volume creation.
  final String? createSource;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? sourceId;

  /// Creates a new [SourceCreationData].
  /// [createSource] This enumerates the possible sources of a volume creation.
  /// [sourceId] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  SourceCreationData({
    this.createSource,
    this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createSource': ?createSource,
      'sourceId': ?sourceId,
    };
  }

  factory SourceCreationData.fromMap(Map<String, dynamic> map) {
    return SourceCreationData(
      createSource: map['createSource'] == null ? null : map['createSource'] as String,
      sourceId: map['sourceId'] == null ? null : map['sourceId'] as String,
    );
  }
}

