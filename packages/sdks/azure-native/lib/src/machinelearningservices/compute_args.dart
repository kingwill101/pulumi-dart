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
    this.computeName,
    this.identity,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    required this.workspaceName,
  });

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
      computeName: map['computeName'] == null ? null : (map['computeName']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (AKS.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

