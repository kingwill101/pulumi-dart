// ignore_for_file: unused_element, unnecessary_cast

class ManagedZoneServiceDirectoryConfigNamespace {
  /// The fully qualified or partial URL of the service directory namespace that should be
  /// associated with the zone. This should be formatted like
  /// `https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace_id}`
  /// or simply `projects/{project}/locations/{location}/namespaces/{namespace_id}`
  /// Ignored for <span pulumi-lang-nodejs="`public`" pulumi-lang-dotnet="`Public`" pulumi-lang-go="`public`" pulumi-lang-python="`public`" pulumi-lang-yaml="`public`" pulumi-lang-java="`public`">`public`</span> visibility zones.
  final String namespaceUrl;

  ManagedZoneServiceDirectoryConfigNamespace({
    required this.namespaceUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespaceUrl'] = namespaceUrl;
    return map;
  }

  factory ManagedZoneServiceDirectoryConfigNamespace.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfigNamespace(
      namespaceUrl: map['namespaceUrl'] as String,
    );
  }
}
