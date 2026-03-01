// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_set_resource_set.dart';
import 'resource_set_timeouts.dart';

/// Input properties used for looking up and filtering ResourceSet resources.
class ResourceSetState {
  /// ARN of the Resource Set.
  final pulumi.Input<String>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Details about the resource set to be created or updated. See `resource_set` Attribute Reference below.
  final pulumi.Input<List<ResourceSetResourceSet>>? resourceSets;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ResourceSetTimeouts>? timeouts;

  /// Creates a new [ResourceSetState].
  /// [arn] ARN of the Resource Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceSets] Details about the resource set to be created or updated. See `resource_set` Attribute Reference below.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  ResourceSetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? region,
    pulumi.Output<List<ResourceSetResourceSet>>? resourceSets,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ResourceSetTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceSets = pulumi.Input.asOptionalInput<List<ResourceSetResourceSet>>(resourceSets),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ResourceSetTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'region': ?region,
      'resourceSets': ?pulumi.Input.mapOptionalInputValue<List<ResourceSetResourceSet>, List<Map<String, dynamic>>>(resourceSets, (value) => pulumi.Input.encodeList<ResourceSetResourceSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ResourceSetTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ResourceSetState.fromMap(Map<String, dynamic> map) {
    return ResourceSetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceSets: map['resourceSets'] == null ? null : pulumi.Output.create<List<ResourceSetResourceSet>>(pulumi.Input.decodeList<ResourceSetResourceSet>(map['resourceSets'], (value) => ResourceSetResourceSet.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ResourceSetTimeouts>(ResourceSetTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

