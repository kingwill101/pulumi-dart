// ignore_for_file: unused_element, unnecessary_cast

class ResourceConfigurationResourceConfigurationDefinitionIpResource {
  /// The IP Address of the Resource for this configuration.
  final String ipAddress;

  ResourceConfigurationResourceConfigurationDefinitionIpResource({
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    return map;
  }

  factory ResourceConfigurationResourceConfigurationDefinitionIpResource.fromMap(
      Map<String, dynamic> map) {
    return ResourceConfigurationResourceConfigurationDefinitionIpResource(
      ipAddress: map['ipAddress'] as String,
    );
  }
}
