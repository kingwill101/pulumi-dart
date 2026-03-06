// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'option_group_option.dart';

/// Input properties used for looking up and filtering OptionGroup resources.
class OptionGroupState {
  /// ARN of the DB option group.
  final pulumi.Input<String>? arn;
  /// Specifies the name of the engine that this option group should be associated with.
  final pulumi.Input<String>? engineName;
  /// Specifies the major version of the engine that this option group should be associated with.
  final pulumi.Input<String>? majorEngineVersion;
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
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [OptionGroupState].
  /// [arn] ARN of the DB option group.
  /// [engineName] Specifies the name of the engine that this option group should be associated with.
  /// [majorEngineVersion] Specifies the major version of the engine that this option group should be associated with.
  /// [name] Name of the option group. If omitted, the provider will assign a random, unique name. Must be lowercase, to match as it is stored in AWS.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`. Must be lowercase, to match as it is stored in AWS.
  /// [optionGroupDescription] Description of the option group. Defaults to "Managed by Pulumi".
  /// [options] The options to apply. See `option` Block below for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDestroy] Set to true if you do not wish the option group to be deleted at destroy time, and instead just remove the option group from the Pulumi state.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  const OptionGroupState({
    this.arn,
    this.engineName,
    this.majorEngineVersion,
    this.name,
    this.namePrefix,
    this.optionGroupDescription,
    this.options,
    this.region,
    this.skipDestroy,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'engineName': ?engineName,
      'majorEngineVersion': ?majorEngineVersion,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'optionGroupDescription': ?optionGroupDescription,
      'options': ?pulumi.Input.mapOptionalInputValue<List<OptionGroupOption>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<OptionGroupOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'skipDestroy': ?skipDestroy,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory OptionGroupState.fromMap(Map<String, dynamic> map) {
    return OptionGroupState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineName: (() { final guardedValue = map['engineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      majorEngineVersion: (() { final guardedValue = map['majorEngineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionGroupDescription: (() { final guardedValue = map['optionGroupDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OptionGroupOption>(guardedValue, (value) => OptionGroupOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

