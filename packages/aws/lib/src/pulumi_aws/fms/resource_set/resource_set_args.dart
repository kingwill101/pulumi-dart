// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../resource_set_resource_set/resource_set_resource_set.dart';
import '../resource_set_timeouts/resource_set_timeouts.dart';

/// The set of arguments for ResourceSet.
class ResourceSetArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Details about the resource set to be created or updated. See `resource_set` Attribute Reference below.
  final pulumi.Input<List<ResourceSetResourceSet>>? resourceSets;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ResourceSetTimeouts>? timeouts;

  ResourceSetArgs({
    this.region,
    this.resourceSets,
    this.tags,
    this.timeouts,
  });

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
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceSets: pulumi.Input.asOptionalInput<List<ResourceSetResourceSet>>(
          map['resourceSets']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<ResourceSetTimeouts>(map['timeouts']),
    );
  }
}
