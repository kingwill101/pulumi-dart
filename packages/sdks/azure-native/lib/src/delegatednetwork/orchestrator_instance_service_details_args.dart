// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'controller_details_delegatednetwork.dart';
import 'orchestrator_identity.dart';

/// {@template pulumi_delegatednetwork_orchestrator_instance_service_details_args_doc}
/// The set of arguments for OrchestratorInstanceServiceDetails.
/// {@endtemplate}
/// {@macro pulumi_delegatednetwork_orchestrator_instance_service_details_args_doc}
class OrchestratorInstanceServiceDetailsArgs {
  /// K8s APIServer url. Either one of apiServerEndpoint or privateLinkResourceId can be specified
  final pulumi.Input<String>? apiServerEndpoint;
  /// RootCA certificate of kubernetes cluster base64 encoded
  final pulumi.Input<String>? clusterRootCA;
  /// Properties of the controller.
  final pulumi.Input<ControllerDetailsDelegatednetwork> controllerDetails;
  /// The identity of the orchestrator
  final pulumi.Input<OrchestratorIdentity>? identity;
  /// The kind of workbook. Choices are user and shared.
  final pulumi.Input<String> kind;
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// AAD ID used with apiserver
  final pulumi.Input<String>? orchestratorAppId;
  /// TenantID of server App ID
  final pulumi.Input<String>? orchestratorTenantId;
  /// private link arm resource id. Either one of apiServerEndpoint or privateLinkResourceId can be specified
  final pulumi.Input<String>? privateLinkResourceId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String>? resourceName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [OrchestratorInstanceServiceDetailsArgs].
  /// [apiServerEndpoint] K8s APIServer url. Either one of apiServerEndpoint or privateLinkResourceId can be specified
  /// [clusterRootCA] RootCA certificate of kubernetes cluster base64 encoded
  /// [controllerDetails] Properties of the controller.
  /// [identity] The identity of the orchestrator
  /// [kind] The kind of workbook. Choices are user and shared.
  /// [location] Location of the resource.
  /// [orchestratorAppId] AAD ID used with apiserver
  /// [orchestratorTenantId] TenantID of server App ID
  /// [privateLinkResourceId] private link arm resource id. Either one of apiServerEndpoint or privateLinkResourceId can be specified
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource. It must be a minimum of 3 characters, and a maximum of 63.
  /// [tags] The resource tags.
  const OrchestratorInstanceServiceDetailsArgs({
    this.apiServerEndpoint,
    this.clusterRootCA,
    required this.controllerDetails,
    this.identity,
    required this.kind,
    this.location,
    this.orchestratorAppId,
    this.orchestratorTenantId,
    this.privateLinkResourceId,
    required this.resourceGroupName,
    this.resourceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerEndpoint': ?apiServerEndpoint,
      'clusterRootCA': ?clusterRootCA,
      'controllerDetails': controllerDetails,
      'identity': ?pulumi.Input.mapOptionalInputValue<OrchestratorIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': kind,
      'location': ?location,
      'orchestratorAppId': ?orchestratorAppId,
      'orchestratorTenantId': ?orchestratorTenantId,
      'privateLinkResourceId': ?privateLinkResourceId,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory OrchestratorInstanceServiceDetailsArgs.fromMap(Map<String, dynamic> map) {
    return OrchestratorInstanceServiceDetailsArgs(
      apiServerEndpoint: (() { final guardedValue = map['apiServerEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterRootCA: (() { final guardedValue = map['clusterRootCA']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controllerDetails: pulumi.Input.fromValue(map['controllerDetails'] as ControllerDetailsDelegatednetwork),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratorIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orchestratorAppId: (() { final guardedValue = map['orchestratorAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orchestratorTenantId: (() { final guardedValue = map['orchestratorTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
