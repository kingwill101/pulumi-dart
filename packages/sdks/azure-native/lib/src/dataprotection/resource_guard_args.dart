// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_guard_dataprotection.dart';

/// {@template pulumi_dataprotection_resource_guard_args_doc}
/// The set of arguments for ResourceGuard.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_resource_guard_args_doc}
class ResourceGuardArgs {
  /// Optional ETag.
  final pulumi.Input<String>? eTag;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// ResourceGuardResource properties
  final pulumi.Input<ResourceGuardDataprotection>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of ResourceGuard
  final pulumi.Input<String>? resourceGuardsName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceGuardArgs].
  /// [eTag] Optional ETag.
  /// [location] Resource location.
  /// [properties] ResourceGuardResource properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceGuardsName] The name of ResourceGuard
  /// [tags] Resource tags.
  ResourceGuardArgs({
    this.eTag,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.resourceGuardsName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'location': ?location,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
      'resourceGuardsName': ?resourceGuardsName,
      'tags': ?tags,
    };
  }

  factory ResourceGuardArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGuardArgs(
      eTag: map['eTag'] == null ? null : (map['eTag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (map['properties']! as ResourceGuardDataprotection).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceGuardsName: map['resourceGuardsName'] == null ? null : (map['resourceGuardsName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

