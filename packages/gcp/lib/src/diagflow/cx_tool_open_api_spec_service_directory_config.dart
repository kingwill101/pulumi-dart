// ignore_for_file: unused_element, unnecessary_cast

class CxToolOpenApiSpecServiceDirectoryConfig {
  /// The name of [Service Directory](https://cloud.google.com/service-directory/docs) service.
  /// Format: projects/<ProjectID>/locations/<LocationID>/namespaces/<NamespaceID>/services/<ServiceID>. LocationID of the service directory must be the same as the location of the agent.
  final String service;

  /// Creates a new [CxToolOpenApiSpecServiceDirectoryConfig].
  /// [service] The name of [Service Directory](https://cloud.google.com/service-directory/docs) service.
  CxToolOpenApiSpecServiceDirectoryConfig({required this.service});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'service': service};
  }

  factory CxToolOpenApiSpecServiceDirectoryConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolOpenApiSpecServiceDirectoryConfig(
      service: map['service'] as String,
    );
  }
}
