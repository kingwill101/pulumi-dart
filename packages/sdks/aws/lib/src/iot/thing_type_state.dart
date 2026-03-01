// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_type_properties.dart';

/// Input properties used for looking up and filtering ThingType resources.
class ThingTypeState {
  /// The ARN of the created AWS IoT Thing Type.
  final pulumi.Input<String>? arn;
  /// Whether the thing type is deprecated. If true, no new things could be associated with this type.
  final pulumi.Input<bool>? deprecated;
  /// The name of the thing type.
  final pulumi.Input<String>? name;
  /// , Configuration block that can contain the following properties of the thing type:
  final pulumi.Input<ThingTypeProperties>? properties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ThingTypeState].
  /// [arn] The ARN of the created AWS IoT Thing Type.
  /// [deprecated] Whether the thing type is deprecated. If true, no new things could be associated with this type.
  /// [name] The name of the thing type.
  /// [properties] , Configuration block that can contain the following properties of the thing type:
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ThingTypeState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? deprecated,
    pulumi.Output<String>? name,
    pulumi.Output<ThingTypeProperties>? properties,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      deprecated = pulumi.Input.asOptionalInput<bool>(deprecated),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<ThingTypeProperties>(properties),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deprecated': ?deprecated,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<ThingTypeProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ThingTypeState.fromMap(Map<String, dynamic> map) {
    return ThingTypeState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      deprecated: map['deprecated'] == null ? null : pulumi.Output.create<bool>(map['deprecated'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ThingTypeProperties>(ThingTypeProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

