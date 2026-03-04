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
    this.location,
    this.managedNamespaceName,
    this.properties,
    required this.resourceGroupName,
    required this.resourceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managedNamespaceName': ?managedNamespaceName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            NamespaceProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'tags': ?tags,
    };
  }

  factory ManagedNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return ManagedNamespaceArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedNamespaceName: (() {
        final guardedValue = map['managedNamespaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NamespaceProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
