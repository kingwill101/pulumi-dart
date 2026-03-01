// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aks.dart';
import 'managed_service_identity.dart';
import 'sku.dart';

/// {@template pulumi_machinelearningservices_compute_args_doc}
/// The set of arguments for Compute.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_compute_args_doc}
class ComputeArgs {
  /// Name of the Azure Machine Learning compute.
  final pulumi.Input<String>? computeName;
  /// The identity of the resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;
  /// Compute properties
  final pulumi.Input<AKS>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The sku of the workspace.
  final pulumi.Input<Sku>? sku;
  /// Contains resource tags defined as key/value pairs.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ComputeArgs].
  /// [computeName] Name of the Azure Machine Learning compute.
  /// [identity] The identity of the resource.
  /// [location] Specifies the location of the resource.
  /// [properties] Compute properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The sku of the workspace.
  /// [tags] Contains resource tags defined as key/value pairs.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  ComputeArgs({
    pulumi.Output<String>? computeName,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<AKS>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
  }) :
      computeName = pulumi.Input.asOptionalInput<String>(computeName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<AKS>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeName': ?computeName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<AKS, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory ComputeArgs.fromMap(Map<String, dynamic> map) {
    return ComputeArgs(
      computeName: map['computeName'] == null ? null : pulumi.Output.create<String>(map['computeName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<AKS>(AKS.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

