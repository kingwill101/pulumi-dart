// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_pool_machinelearningservices.dart';
import 'managed_service_identity.dart';
import 'sku.dart';

/// {@template pulumi_machinelearningservices_inference_pool_args_doc}
/// The set of arguments for InferencePool.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_inference_pool_args_doc}
class InferencePoolArgs {
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Name of InferencePool
  final pulumi.Input<String>? inferencePoolName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<InferencePoolMachinelearningservices> inferencePoolProperties;
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

  /// Creates a new [InferencePoolArgs].
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [inferencePoolName] Name of InferencePool
  /// [inferencePoolProperties] [Required] Additional attributes of the entity.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Sku details required for ARM contract for Autoscaling.
  /// [tags] Resource tags.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  InferencePoolArgs({
    ManagedServiceIdentity? identity,
    String? inferencePoolName,
    required InferencePoolMachinelearningservices inferencePoolProperties,
    String? kind,
    String? location,
    required String resourceGroupName,
    Sku? sku,
    Map<String, String>? tags,
    required String workspaceName,
  }) :
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      inferencePoolName = pulumi.Input.asOptionalInput<String>(inferencePoolName),
      inferencePoolProperties = pulumi.Input.asInput<InferencePoolMachinelearningservices>(inferencePoolProperties),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inferencePoolName': ?inferencePoolName,
      'inferencePoolProperties': inferencePoolProperties,
      'kind': ?kind,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory InferencePoolArgs.fromMap(Map<String, dynamic> map) {
    return InferencePoolArgs(
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      inferencePoolName: map['inferencePoolName'] == null ? null : map['inferencePoolName'] as String,
      inferencePoolProperties: map['inferencePoolProperties'] as InferencePoolMachinelearningservices,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workspaceName: map['workspaceName'] as String,
    );
  }
}

