// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../custom_plugin_location/custom_plugin_location.dart';

/// The set of arguments for CustomPlugin.
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

  CustomPluginArgs({
    required this.contentType,
    this.description,
    required this.location,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentType'] = contentType;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['location'] =
        pulumi.Input.mapInputValue<CustomPluginLocation, Map<String, dynamic>>(
            location, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CustomPluginArgs.fromMap(Map<String, dynamic> map) {
    return CustomPluginArgs(
      contentType: pulumi.Input.asInput<String>(map['contentType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asInput<CustomPluginLocation>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
