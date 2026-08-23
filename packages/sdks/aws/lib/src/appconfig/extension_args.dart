// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_action_point.dart';
import 'extension_parameter.dart';

/// {@template pulumi_appconfig_extension_extension_args_doc}
/// The set of arguments for Extension.
/// {@endtemplate}
/// {@macro pulumi_appconfig_extension_extension_args_doc}
class ExtensionArgs {
  /// Action points defined in the extension. Detailed below.
  final pulumi.Input<List<ExtensionActionPoint>> actionPoints;
  /// Information about the extension.
  final pulumi.Input<String>? description;
  /// Name for the extension. Each extension name in your account must be unique. Extension versions use the same name.
  final pulumi.Input<String>? name;
  /// Parameters accepted by the extension. You specify parameter values when you associate the extension to an AppConfig resource by using the CreateExtensionAssociation API action. For Lambda extension actions, these parameters are included in the Lambda request object. Detailed below.
  final pulumi.Input<List<ExtensionParameter>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ExtensionArgs].
  /// [actionPoints] Action points defined in the extension. Detailed below.
  /// [description] Information about the extension.
  /// [name] Name for the extension. Each extension name in your account must be unique. Extension versions use the same name.
  /// [parameters] Parameters accepted by the extension. You specify parameter values when you associate the extension to an AppConfig resource by using the CreateExtensionAssociation API action. For Lambda extension actions, these parameters are included in the Lambda request object. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ExtensionArgs({
    required this.actionPoints,
    this.description,
    this.name,
    this.parameters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionPoints': pulumi.Input.mapInputValue<List<ExtensionActionPoint>, List<Map<String, dynamic>>>(actionPoints, (value) => pulumi.Input.encodeList<ExtensionActionPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ExtensionParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ExtensionParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ExtensionArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionArgs(
      actionPoints: pulumi.Input.fromValue(pulumi.Input.decodeList<ExtensionActionPoint>(map['actionPoints']!, (value) => ExtensionActionPoint.fromMap((value as Map).cast<String, dynamic>()))),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExtensionParameter>(guardedValue, (value) => ExtensionParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
