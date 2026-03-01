// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_plugin_location.dart';

/// {@template pulumi_mskconnect_custom_plugin_custom_plugin_args_doc}
/// The set of arguments for CustomPlugin.
/// {@endtemplate}
/// {@macro pulumi_mskconnect_custom_plugin_custom_plugin_args_doc}
class CustomPluginArgs {
  /// The type of the plugin file. Allowed values are `ZIP` and `JAR`.
  final pulumi.Input<String> contentType;
  /// A summary description of the custom plugin.
  final pulumi.Input<String>? description;
  /// Information about the location of a custom plugin. See `location` Block for details.
  final pulumi.Input<CustomPluginLocation> location;
  /// The name of the custom plugin..
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CustomPluginArgs].
  /// [contentType] The type of the plugin file. Allowed values are `ZIP` and `JAR`.
  /// [description] A summary description of the custom plugin.
  /// [location] Information about the location of a custom plugin. See `location` Block for details.
  /// [name] The name of the custom plugin..
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CustomPluginArgs({
    required pulumi.Output<String> contentType,
    pulumi.Output<String>? description,
    required pulumi.Output<CustomPluginLocation> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      contentType = pulumi.Input.asInput<String>(contentType),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asInput<CustomPluginLocation>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'description': ?description,
      'location': pulumi.Input.mapInputValue<CustomPluginLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory CustomPluginArgs.fromMap(Map<String, dynamic> map) {
    return CustomPluginArgs(
      contentType: pulumi.Output.create<String>(map['contentType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: pulumi.Output.create<CustomPluginLocation>(CustomPluginLocation.fromMap((map['location'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

