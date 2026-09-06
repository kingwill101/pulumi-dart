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
  final String? apiDefinitionUrl;
  /// The api definitions.
  final ApiResourceDefinitionsResponse? apiDefinitions;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The backend service.
  final ApiResourceBackendServiceResponse? backendService;
  /// The capabilities.
  final List<String>? capabilities;
  /// The category.
  final String? category;
  /// The connection parameters.
  final Map<String, dynamic>? connectionParameters;
  /// The integration service environment managed api deployment parameters.
  final IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse? deploymentParameters;
  /// The api general information.
  final ApiResourceGeneralInformationResponse? generalInformation;
  /// The resource id.
  final String? id;
  /// The integration service environment reference.
  final ResourceReferenceResponse? integrationServiceEnvironment;
  /// The resource location.
  final String? location;
  /// The metadata.
  final ApiResourceMetadataResponse? metadata;
  /// Gets the resource name.
  final String? name;
  /// The policies for the API.
  final ApiResourcePoliciesResponse? policies;
  /// The provisioning state.
  final String? provisioningState;
  /// The runtime urls.
  final List<String>? runtimeUrls;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String? type;

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
  const GetIntegrationServiceEnvironmentManagedApiResult({
    this.apiDefinitionUrl,
    this.apiDefinitions,
    this.azureApiVersion,
    this.backendService,
    this.capabilities,
    this.category,
    this.connectionParameters,
    this.deploymentParameters,
    this.generalInformation,
    this.id,
    this.integrationServiceEnvironment,
    this.location,
    this.metadata,
    this.name,
    this.policies,
    this.provisioningState,
    this.runtimeUrls,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiDefinitionUrl': ?apiDefinitionUrl,
      'apiDefinitions': ?apiDefinitions?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'backendService': ?backendService?.toMap(),
      'capabilities': ?capabilities,
      'category': ?category,
      'connectionParameters': ?connectionParameters,
      'deploymentParameters': ?deploymentParameters?.toMap(),
      'generalInformation': ?generalInformation?.toMap(),
      'id': ?id,
      'integrationServiceEnvironment': ?integrationServiceEnvironment?.toMap(),
      'location': ?location,
      'metadata': ?metadata?.toMap(),
      'name': ?name,
      'policies': ?policies?.toMap(),
      'provisioningState': ?provisioningState,
      'runtimeUrls': ?runtimeUrls,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetIntegrationServiceEnvironmentManagedApiResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationServiceEnvironmentManagedApiResult(
      apiDefinitionUrl: (() { final guardedValue = map['apiDefinitionUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      apiDefinitions: (() { final guardedValue = map['apiDefinitions']; if (guardedValue == null) return null; return ApiResourceDefinitionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backendService: (() { final guardedValue = map['backendService']; if (guardedValue == null) return null; return ApiResourceBackendServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionParameters: (() { final guardedValue = map['connectionParameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      deploymentParameters: (() { final guardedValue = map['deploymentParameters']; if (guardedValue == null) return null; return IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      generalInformation: (() { final guardedValue = map['generalInformation']; if (guardedValue == null) return null; return ApiResourceGeneralInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      integrationServiceEnvironment: (() { final guardedValue = map['integrationServiceEnvironment']; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return ApiResourceMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return ApiResourcePoliciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeUrls: (() { final guardedValue = map['runtimeUrls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
