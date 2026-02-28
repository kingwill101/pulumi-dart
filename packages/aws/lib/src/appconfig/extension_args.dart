// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_action_point.dart';
import 'extension_parameter.dart';

/// {@template pulumi_appconfig_extension_extension_args_doc}
/// The set of arguments for Extension.
/// {@endtemplate}
/// {@macro pulumi_appconfig_extension_extension_args_doc}
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

  /// Creates a new [ExtensionArgs].
  /// [actionPoints] The action points defined in the extension. Detailed below.
  /// [description] Information about the extension.
  /// [name] A name for the extension. Each extension name in your account must be unique. Extension versions use the same name.
  /// [parameters] The parameters accepted by the extension. You specify parameter values when you associate the extension to an AppConfig resource by using the CreateExtensionAssociation API action. For Lambda extension actions, these parameters are included in the Lambda request object. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ExtensionArgs({
    required List<ExtensionActionPoint> actionPoints,
    String? description,
    String? name,
    List<ExtensionParameter>? parameters,
    String? region,
    Map<String, String>? tags,
  })  : actionPoints =
            pulumi.Input.asInput<List<ExtensionActionPoint>>(actionPoints),
        description = pulumi.Input.asOptionalInput<String>(description),
        name = pulumi.Input.asOptionalInput<String>(name),
        parameters =
            pulumi.Input.asOptionalInput<List<ExtensionParameter>>(parameters),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      actionPoints: pulumi.Input.decodeList<ExtensionActionPoint>(
          map['actionPoints'],
          (value) => ExtensionActionPoint.fromMap(
              (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<ExtensionParameter>(
              map['parameters'],
              (value) => ExtensionParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
