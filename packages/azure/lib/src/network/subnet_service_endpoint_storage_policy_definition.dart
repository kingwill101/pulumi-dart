// ignore_for_file: unused_element, unnecessary_cast


class SubnetServiceEndpointStoragePolicyDefinition {
  /// The description of this Subnet Service Endpoint Storage Policy Definition.
  final String? description;
  /// The name which should be used for this Subnet Service Endpoint Storage Policy Definition.
  final String name;
  /// The type of service resources. Valid values are `Microsoft.Storage` or `Global`. When the `service_resources` property contains resource IDs, this property must be `Microsoft.Storage`. When the `service_resources` property contains Aliases, this property must be `Global`. Defaults to `Microsoft.Storage`.
  final String? service;
  /// Specifies a list of resources or aliases that this Subnet Service Endpoint Storage Policy Definition applies to.
  ///
  /// > **Note:** The `service_resources` property must contain either Aliases or Resource IDs, but not both.
  final List<String> serviceResources;

  /// Creates a new [SubnetServiceEndpointStoragePolicyDefinition].
  /// [description] The description of this Subnet Service Endpoint Storage Policy Definition.
  /// [name] The name which should be used for this Subnet Service Endpoint Storage Policy Definition.
  /// [service] The type of service resources. Valid values are `Microsoft.Storage` or `Global`. When the `service_resources` property contains resource IDs, this property must be `Microsoft.Storage`. When the `service_resources` property contains Aliases, this property must be `Global`. Defaults to `Microsoft.Storage`.
  /// [serviceResources] Specifies a list of resources or aliases that this Subnet Service Endpoint Storage Policy Definition applies to.
  SubnetServiceEndpointStoragePolicyDefinition({
    this.description,
    required this.name,
    this.service,
    required this.serviceResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'service': ?service,
      'serviceResources': serviceResources,
    };
  }

  factory SubnetServiceEndpointStoragePolicyDefinition.fromMap(Map<String, dynamic> map) {
    return SubnetServiceEndpointStoragePolicyDefinition(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      service: map['service'] == null ? null : map['service'] as String,
      serviceResources: (map['serviceResources'] as List).cast<String>(),
    );
  }
}

