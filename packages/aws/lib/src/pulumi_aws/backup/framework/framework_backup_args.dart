// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../framework_control/framework_control.dart';

/// The set of arguments for Framework.
class FrameworkBackupArgs {
  /// One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below.
  final pulumi.Input<List<FrameworkControl>> controls;

  /// The description of the framework with a maximum of 1,024 characters
  final pulumi.Input<String>? description;

  /// The unique name of the framework. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Metadata that you can assign to help organize the frameworks you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  FrameworkBackupArgs({
    required this.controls,
    this.description,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controls'] = pulumi.Input.mapInputValue<List<FrameworkControl>,
            List<Map<String, dynamic>>>(
        controls,
        (value) =>
            pulumi.Input.encodeList<FrameworkControl, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
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

  factory FrameworkBackupArgs.fromMap(Map<String, dynamic> map) {
    return FrameworkBackupArgs(
      controls: pulumi.Input.asInput<List<FrameworkControl>>(map['controls']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
