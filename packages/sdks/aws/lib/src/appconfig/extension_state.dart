// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_action_point.dart';
import 'extension_parameter.dart';

/// Input properties used for looking up and filtering Extension resources.
class ExtensionState {
  /// Action points defined in the extension. Detailed below.
  final pulumi.Input<List<ExtensionActionPoint>?>? actionPoints;
  /// ARN of the AppConfig Extension.
  final pulumi.Input<String?>? arn;
  /// Information about the extension.
  final pulumi.Input<String?>? description;
  /// Name for the extension. Each extension name in your account must be unique. Extension versions use the same name.
  final pulumi.Input<String?>? name;
  /// Parameters accepted by the extension. You specify parameter values when you associate the extension to an AppConfig resource by using the CreateExtensionAssociation API action. For Lambda extension actions, these parameters are included in the Lambda request object. Detailed below.
  final pulumi.Input<List<ExtensionParameter>?>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Version number for the extension.
  final pulumi.Input<int?>? version;

  /// Creates a new [ExtensionState].
  /// [actionPoints] Action points defined in the extension. Detailed below.
  /// [arn] ARN of the AppConfig Extension.
  /// [description] Information about the extension.
  /// [name] Name for the extension. Each extension name in your account must be unique. Extension versions use the same name.
  /// [parameters] Parameters accepted by the extension. You specify parameter values when you associate the extension to an AppConfig resource by using the CreateExtensionAssociation API action. For Lambda extension actions, these parameters are included in the Lambda request object. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [version] Version number for the extension.
  const ExtensionState({
    this.actionPoints,
    this.arn,
    this.description,
    this.name,
    this.parameters,
    this.region,
    this.tags,
    this.tagsAll,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionPoints': ?pulumi.Input.mapOptionalInputValue<List<ExtensionActionPoint>, List<Map<String, dynamic>>>(actionPoints, (value) => pulumi.Input.encodeList<ExtensionActionPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'description': ?description,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ExtensionParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ExtensionParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'version': ?version,
    };
  }

  factory ExtensionState.fromMap(Map<String, dynamic> map) {
    return ExtensionState(
      actionPoints: (() { final guardedValue = map['actionPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExtensionActionPoint>(guardedValue, (value) => ExtensionActionPoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExtensionParameter>(guardedValue, (value) => ExtensionParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
