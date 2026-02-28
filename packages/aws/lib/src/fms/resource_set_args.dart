// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_set_resource_set.dart';
import 'resource_set_timeouts.dart';

/// {@template pulumi_fms_resource_set_resource_set_args_doc}
/// The set of arguments for ResourceSet.
/// {@endtemplate}
/// {@macro pulumi_fms_resource_set_resource_set_args_doc}
class ResourceSetArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Details about the resource set to be created or updated. See `resource_set` Attribute Reference below.
  final pulumi.Input<List<ResourceSetResourceSet>>? resourceSets;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ResourceSetTimeouts>? timeouts;

  /// Creates a new [ResourceSetArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceSets] Details about the resource set to be created or updated. See `resource_set` Attribute Reference below.
  /// [tags] Optional.
  /// [timeouts] Optional.
  ResourceSetArgs({
    String? region,
    List<ResourceSetResourceSet>? resourceSets,
    Map<String, String>? tags,
    ResourceSetTimeouts? timeouts,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        resourceSets =
            pulumi.Input.asOptionalInput<List<ResourceSetResourceSet>>(
                resourceSets),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts = pulumi.Input.asOptionalInput<ResourceSetTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceSetsValue = resourceSets;
    if (resourceSetsValue != null) {
      map['resourceSets'] = pulumi.Input.mapOptionalInputValue<
              List<ResourceSetResourceSet>, List<Map<String, dynamic>>>(
          resourceSetsValue,
          (value) => pulumi.Input.encodeList<ResourceSetResourceSet,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<ResourceSetTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResourceSetArgs.fromMap(Map<String, dynamic> map) {
    return ResourceSetArgs(
      region: map['region'] == null ? null : map['region'] as String,
      resourceSets: map['resourceSets'] == null
          ? null
          : pulumi.Input.decodeList<ResourceSetResourceSet>(
              map['resourceSets'],
              (value) => ResourceSetResourceSet.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : ResourceSetTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
