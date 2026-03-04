// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_deployment_machinelearningservices.dart';
import 'managed_service_identity.dart';
import 'sku.dart';

/// {@template pulumi_machinelearningservices_batch_deployment_args_doc}
/// The set of arguments for BatchDeployment.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_batch_deployment_args_doc}
class BatchDeploymentArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<BatchDeploymentMachinelearningservices>
  batchDeploymentProperties;

  /// The identifier for the Batch inference deployment.
  final pulumi.Input<String>? deploymentName;

  /// Inference endpoint name
  final pulumi.Input<String> endpointName;

  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;

  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Sku details required for ARM contract for Autoscaling.
  final pulumi.Input<Sku>? sku;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [BatchDeploymentArgs].
  /// [batchDeploymentProperties] [Required] Additional attributes of the entity.
  /// [deploymentName] The identifier for the Batch inference deployment.
  /// [endpointName] Inference endpoint name
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Sku details required for ARM contract for Autoscaling.
  /// [tags] Resource tags.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  BatchDeploymentArgs({
    required this.batchDeploymentProperties,
    this.deploymentName,
    required this.endpointName,
    this.identity,
    this.kind,
    this.location,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchDeploymentProperties': batchDeploymentProperties,
      'deploymentName': ?deploymentName,
      'endpointName': endpointName,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory BatchDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return BatchDeploymentArgs(
      batchDeploymentProperties: pulumi.Input.fromValue(
        map['batchDeploymentProperties']
            as BatchDeploymentMachinelearningservices,
      ),
      deploymentName: (() {
        final guardedValue = map['deploymentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Sku.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
