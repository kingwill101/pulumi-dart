// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_properties.dart';

/// {@template pulumi_containerservice_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_containerservice_namespace_args_doc}
class NamespaceArgs {
  /// The location of the namespace.
  final pulumi.Input<String>? location;
  /// The name of the namespace.
  final pulumi.Input<String>? namespaceName;
  /// Properties of a namespace.
  final pulumi.Input<NamespaceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;
  /// The tags to be persisted on the managed cluster namespace.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NamespaceArgs].
  /// [location] The location of the namespace.
  /// [namespaceName] The name of the namespace.
  /// [properties] Properties of a namespace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [tags] The tags to be persisted on the managed cluster namespace.
  NamespaceArgs({
    this.location,
    this.namespaceName,
    this.properties,
    required this.resourceGroupName,
    required this.resourceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'namespaceName': ?namespaceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NamespaceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'tags': ?tags,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName']! as String).input(),
      properties: map['properties'] == null ? null : (NamespaceProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

