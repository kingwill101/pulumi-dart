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
    this.region,
    this.resourceSets,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceSets': ?pulumi.Input.mapOptionalInputValue<List<ResourceSetResourceSet>, List<Map<String, dynamic>>>(resourceSets, (value) => pulumi.Input.encodeList<ResourceSetResourceSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ResourceSetTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ResourceSetArgs.fromMap(Map<String, dynamic> map) {
    return ResourceSetArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceSets: map['resourceSets'] == null ? null : ((pulumi.Input.decodeList<ResourceSetResourceSet>(map['resourceSets']!, (value) => ResourceSetResourceSet.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ResourceSetTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

