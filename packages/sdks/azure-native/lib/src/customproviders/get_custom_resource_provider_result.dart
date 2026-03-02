// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rpaction_route_definition_response.dart';
import 'custom_rpresource_type_route_definition_response.dart';
import 'custom_rpvalidations_response.dart';

/// Result data returned by getCustomResourceProvider.
class GetCustomResourceProviderResult {
  /// A list of actions that the custom resource provider implements.
  final List<CustomRPActionRouteDefinitionResponse>? actions;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id
  final String id;
  /// Resource location
  final String location;
  /// Resource name
  final String name;
  /// The provisioning state of the resource provider.
  final String provisioningState;
  /// A list of resource types that the custom resource provider implements.
  final List<CustomRPResourceTypeRouteDefinitionResponse>? resourceTypes;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String type;
  /// A list of validations to run on the custom resource provider's requests.
  final List<CustomRPValidationsResponse>? validations;

  /// Creates a new [GetCustomResourceProviderResult].
  /// [actions] A list of actions that the custom resource provider implements.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [location] Resource location
  /// [name] Resource name
  /// [provisioningState] The provisioning state of the resource provider.
  /// [resourceTypes] A list of resource types that the custom resource provider implements.
  /// [tags] Resource tags
  /// [type] Resource type
  /// [validations] A list of validations to run on the custom resource provider's requests.
  GetCustomResourceProviderResult({
    this.actions,
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.resourceTypes,
    this.tags,
    required this.type,
    this.validations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null ? null : pulumi.Input.encodeList<CustomRPActionRouteDefinitionResponse, Map<String, dynamic>>(actions!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceTypes': ?resourceTypes == null ? null : pulumi.Input.encodeList<CustomRPResourceTypeRouteDefinitionResponse, Map<String, dynamic>>(resourceTypes!, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
      'validations': ?validations == null ? null : pulumi.Input.encodeList<CustomRPValidationsResponse, Map<String, dynamic>>(validations!, (value) => value.toMap()),
    };
  }

  factory GetCustomResourceProviderResult.fromMap(Map<String, dynamic> map) {
    return GetCustomResourceProviderResult(
      actions: map['actions'] == null ? null : pulumi.Input.decodeList<CustomRPActionRouteDefinitionResponse>(map['actions']!, (value) => CustomRPActionRouteDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceTypes: map['resourceTypes'] == null ? null : pulumi.Input.decodeList<CustomRPResourceTypeRouteDefinitionResponse>(map['resourceTypes']!, (value) => CustomRPResourceTypeRouteDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      validations: map['validations'] == null ? null : pulumi.Input.decodeList<CustomRPValidationsResponse>(map['validations']!, (value) => CustomRPValidationsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

