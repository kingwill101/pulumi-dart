// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_action_point.dart';
import 'extension_parameter.dart';

/// Input properties used for looking up and filtering Extension resources.
class ExtensionState {
  /// The action points defined in the extension. Detailed below.
  final pulumi.Input<List<ExtensionActionPoint>>? actionPoints;
  /// ARN of the AppConfig Extension.
  final pulumi.Input<String>? arn;
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
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The version number for the extension.
  final pulumi.Input<int>? version;

  /// Creates a new [ExtensionState].
  /// [actionPoints] The action points defined in the extension. Detailed below.
  /// [arn] ARN of the AppConfig Extension.
  /// [description] Information about the extension.
  /// [name] A name for the extension. Each extension name in your account must be unique. Extension versions use the same name.
  /// [parameters] The parameters accepted by the extension. You specify parameter values when you associate the extension to an AppConfig resource by using the CreateExtensionAssociation API action. For Lambda extension actions, these parameters are included in the Lambda request object. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [version] The version number for the extension.
  ExtensionState({
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
      actionPoints: map['actionPoints'] == null ? null : (pulumi.Input.decodeList<ExtensionActionPoint>(map['actionPoints'], (value) => ExtensionActionPoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<ExtensionParameter>(map['parameters'], (value) => ExtensionParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version'] as int).input(),
    );
  }
}

