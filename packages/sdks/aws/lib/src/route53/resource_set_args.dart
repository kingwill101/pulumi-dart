// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_set_resource.dart';

/// {@template pulumi_route53_recovery_readiness_resource_set_resource_set_args_doc}
/// The set of arguments for ResourceSet.
/// {@endtemplate}
/// {@macro pulumi_route53_recovery_readiness_resource_set_resource_set_args_doc}
class ResourceSetArgs {
  /// Unique name describing the resource set.
  final pulumi.Input<String> resourceSetName;
  /// Type of the resources in the resource set.
  final pulumi.Input<String> resourceSetType;
  /// List of resources to add to this resource set. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<ResourceSetResource>> resources;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceSetArgs].
  /// [resourceSetName] Unique name describing the resource set.
  /// [resourceSetType] Type of the resources in the resource set.
  /// [resources] List of resources to add to this resource set. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  ResourceSetArgs({
    required this.resourceSetName,
    required this.resourceSetType,
    required this.resources,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceSetName': resourceSetName,
      'resourceSetType': resourceSetType,
      'resources': pulumi.Input.mapInputValue<List<ResourceSetResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<ResourceSetResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory ResourceSetArgs.fromMap(Map<String, dynamic> map) {
    return ResourceSetArgs(
      resourceSetName: (map['resourceSetName'] as String).input(),
      resourceSetType: (map['resourceSetType'] as String).input(),
      resources: (pulumi.Input.decodeList<ResourceSetResource>(map['resources']!, (value) => ResourceSetResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

