// ignore_for_file: unused_element, unnecessary_cast

import 'controller_details_response.dart';
import 'orchestrator_identity_response.dart';

/// Result data returned by getOrchestratorInstanceServiceDetails.
class GetOrchestratorInstanceServiceDetailsResult {
  /// K8s APIServer url. Either one of apiServerEndpoint or privateLinkResourceId can be specified
  final String? apiServerEndpoint;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// RootCA certificate of kubernetes cluster base64 encoded
  final String? clusterRootCA;
  /// Properties of the controller.
  final ControllerDetailsResponse controllerDetails;
  /// An identifier that represents the resource.
  final String id;
  /// The identity of the orchestrator
  final OrchestratorIdentityResponse? identity;
  /// The kind of workbook. Choices are user and shared.
  final String kind;
  /// Location of the resource.
  final String? location;
  /// The name of the resource.
  final String name;
  /// AAD ID used with apiserver
  final String? orchestratorAppId;
  /// TenantID of server App ID
  final String? orchestratorTenantId;
  /// private link arm resource id. Either one of apiServerEndpoint or privateLinkResourceId can be specified
  final String? privateLinkResourceId;
  /// The current state of orchestratorInstance resource.
  final String provisioningState;
  /// Resource guid.
  final String resourceGuid;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The type of resource.
  final String type;

  /// Creates a new [GetOrchestratorInstanceServiceDetailsResult].
  /// [apiServerEndpoint] K8s APIServer url. Either one of apiServerEndpoint or privateLinkResourceId can be specified
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterRootCA] RootCA certificate of kubernetes cluster base64 encoded
  /// [controllerDetails] Properties of the controller.
  /// [id] An identifier that represents the resource.
  /// [identity] The identity of the orchestrator
  /// [kind] The kind of workbook. Choices are user and shared.
  /// [location] Location of the resource.
  /// [name] The name of the resource.
  /// [orchestratorAppId] AAD ID used with apiserver
  /// [orchestratorTenantId] TenantID of server App ID
  /// [privateLinkResourceId] private link arm resource id. Either one of apiServerEndpoint or privateLinkResourceId can be specified
  /// [provisioningState] The current state of orchestratorInstance resource.
  /// [resourceGuid] Resource guid.
  /// [tags] The resource tags.
  /// [type] The type of resource.
  GetOrchestratorInstanceServiceDetailsResult({
    this.apiServerEndpoint,
    required this.azureApiVersion,
    this.clusterRootCA,
    required this.controllerDetails,
    required this.id,
    this.identity,
    required this.kind,
    this.location,
    required this.name,
    this.orchestratorAppId,
    this.orchestratorTenantId,
    this.privateLinkResourceId,
    required this.provisioningState,
    required this.resourceGuid,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerEndpoint': ?apiServerEndpoint,
      'azureApiVersion': azureApiVersion,
      'clusterRootCA': ?clusterRootCA,
      'controllerDetails': controllerDetails.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'kind': kind,
      'location': ?location,
      'name': name,
      'orchestratorAppId': ?orchestratorAppId,
      'orchestratorTenantId': ?orchestratorTenantId,
      'privateLinkResourceId': ?privateLinkResourceId,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetOrchestratorInstanceServiceDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetOrchestratorInstanceServiceDetailsResult(
      apiServerEndpoint: map['apiServerEndpoint'] == null ? null : map['apiServerEndpoint'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      clusterRootCA: map['clusterRootCA'] == null ? null : map['clusterRootCA'] as String,
      controllerDetails: ControllerDetailsResponse.fromMap((map['controllerDetails'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : OrchestratorIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      orchestratorAppId: map['orchestratorAppId'] == null ? null : map['orchestratorAppId'] as String,
      orchestratorTenantId: map['orchestratorTenantId'] == null ? null : map['orchestratorTenantId'] as String,
      privateLinkResourceId: map['privateLinkResourceId'] == null ? null : map['privateLinkResourceId'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

