// ignore_for_file: unused_element, unnecessary_cast

class CxToolVersionToolOpenApiSpecServiceDirectoryConfig {
  /// The name of [Service Directory](https://cloud.google.com/service-directory/docs) service.
  /// Format: projects/<ProjectID>/locations/<LocationID>/namespaces/<NamespaceID>/services/<ServiceID>. LocationID of the service directory must be the same as the location of the agent.
  final String service;

  /// Creates a new [CxToolVersionToolOpenApiSpecServiceDirectoryConfig].
  /// [service] The name of [Service Directory](https://cloud.google.com/service-directory/docs) service.
  CxToolVersionToolOpenApiSpecServiceDirectoryConfig({required this.service});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'service': service};
  }

  factory CxToolVersionToolOpenApiSpecServiceDirectoryConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolVersionToolOpenApiSpecServiceDirectoryConfig(
      service: map['service'] as String,
    );
  }
}
