// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_online_deployment.dart';
import 'managed_service_identity.dart';
import 'sku.dart';

/// {@template pulumi_machinelearningservices_online_deployment_args_doc}
/// The set of arguments for OnlineDeployment.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_online_deployment_args_doc}
class OnlineDeploymentArgs {
  /// Inference Endpoint Deployment name.
  final pulumi.Input<String>? deploymentName;
  /// Inference endpoint name.
  final pulumi.Input<String> endpointName;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<KubernetesOnlineDeployment> onlineDeploymentProperties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Sku details required for ARM contract for Autoscaling.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [OnlineDeploymentArgs].
  /// [deploymentName] Inference Endpoint Deployment name.
  /// [endpointName] Inference endpoint name.
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [location] The geo-location where the resource lives
  /// [onlineDeploymentProperties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Sku details required for ARM contract for Autoscaling.
  /// [tags] Resource tags.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  OnlineDeploymentArgs({
    pulumi.Output<String>? deploymentName,
    required pulumi.Output<String> endpointName,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    required pulumi.Output<KubernetesOnlineDeployment> onlineDeploymentProperties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
  }) :
      deploymentName = pulumi.Input.asOptionalInput<String>(deploymentName),
      endpointName = pulumi.Input.asInput<String>(endpointName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      onlineDeploymentProperties = pulumi.Input.asInput<KubernetesOnlineDeployment>(onlineDeploymentProperties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': ?deploymentName,
      'endpointName': endpointName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'onlineDeploymentProperties': pulumi.Input.mapInputValue<KubernetesOnlineDeployment, Map<String, dynamic>>(onlineDeploymentProperties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory OnlineDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return OnlineDeploymentArgs(
      deploymentName: map['deploymentName'] == null ? null : pulumi.Output.create<String>(map['deploymentName'] as String),
      endpointName: pulumi.Output.create<String>(map['endpointName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      onlineDeploymentProperties: pulumi.Output.create<KubernetesOnlineDeployment>(KubernetesOnlineDeployment.fromMap((map['onlineDeploymentProperties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

