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
  final pulumi.Input<InferenceEndpointMachinelearningservices> inferenceEndpointProperties;
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
    pulumi.Output<String>? endpointName,
    pulumi.Output<ManagedServiceIdentity>? identity,
    required pulumi.Output<InferenceEndpointMachinelearningservices> inferenceEndpointProperties,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
  }) :
      endpointName = pulumi.Input.asOptionalInput<String>(endpointName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      inferenceEndpointProperties = pulumi.Input.asInput<InferenceEndpointMachinelearningservices>(inferenceEndpointProperties),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': ?endpointName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inferenceEndpointProperties': inferenceEndpointProperties,
      'kind': ?kind,
      'location': ?location,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory InferenceEndpointArgs.fromMap(Map<String, dynamic> map) {
    return InferenceEndpointArgs(
      endpointName: map['endpointName'] == null ? null : pulumi.Output.create<String>(map['endpointName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      inferenceEndpointProperties: pulumi.Output.create<InferenceEndpointMachinelearningservices>(map['inferenceEndpointProperties'] as InferenceEndpointMachinelearningservices),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

