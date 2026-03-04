// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_group_machinelearningservices.dart';
import 'managed_service_identity.dart';
import 'sku.dart';

/// {@template pulumi_machinelearningservices_inference_group_args_doc}
/// The set of arguments for InferenceGroup.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_inference_group_args_doc}
class InferenceGroupArgs {
  /// InferenceGroup name.
  final pulumi.Input<String>? groupName;

  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;

  /// [Required] Additional attributes of the entity.
  final pulumi.Input<InferenceGroupMachinelearningservices>
  inferenceGroupProperties;

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

  /// Creates a new [InferenceGroupArgs].
  /// [groupName] InferenceGroup name.
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [inferenceGroupProperties] [Required] Additional attributes of the entity.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [location] The geo-location where the resource lives
  /// [poolName] InferencePool name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Sku details required for ARM contract for Autoscaling.
  /// [tags] Resource tags.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  InferenceGroupArgs({
    this.groupName,
    this.identity,
    required this.inferenceGroupProperties,
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
      'groupName': ?groupName,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'inferenceGroupProperties': inferenceGroupProperties,
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

  factory InferenceGroupArgs.fromMap(Map<String, dynamic> map) {
    return InferenceGroupArgs(
      groupName: (() {
        final guardedValue = map['groupName'];
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
      inferenceGroupProperties: pulumi.Input.fromValue(
        map['inferenceGroupProperties']
            as InferenceGroupMachinelearningservices,
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
