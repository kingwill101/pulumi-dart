// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../resource_set_resource/resource_set_resource.dart';

/// The set of arguments for ResourceSet.
class ResourceSetRoute53recoveryreadinessArgs {
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

  ResourceSetRoute53recoveryreadinessArgs({
    required this.resourceSetName,
    required this.resourceSetType,
    required this.resources,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceSetName'] = resourceSetName;
    map['resourceSetType'] = resourceSetType;
    map['resources'] = pulumi.Input.mapInputValue<List<ResourceSetResource>,
            List<Map<String, dynamic>>>(
        resources,
        (value) =>
            pulumi.Input.encodeList<ResourceSetResource, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ResourceSetRoute53recoveryreadinessArgs.fromMap(
      Map<String, dynamic> map) {
    return ResourceSetRoute53recoveryreadinessArgs(
      resourceSetName: pulumi.Input.asInput<String>(map['resourceSetName']),
      resourceSetType: pulumi.Input.asInput<String>(map['resourceSetType']),
      resources:
          pulumi.Input.asInput<List<ResourceSetResource>>(map['resources']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
