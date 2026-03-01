// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'option_group_option.dart';

/// {@template pulumi_rds_option_group_option_group_args_doc}
/// The set of arguments for OptionGroup.
/// {@endtemplate}
/// {@macro pulumi_rds_option_group_option_group_args_doc}
class OptionGroupArgs {
  /// Specifies the name of the engine that this option group should be associated with.
  final pulumi.Input<String> engineName;
  /// Specifies the major version of the engine that this option group should be associated with.
  final pulumi.Input<String> majorEngineVersion;
  /// Name of the option group. If omitted, the provider will assign a random, unique name. Must be lowercase, to match as it is stored in AWS.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`. Must be lowercase, to match as it is stored in AWS.
  final pulumi.Input<String>? namePrefix;
  /// Description of the option group. Defaults to "Managed by Pulumi".
  final pulumi.Input<String>? optionGroupDescription;
  /// The options to apply. See `option` Block below for more details.
  final pulumi.Input<List<OptionGroupOption>>? options;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set to true if you do not wish the option group to be deleted at destroy time, and instead just remove the option group from the Pulumi state.
  final pulumi.Input<bool>? skipDestroy;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [OptionGroupArgs].
  /// [engineName] Specifies the name of the engine that this option group should be associated with.
  /// [majorEngineVersion] Specifies the major version of the engine that this option group should be associated with.
  /// [name] Name of the option group. If omitted, the provider will assign a random, unique name. Must be lowercase, to match as it is stored in AWS.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`. Must be lowercase, to match as it is stored in AWS.
  /// [optionGroupDescription] Description of the option group. Defaults to "Managed by Pulumi".
  /// [options] The options to apply. See `option` Block below for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDestroy] Set to true if you do not wish the option group to be deleted at destroy time, and instead just remove the option group from the Pulumi state.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  OptionGroupArgs({
    required pulumi.Output<String> engineName,
    required pulumi.Output<String> majorEngineVersion,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? optionGroupDescription,
    pulumi.Output<List<OptionGroupOption>>? options,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? skipDestroy,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      engineName = pulumi.Input.asInput<String>(engineName),
      majorEngineVersion = pulumi.Input.asInput<String>(majorEngineVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      optionGroupDescription = pulumi.Input.asOptionalInput<String>(optionGroupDescription),
      options = pulumi.Input.asOptionalInput<List<OptionGroupOption>>(options),
      region = pulumi.Input.asOptionalInput<String>(region),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engineName': engineName,
      'majorEngineVersion': majorEngineVersion,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'optionGroupDescription': ?optionGroupDescription,
      'options': ?pulumi.Input.mapOptionalInputValue<List<OptionGroupOption>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<OptionGroupOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'skipDestroy': ?skipDestroy,
      'tags': ?tags,
    };
  }

  factory OptionGroupArgs.fromMap(Map<String, dynamic> map) {
    return OptionGroupArgs(
      engineName: pulumi.Output.create<String>(map['engineName'] as String),
      majorEngineVersion: pulumi.Output.create<String>(map['majorEngineVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      optionGroupDescription: map['optionGroupDescription'] == null ? null : pulumi.Output.create<String>(map['optionGroupDescription'] as String),
      options: map['options'] == null ? null : pulumi.Output.create<List<OptionGroupOption>>(pulumi.Input.decodeList<OptionGroupOption>(map['options'], (value) => OptionGroupOption.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      skipDestroy: map['skipDestroy'] == null ? null : pulumi.Output.create<bool>(map['skipDestroy'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

