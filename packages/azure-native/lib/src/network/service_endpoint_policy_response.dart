// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_policy_definition_response.dart';
import 'subnet_response.dart';

/// Service End point policy resource.
class ServiceEndpointPolicyResponse {
  /// A collection of contextual service endpoint policy.
  final List<String>? contextualServiceEndpointPolicies;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Kind of service endpoint policy. This is metadata used for the Azure portal experience.
  final String kind;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The provisioning state of the service endpoint policy resource.
  final String provisioningState;
  /// The resource GUID property of the service endpoint policy resource.
  final String resourceGuid;
  /// The alias indicating if the policy belongs to a service
  final String? serviceAlias;
  /// A collection of service endpoint policy definitions of the service endpoint policy.
  final List<ServiceEndpointPolicyDefinitionResponse>? serviceEndpointPolicyDefinitions;
  /// A collection of references to subnets.
  final List<SubnetResponse> subnets;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [ServiceEndpointPolicyResponse].
  /// [contextualServiceEndpointPolicies] A collection of contextual service endpoint policy.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [kind] Kind of service endpoint policy. This is metadata used for the Azure portal experience.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the service endpoint policy resource.
  /// [resourceGuid] The resource GUID property of the service endpoint policy resource.
  /// [serviceAlias] The alias indicating if the policy belongs to a service
  /// [serviceEndpointPolicyDefinitions] A collection of service endpoint policy definitions of the service endpoint policy.
  /// [subnets] A collection of references to subnets.
  /// [tags] Resource tags.
  /// [type] Resource type.
  ServiceEndpointPolicyResponse({
    this.contextualServiceEndpointPolicies,
    required this.etag,
    this.id,
    required this.kind,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    this.serviceAlias,
    this.serviceEndpointPolicyDefinitions,
    required this.subnets,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextualServiceEndpointPolicies': ?contextualServiceEndpointPolicies,
      'etag': etag,
      'id': ?id,
      'kind': kind,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'serviceAlias': ?serviceAlias,
      'serviceEndpointPolicyDefinitions': ?serviceEndpointPolicyDefinitions == null ? null : pulumi.Input.encodeList<ServiceEndpointPolicyDefinitionResponse, Map<String, dynamic>>(serviceEndpointPolicyDefinitions!, (value) => value.toMap()),
      'subnets': pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(subnets, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory ServiceEndpointPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPolicyResponse(
      contextualServiceEndpointPolicies: map['contextualServiceEndpointPolicies'] == null ? null : (map['contextualServiceEndpointPolicies'] as List).cast<String>(),
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      serviceAlias: map['serviceAlias'] == null ? null : map['serviceAlias'] as String,
      serviceEndpointPolicyDefinitions: map['serviceEndpointPolicyDefinitions'] == null ? null : pulumi.Input.decodeList<ServiceEndpointPolicyDefinitionResponse>(map['serviceEndpointPolicyDefinitions'], (value) => ServiceEndpointPolicyDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      subnets: pulumi.Input.decodeList<SubnetResponse>(map['subnets'], (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

