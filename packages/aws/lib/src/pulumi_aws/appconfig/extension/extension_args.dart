// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../extension_action_point/extension_action_point.dart';
import '../extension_parameter/extension_parameter.dart';

/// The set of arguments for Extension.
class ExtensionArgs {
  /// The action points defined in the extension. Detailed below.
  final Input<List<ExtensionActionPoint>> actionPoints;

  /// Information about the extension.
  final Input<String>? description;

  /// A name for the extension. Each extension name in your account must be unique. Extension versions use the same name.
  final Input<String>? name;

  /// The parameters accepted by the extension. You specify parameter values when you associate the extension to an AppConfig resource by using the CreateExtensionAssociation API action. For Lambda extension actions, these parameters are included in the Lambda request object. Detailed below.
  final Input<List<ExtensionParameter>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    map['actionPoints'] = Input.mapInputValue<List<ExtensionActionPoint>,
            List<Map<String, dynamic>>>(
        actionPoints,
        (value) => Input.encodeList<ExtensionActionPoint, Map<String, dynamic>>(
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
      map['parameters'] = Input.mapOptionalInputValue<List<ExtensionParameter>,
              List<Map<String, dynamic>>>(
          parametersValue,
          (value) => Input.encodeList<ExtensionParameter, Map<String, dynamic>>(
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
          Input.asInput<List<ExtensionActionPoint>>(map['actionPoints']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      parameters:
          Input.asOptionalInput<List<ExtensionParameter>>(map['parameters']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
