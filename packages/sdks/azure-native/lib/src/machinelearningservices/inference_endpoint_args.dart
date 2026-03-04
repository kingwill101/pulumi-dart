// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_endpoint_machinelearningservices.dart';
import 'managed_service_identity.dart';
import 'sku.dart';

/// {@template pulumi_machinelearningservices_inference_endpoint_args_doc}
/// The set of arguments for InferenceEndpoint.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_inference_endpoint_args_doc}
class InferenceEndpointArgs {
  /// InferenceEndpoint name.
  final pulumi.Input<String>? endpointName;

  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;

  /// [Required] Additional attributes of the entity.
  final pulumi.Input<InferenceEndpointMachinelearningservices>
  inferenceEndpointProperties;

  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// InferencePool name.
  final pulumi.Input<String> poolName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Sku details required for ARM contract for Autoscaling.
  final pulumi.Input<Sku>? sku;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [InferenceEndpointArgs].
  /// [endpointName] InferenceEndpoint name.
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [inferenceEndpointProperties] [Required] Additional attributes of the entity.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [location] The geo-location where the resource lives
  /// [poolName] InferencePool name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Sku details required for ARM contract for Autoscaling.
  /// [tags] Resource tags.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  InferenceEndpointArgs({
    this.endpointName,
    this.identity,
    required this.inferenceEndpointProperties,
    this.kind,
    this.location,
    required this.poolName,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': ?endpointName,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'inferenceEndpointProperties': inferenceEndpointProperties,
      'kind': ?kind,
      'location': ?location,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory InferenceEndpointArgs.fromMap(Map<String, dynamic> map) {
    return InferenceEndpointArgs(
      endpointName: (() {
        final guardedValue = map['endpointName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      inferenceEndpointProperties: pulumi.Input.fromValue(
        map['inferenceEndpointProperties']
            as InferenceEndpointMachinelearningservices,
      ),
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
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
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
