// ignore_for_file: unused_element, unnecessary_cast


class ManagedZoneServiceDirectoryConfigNamespace {
  /// The fully qualified or partial URL of the service directory namespace that should be
  /// associated with the zone. This should be formatted like
  /// `https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace_id}`
  /// or simply `projects/{project}/locations/{location}/namespaces/{namespace_id}`
  /// Ignored for `public` visibility zones.
  final String namespaceUrl;

  /// Creates a new [ManagedZoneServiceDirectoryConfigNamespace].
  /// [namespaceUrl] The fully qualified or partial URL of the service directory namespace that should be
  ManagedZoneServiceDirectoryConfigNamespace({
    required this.namespaceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceUrl': namespaceUrl,
    };
  }

  factory ManagedZoneServiceDirectoryConfigNamespace.fromMap(Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfigNamespace(
      namespaceUrl: map['namespaceUrl'] as String,
    );
  }
}

