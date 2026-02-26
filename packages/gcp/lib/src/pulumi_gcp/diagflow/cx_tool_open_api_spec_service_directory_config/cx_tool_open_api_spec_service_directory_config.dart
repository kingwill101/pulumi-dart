// ignore_for_file: unused_element, unnecessary_cast

class CxToolOpenApiSpecServiceDirectoryConfig {
  /// The name of [Service Directory](https://cloud.google.com/service-directory/docs) service.
  /// Format: projects/<ProjectID>/locations/<LocationID>/namespaces/<NamespaceID>/services/<ServiceID>. LocationID of the service directory must be the same as the location of the agent.
  final String service;

  CxToolOpenApiSpecServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['service'] = service;
    return map;
  }

  factory CxToolOpenApiSpecServiceDirectoryConfig.fromMap(
      Map<String, dynamic> map) {
    return CxToolOpenApiSpecServiceDirectoryConfig(
      service: map['service'] as String,
    );
  }
}
