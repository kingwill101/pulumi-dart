// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_plugin_location.dart';

/// Input properties used for looking up and filtering CustomPlugin resources.
class CustomPluginState {
  /// the Amazon Resource Name (ARN) of the custom plugin.
  final pulumi.Input<String>? arn;
  /// The type of the plugin file. Allowed values are `ZIP` and `JAR`.
  final pulumi.Input<String>? contentType;
  /// A summary description of the custom plugin.
  final pulumi.Input<String>? description;
  /// an ID of the latest successfully created revision of the custom plugin.
  final pulumi.Input<int>? latestRevision;
  /// Information about the location of a custom plugin. See `location` Block for details.
  final pulumi.Input<CustomPluginLocation>? location;
  /// The name of the custom plugin..
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// the state of the custom plugin.
  final pulumi.Input<String>? state;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CustomPluginState].
  /// [arn] the Amazon Resource Name (ARN) of the custom plugin.
  /// [contentType] The type of the plugin file. Allowed values are `ZIP` and `JAR`.
  /// [description] A summary description of the custom plugin.
  /// [latestRevision] an ID of the latest successfully created revision of the custom plugin.
  /// [location] Information about the location of a custom plugin. See `location` Block for details.
  /// [name] The name of the custom plugin..
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] the state of the custom plugin.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CustomPluginState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? description,
    pulumi.Output<int>? latestRevision,
    pulumi.Output<CustomPluginLocation>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      description = pulumi.Input.asOptionalInput<String>(description),
      latestRevision = pulumi.Input.asOptionalInput<int>(latestRevision),
      location = pulumi.Input.asOptionalInput<CustomPluginLocation>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'contentType': ?contentType,
      'description': ?description,
      'latestRevision': ?latestRevision,
      'location': ?pulumi.Input.mapOptionalInputValue<CustomPluginLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CustomPluginState.fromMap(Map<String, dynamic> map) {
    return CustomPluginState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      latestRevision: map['latestRevision'] == null ? null : pulumi.Output.create<int>(map['latestRevision'] as int),
      location: map['location'] == null ? null : pulumi.Output.create<CustomPluginLocation>(CustomPluginLocation.fromMap((map['location'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

