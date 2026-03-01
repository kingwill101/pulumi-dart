// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_group_properties.dart';

/// {@template pulumi_iot_thing_group_thing_group_args_doc}
/// The set of arguments for ThingGroup.
/// {@endtemplate}
/// {@macro pulumi_iot_thing_group_thing_group_args_doc}
class ThingGroupArgs {
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

  /// Creates a new [ThingGroupArgs].
  /// [name] The name of the Thing Group.
  /// [parentGroupName] The name of the parent Thing Group.
  /// [properties] The Thing Group properties. Defined below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags
  ThingGroupArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentGroupName,
    pulumi.Output<ThingGroupProperties>? properties,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      parentGroupName = pulumi.Input.asOptionalInput<String>(parentGroupName),
      properties = pulumi.Input.asOptionalInput<ThingGroupProperties>(properties),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parentGroupName': ?parentGroupName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ThingGroupProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ThingGroupArgs.fromMap(Map<String, dynamic> map) {
    return ThingGroupArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentGroupName: map['parentGroupName'] == null ? null : pulumi.Output.create<String>(map['parentGroupName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ThingGroupProperties>(ThingGroupProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

