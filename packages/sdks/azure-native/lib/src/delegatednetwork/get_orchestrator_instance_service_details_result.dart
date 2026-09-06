// ignore_for_file: unused_element, unnecessary_cast

import 'controller_details_response.dart';
import 'orchestrator_identity_response.dart';

/// Result data returned by getOrchestratorInstanceServiceDetails.
class GetOrchestratorInstanceServiceDetailsResult {
  /// K8s APIServer url. Either one of apiServerEndpoint or privateLinkResourceId can be specified
  final String? apiServerEndpoint;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// RootCA certificate of kubernetes cluster base64 encoded
  final String? clusterRootCA;
  /// Properties of the controller.
  final ControllerDetailsResponse? controllerDetails;
  /// An identifier that represents the resource.
  final String? id;
  /// The identity of the orchestrator
  final OrchestratorIdentityResponse? identity;
  /// The kind of workbook. Choices are user and shared.
  final String? kind;
  /// Location of the resource.
  final String? location;
  /// The name of the resource.
  final String? name;
  /// AAD ID used with apiserver
  final String? orchestratorAppId;
  /// TenantID of server App ID
  final String? orchestratorTenantId;
  /// private link arm resource id. Either one of apiServerEndpoint or privateLinkResourceId can be specified
  final String? privateLinkResourceId;
  /// The current state of orchestratorInstance resource.
  final String? provisioningState;
  /// Resource guid.
  final String? resourceGuid;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The type of resource.
  final String? type;

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
  const GetOrchestratorInstanceServiceDetailsResult({
    this.apiServerEndpoint,
    this.azureApiVersion,
    this.clusterRootCA,
    this.controllerDetails,
    this.id,
    this.identity,
    this.kind,
    this.location,
    this.name,
    this.orchestratorAppId,
    this.orchestratorTenantId,
    this.privateLinkResourceId,
    this.provisioningState,
    this.resourceGuid,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerEndpoint': ?apiServerEndpoint,
      'azureApiVersion': ?azureApiVersion,
      'clusterRootCA': ?clusterRootCA,
      'controllerDetails': ?controllerDetails?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'orchestratorAppId': ?orchestratorAppId,
      'orchestratorTenantId': ?orchestratorTenantId,
      'privateLinkResourceId': ?privateLinkResourceId,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetOrchestratorInstanceServiceDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetOrchestratorInstanceServiceDetailsResult(
      apiServerEndpoint: (() { final guardedValue = map['apiServerEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterRootCA: (() { final guardedValue = map['clusterRootCA']; if (guardedValue == null) return null; return guardedValue as String; })(),
      controllerDetails: (() { final guardedValue = map['controllerDetails']; if (guardedValue == null) return null; return ControllerDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return OrchestratorIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orchestratorAppId: (() { final guardedValue = map['orchestratorAppId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orchestratorTenantId: (() { final guardedValue = map['orchestratorTenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
