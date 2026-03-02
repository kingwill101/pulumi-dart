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
  OrchestratorInstanceServiceDetailsArgs({
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
      apiServerEndpoint: map['apiServerEndpoint'] == null ? null : (map['apiServerEndpoint'] as String).input(),
      clusterRootCA: map['clusterRootCA'] == null ? null : (map['clusterRootCA'] as String).input(),
      controllerDetails: (map['controllerDetails'] as ControllerDetailsDelegatednetwork).input(),
      identity: map['identity'] == null ? null : (OrchestratorIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      kind: (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      orchestratorAppId: map['orchestratorAppId'] == null ? null : (map['orchestratorAppId'] as String).input(),
      orchestratorTenantId: map['orchestratorTenantId'] == null ? null : (map['orchestratorTenantId'] as String).input(),
      privateLinkResourceId: map['privateLinkResourceId'] == null ? null : (map['privateLinkResourceId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

