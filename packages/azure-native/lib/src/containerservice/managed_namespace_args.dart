// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_properties.dart';

/// {@template pulumi_containerservice_managed_namespace_args_doc}
/// The set of arguments for ManagedNamespace.
/// {@endtemplate}
/// {@macro pulumi_containerservice_managed_namespace_args_doc}
class ManagedNamespaceArgs {
  /// The location of the namespace.
  final pulumi.Input<String>? location;
  /// The name of the managed namespace.
  final pulumi.Input<String>? managedNamespaceName;
  /// Properties of a namespace.
  final pulumi.Input<NamespaceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;
  /// The tags to be persisted on the managed cluster namespace.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedNamespaceArgs].
  /// [location] The location of the namespace.
  /// [managedNamespaceName] The name of the managed namespace.
  /// [properties] Properties of a namespace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [tags] The tags to be persisted on the managed cluster namespace.
  ManagedNamespaceArgs({
    String? location,
    String? managedNamespaceName,
    NamespaceProperties? properties,
    required String resourceGroupName,
    required String resourceName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      managedNamespaceName = pulumi.Input.asOptionalInput<String>(managedNamespaceName),
      properties = pulumi.Input.asOptionalInput<NamespaceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managedNamespaceName': ?managedNamespaceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NamespaceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'tags': ?tags,
    };
  }

  factory ManagedNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return ManagedNamespaceArgs(
      location: map['location'] == null ? null : map['location'] as String,
      managedNamespaceName: map['managedNamespaceName'] == null ? null : map['managedNamespaceName'] as String,
      properties: map['properties'] == null ? null : NamespaceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

