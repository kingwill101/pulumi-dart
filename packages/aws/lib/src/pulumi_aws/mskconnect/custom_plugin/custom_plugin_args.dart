// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../custom_plugin_location/custom_plugin_location.dart';

/// The set of arguments for CustomPlugin.
class CustomPluginArgs {
  /// The type of the plugin file. Allowed values are `ZIP` and `JAR`.
  final Input<String> contentType;

  /// A summary description of the custom plugin.
  final Input<String>? description;

  /// Information about the location of a custom plugin. See <span pulumi-lang-nodejs="`location`" pulumi-lang-dotnet="`Location`" pulumi-lang-go="`location`" pulumi-lang-python="`location`" pulumi-lang-yaml="`location`" pulumi-lang-java="`location`">`location`</span> Block for details.
  final Input<CustomPluginLocation> location;

  /// The name of the custom plugin..
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
        Input.mapInputValue<CustomPluginLocation, Map<String, dynamic>>(
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
      contentType: Input.asInput<String>(map['contentType']),
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asInput<CustomPluginLocation>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
