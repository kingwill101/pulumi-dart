// ignore_for_file: unused_element, unnecessary_cast

class ManagedZoneServiceDirectoryConfigNamespaceResponse {
  /// The time that the namespace backing this zone was deleted; an empty string if it still exists. This is in RFC3339 text format. Output only.
  final String deletionTime;
  final String kind;

  /// The fully qualified URL of the namespace associated with the zone. Format must be https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace}
  final String namespaceUrl;

  ManagedZoneServiceDirectoryConfigNamespaceResponse({
    required this.deletionTime,
    required this.kind,
    required this.namespaceUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deletionTime'] = deletionTime;
    map['kind'] = kind;
    map['namespaceUrl'] = namespaceUrl;
    return map;
  }

  factory ManagedZoneServiceDirectoryConfigNamespaceResponse.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfigNamespaceResponse(
      deletionTime: map['deletionTime'] as String,
      kind: map['kind'] as String,
      namespaceUrl: map['namespaceUrl'] as String,
    );
  }
}
