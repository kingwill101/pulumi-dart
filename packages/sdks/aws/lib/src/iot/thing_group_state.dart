// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_group_metadata.dart';
import 'thing_group_properties.dart';

/// Input properties used for looking up and filtering ThingGroup resources.
class ThingGroupState {
  /// The ARN of the Thing Group.
  final pulumi.Input<String?>? arn;
  final pulumi.Input<List<ThingGroupMetadata>?>? metadatas;
  /// The name of the Thing Group.
  final pulumi.Input<String?>? name;
  /// The name of the parent Thing Group.
  final pulumi.Input<String?>? parentGroupName;
  /// The Thing Group properties. Defined below.
  final pulumi.Input<ThingGroupProperties?>? properties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value mapping of resource tags
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The current version of the Thing Group record in the registry.
  final pulumi.Input<int?>? version;

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
  const ThingGroupState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadatas: (() { final guardedValue = map['metadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThingGroupMetadata>(guardedValue, (value) => ThingGroupMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentGroupName: (() { final guardedValue = map['parentGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThingGroupProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
