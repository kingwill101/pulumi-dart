// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_type_properties.dart';

/// {@template pulumi_iot_thing_type_thing_type_args_doc}
/// The set of arguments for ThingType.
/// {@endtemplate}
/// {@macro pulumi_iot_thing_type_thing_type_args_doc}
class ThingTypeArgs {
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

  /// Creates a new [ThingTypeArgs].
  /// [deprecated] Whether the thing type is deprecated. If true, no new things could be associated with this type.
  /// [name] The name of the thing type.
  /// [properties] , Configuration block that can contain the following properties of the thing type:
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  ThingTypeArgs({
    bool? deprecated,
    String? name,
    ThingTypeProperties? properties,
    String? region,
    Map<String, String>? tags,
  }) :
      deprecated = pulumi.Input.asOptionalInput<bool>(deprecated),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<ThingTypeProperties>(properties),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deprecated': ?deprecated,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<ThingTypeProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ThingTypeArgs.fromMap(Map<String, dynamic> map) {
    return ThingTypeArgs(
      deprecated: map['deprecated'] == null ? null : map['deprecated'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : ThingTypeProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

