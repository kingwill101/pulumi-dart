// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../extension_action_point/extension_action_point.dart';
import '../extension_parameter/extension_parameter.dart';

/// The set of arguments for Extension.
class ExtensionArgs {
  /// The action points defined in the extension. Detailed below.
  final pulumi.Input<List<ExtensionActionPoint>> actionPoints;

  /// Information about the extension.
  final pulumi.Input<String>? description;

  /// A name for the extension. Each extension name in your account must be unique. Extension versions use the same name.
  final pulumi.Input<String>? name;

  /// The parameters accepted by the extension. You specify parameter values when you associate the extension to an AppConfig resource by using the CreateExtensionAssociation API action. For Lambda extension actions, these parameters are included in the Lambda request object. Detailed below.
  final pulumi.Input<List<ExtensionParameter>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ExtensionArgs({
    required this.actionPoints,
    this.description,
    this.name,
    this.parameters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionPoints'] = pulumi.Input.mapInputValue<List<ExtensionActionPoint>,
            List<Map<String, dynamic>>>(
        actionPoints,
        (value) =>
            pulumi.Input.encodeList<ExtensionActionPoint, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
              List<ExtensionParameter>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) =>
              pulumi.Input.encodeList<ExtensionParameter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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

  factory ExtensionArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionArgs(
      actionPoints:
          pulumi.Input.asInput<List<ExtensionActionPoint>>(map['actionPoints']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parameters: pulumi.Input.asOptionalInput<List<ExtensionParameter>>(
          map['parameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
