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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? resourceSetName,
    pulumi.Output<String>? resourceSetType,
    pulumi.Output<List<ResourceSetResource>>? resources,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      resourceSetName = pulumi.Input.asOptionalInput<String>(resourceSetName),
      resourceSetType = pulumi.Input.asOptionalInput<String>(resourceSetType),
      resources = pulumi.Input.asOptionalInput<List<ResourceSetResource>>(resources),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      resourceSetName: map['resourceSetName'] == null ? null : pulumi.Output.create<String>(map['resourceSetName'] as String),
      resourceSetType: map['resourceSetType'] == null ? null : pulumi.Output.create<String>(map['resourceSetType'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<ResourceSetResource>>(pulumi.Input.decodeList<ResourceSetResource>(map['resources'], (value) => ResourceSetResource.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

