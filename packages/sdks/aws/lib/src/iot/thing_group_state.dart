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
    pulumi.Output<String>? arn,
    pulumi.Output<List<ThingGroupMetadata>>? metadatas,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentGroupName,
    pulumi.Output<ThingGroupProperties>? properties,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      metadatas = pulumi.Input.asOptionalInput<List<ThingGroupMetadata>>(metadatas),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentGroupName = pulumi.Input.asOptionalInput<String>(parentGroupName),
      properties = pulumi.Input.asOptionalInput<ThingGroupProperties>(properties),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      version = pulumi.Input.asOptionalInput<int>(version);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      metadatas: map['metadatas'] == null ? null : pulumi.Output.create<List<ThingGroupMetadata>>(pulumi.Input.decodeList<ThingGroupMetadata>(map['metadatas'], (value) => ThingGroupMetadata.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentGroupName: map['parentGroupName'] == null ? null : pulumi.Output.create<String>(map['parentGroupName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ThingGroupProperties>(ThingGroupProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

