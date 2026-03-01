// ignore_for_file: unused_element, unnecessary_cast


/// Service Endpoint policy definitions.
class ServiceEndpointPolicyDefinitionResponse {
  /// A description for this rule. Restricted to 140 chars.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the service endpoint policy definition resource.
  final String provisioningState;
  /// Service endpoint name.
  final String? service;
  /// A list of service resources.
  final List<String>? serviceResources;
  /// The type of the resource.
  final String? type;

  /// Creates a new [ServiceEndpointPolicyDefinitionResponse].
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the service endpoint policy definition resource.
  /// [service] Service endpoint name.
  /// [serviceResources] A list of service resources.
  /// [type] The type of the resource.
  ServiceEndpointPolicyDefinitionResponse({
    this.description,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.service,
    this.serviceResources,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'service': ?service,
      'serviceResources': ?serviceResources,
      'type': ?type,
    };
  }

  factory ServiceEndpointPolicyDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPolicyDefinitionResponse(
      description: map['description'] == null ? null : map['description'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      service: map['service'] == null ? null : map['service'] as String,
      serviceResources: map['serviceResources'] == null ? null : (map['serviceResources'] as List).cast<String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

