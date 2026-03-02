// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_set_resource.dart';

/// Input properties used for looking up and filtering ResourceSet resources.
class ResourceSetState {
  /// ARN of the resource set
  /// * `resources.#.component_id` - Unique identified for DNS Target Resources, use for readiness checks.
  final pulumi.Input<String>? arn;
  /// Unique name describing the resource set.
  final pulumi.Input<String>? resourceSetName;
  /// Type of the resources in the resource set.
  final pulumi.Input<String>? resourceSetType;
  /// List of resources to add to this resource set. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<ResourceSetResource>>? resources;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ResourceSetState].
  /// [arn] ARN of the resource set
  /// [resourceSetName] Unique name describing the resource set.
  /// [resourceSetType] Type of the resources in the resource set.
  /// [resources] List of resources to add to this resource set. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ResourceSetState({
    this.arn,
    this.resourceSetName,
    this.resourceSetType,
    this.resources,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'resourceSetName': ?resourceSetName,
      'resourceSetType': ?resourceSetType,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<ResourceSetResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<ResourceSetResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ResourceSetState.fromMap(Map<String, dynamic> map) {
    return ResourceSetState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      resourceSetName: map['resourceSetName'] == null ? null : ((map['resourceSetName'] as String).input()).input(),
      resourceSetType: map['resourceSetType'] == null ? null : ((map['resourceSetType'] as String).input()).input(),
      resources: map['resources'] == null ? null : ((pulumi.Input.decodeList<ResourceSetResource>(map['resources']!, (value) => ResourceSetResource.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

