// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_group_metadata.dart';
import 'thing_group_properties.dart';

/// Input properties used for looking up and filtering ThingGroup resources.
class ThingGroupState {
  /// The ARN of the Thing Group.
  final pulumi.Input<String>? arn;
  final pulumi.Input<List<ThingGroupMetadata>>? metadatas;
  /// The name of the Thing Group.
  final pulumi.Input<String>? name;
  /// The name of the parent Thing Group.
  final pulumi.Input<String>? parentGroupName;
  /// The Thing Group properties. Defined below.
  final pulumi.Input<ThingGroupProperties>? properties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The current version of the Thing Group record in the registry.
  final pulumi.Input<int>? version;

  /// Creates a new [ThingGroupState].
  /// [arn] The ARN of the Thing Group.
  /// [metadatas] Optional.
  /// [name] The name of the Thing Group.
  /// [parentGroupName] The name of the parent Thing Group.
  /// [properties] The Thing Group properties. Defined below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags
  /// [tagsAll] Optional.
  /// [version] The current version of the Thing Group record in the registry.
  ThingGroupState({
    this.arn,
    this.metadatas,
    this.name,
    this.parentGroupName,
    this.properties,
    this.region,
    this.tags,
    this.tagsAll,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'metadatas': ?pulumi.Input.mapOptionalInputValue<List<ThingGroupMetadata>, List<Map<String, dynamic>>>(metadatas, (value) => pulumi.Input.encodeList<ThingGroupMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'parentGroupName': ?parentGroupName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ThingGroupProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'version': ?version,
    };
  }

  factory ThingGroupState.fromMap(Map<String, dynamic> map) {
    return ThingGroupState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      metadatas: map['metadatas'] == null ? null : (pulumi.Input.decodeList<ThingGroupMetadata>(map['metadatas'], (value) => ThingGroupMetadata.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parentGroupName: map['parentGroupName'] == null ? null : (map['parentGroupName'] as String).input(),
      properties: map['properties'] == null ? null : (ThingGroupProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version'] as int).input(),
    );
  }
}

