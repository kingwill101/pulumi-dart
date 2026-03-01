// ignore_for_file: unused_element, unnecessary_cast

class ManagedZoneServiceDirectoryConfigNamespace {
  /// The time that the namespace backing this zone was deleted; an empty string if it still exists. This is in RFC3339 text format. Output only.
  final String? deletionTime;
  final String? kind;

  /// The fully qualified URL of the namespace associated with the zone. Format must be https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace}
  final String? namespaceUrl;

  /// Creates a new [ManagedZoneServiceDirectoryConfigNamespace].
  /// [deletionTime] The time that the namespace backing this zone was deleted; an empty string if it still exists. This is in RFC3339 text format. Output only.
  /// [kind] Optional.
  /// [namespaceUrl] The fully qualified URL of the namespace associated with the zone. Format must be https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace}
  ManagedZoneServiceDirectoryConfigNamespace({
    this.deletionTime,
    this.kind,
    this.namespaceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionTime': ?deletionTime,
      'kind': ?kind,
      'namespaceUrl': ?namespaceUrl,
    };
  }

  factory ManagedZoneServiceDirectoryConfigNamespace.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZoneServiceDirectoryConfigNamespace(
      deletionTime: map['deletionTime'] == null
          ? null
          : map['deletionTime'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      namespaceUrl: map['namespaceUrl'] == null
          ? null
          : map['namespaceUrl'] as String,
    );
  }
}
