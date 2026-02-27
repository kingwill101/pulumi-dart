// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../resource_set_resource/resource_set_resource.dart';

/// The set of arguments for ResourceSet.
class ResourceSetArgs2 {
  /// Unique name describing the resource set.
  final Input<String> resourceSetName;

  /// Type of the resources in the resource set.
  final Input<String> resourceSetType;

  /// List of resources to add to this resource set. See below.
  ///
  /// The following arguments are optional:
  final Input<List<ResourceSetResource>> resources;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final Input<Map<String, String>>? tags;

  ResourceSetArgs2({
    required this.resourceSetName,
    required this.resourceSetType,
    required this.resources,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceSetName'] = resourceSetName;
    map['resourceSetType'] = resourceSetType;
    map['resources'] = Input.mapInputValue<List<ResourceSetResource>,
            List<Map<String, dynamic>>>(
        resources,
        (value) => Input.encodeList<ResourceSetResource, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ResourceSetArgs2.fromMap(Map<String, dynamic> map) {
    return ResourceSetArgs2(
      resourceSetName: Input.asInput<String>(map['resourceSetName']),
      resourceSetType: Input.asInput<String>(map['resourceSetType']),
      resources: Input.asInput<List<ResourceSetResource>>(map['resources']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
