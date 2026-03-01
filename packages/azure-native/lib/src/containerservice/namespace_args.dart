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
    String? location,
    String? namespaceName,
    NamespaceProperties? properties,
    required String resourceGroupName,
    required String resourceName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      properties = pulumi.Input.asOptionalInput<NamespaceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : map['location'] as String,
      namespaceName: map['namespaceName'] == null ? null : map['namespaceName'] as String,
      properties: map['properties'] == null ? null : NamespaceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

