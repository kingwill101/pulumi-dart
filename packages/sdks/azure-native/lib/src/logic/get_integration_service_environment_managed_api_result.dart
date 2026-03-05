// ignore_for_file: unused_element, unnecessary_cast

import 'api_resource_backend_service_response.dart';
import 'api_resource_definitions_response.dart';
import 'api_resource_general_information_response.dart';
import 'api_resource_metadata_response.dart';
import 'api_resource_policies_response.dart';
import 'integration_service_environment_managed_api_deployment_parameters_response.dart';
import 'resource_reference_response.dart';

/// Result data returned by getIntegrationServiceEnvironmentManagedApi.
class GetIntegrationServiceEnvironmentManagedApiResult {
  /// The API definition.
  final String apiDefinitionUrl;
  /// The api definitions.
  final ApiResourceDefinitionsResponse apiDefinitions;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The backend service.
  final ApiResourceBackendServiceResponse backendService;
  /// The capabilities.
  final List<String> capabilities;
  /// The category.
  final String category;
  /// The connection parameters.
  final Map<String, dynamic> connectionParameters;
  /// The integration service environment managed api deployment parameters.
  final IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse? deploymentParameters;
  /// The api general information.
  final ApiResourceGeneralInformationResponse generalInformation;
  /// The resource id.
  final String id;
  /// The integration service environment reference.
  final ResourceReferenceResponse? integrationServiceEnvironment;
  /// The resource location.
  final String? location;
  /// The metadata.
  final ApiResourceMetadataResponse metadata;
  /// Gets the resource name.
  final String name;
  /// The policies for the API.
  final ApiResourcePoliciesResponse policies;
  /// The provisioning state.
  final String provisioningState;
  /// The runtime urls.
  final List<String> runtimeUrls;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String type;

  /// Creates a new [GetIntegrationServiceEnvironmentManagedApiResult].
  /// [apiDefinitionUrl] The API definition.
  /// [apiDefinitions] The api definitions.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backendService] The backend service.
  /// [capabilities] The capabilities.
  /// [category] The category.
  /// [connectionParameters] The connection parameters.
  /// [deploymentParameters] The integration service environment managed api deployment parameters.
  /// [generalInformation] The api general information.
  /// [id] The resource id.
  /// [integrationServiceEnvironment] The integration service environment reference.
  /// [location] The resource location.
  /// [metadata] The metadata.
  /// [name] Gets the resource name.
  /// [policies] The policies for the API.
  /// [provisioningState] The provisioning state.
  /// [runtimeUrls] The runtime urls.
  /// [tags] The resource tags.
  /// [type] Gets the resource type.
  GetIntegrationServiceEnvironmentManagedApiResult({
    required this.apiDefinitionUrl,
    required this.apiDefinitions,
    required this.azureApiVersion,
    required this.backendService,
    required this.capabilities,
    required this.category,
    required this.connectionParameters,
    this.deploymentParameters,
    required this.generalInformation,
    required this.id,
    this.integrationServiceEnvironment,
    this.location,
    required this.metadata,
    required this.name,
    required this.policies,
    required this.provisioningState,
    required this.runtimeUrls,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiDefinitionUrl': apiDefinitionUrl,
      'apiDefinitions': apiDefinitions.toMap(),
      'azureApiVersion': azureApiVersion,
      'backendService': backendService.toMap(),
      'capabilities': capabilities,
      'category': category,
      'connectionParameters': connectionParameters,
      'deploymentParameters': ?deploymentParameters?.toMap(),
      'generalInformation': generalInformation.toMap(),
      'id': id,
      'integrationServiceEnvironment': ?integrationServiceEnvironment?.toMap(),
      'location': ?location,
      'metadata': metadata.toMap(),
      'name': name,
      'policies': policies.toMap(),
      'provisioningState': provisioningState,
      'runtimeUrls': runtimeUrls,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIntegrationServiceEnvironmentManagedApiResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationServiceEnvironmentManagedApiResult(
      apiDefinitionUrl: map['apiDefinitionUrl'] as String,
      apiDefinitions: ApiResourceDefinitionsResponse.fromMap((map['apiDefinitions']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      backendService: ApiResourceBackendServiceResponse.fromMap((map['backendService']! as Map).cast<String, dynamic>()),
      capabilities: (map['capabilities'] as List).cast<String>(),
      category: map['category'] as String,
      connectionParameters: (map['connectionParameters'] as Map).cast<String, dynamic>(),
      deploymentParameters: (() { final guardedValue = map['deploymentParameters']; if (guardedValue == null) return null; return IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      generalInformation: ApiResourceGeneralInformationResponse.fromMap((map['generalInformation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      integrationServiceEnvironment: (() { final guardedValue = map['integrationServiceEnvironment']; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: ApiResourceMetadataResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      policies: ApiResourcePoliciesResponse.fromMap((map['policies']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      runtimeUrls: (map['runtimeUrls'] as List).cast<String>(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

