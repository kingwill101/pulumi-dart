// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../option_group_option/option_group_option.dart';

/// The set of arguments for OptionGroup.
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

  OptionGroupArgs({
    required this.engineName,
    required this.majorEngineVersion,
    this.name,
    this.namePrefix,
    this.optionGroupDescription,
    this.options,
    this.region,
    this.skipDestroy,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['engineName'] = engineName;
    map['majorEngineVersion'] = majorEngineVersion;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final optionGroupDescriptionValue = optionGroupDescription;
    if (optionGroupDescriptionValue != null) {
      map['optionGroupDescription'] = optionGroupDescriptionValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = pulumi.Input.mapOptionalInputValue<
              List<OptionGroupOption>, List<Map<String, dynamic>>>(
          optionsValue,
          (value) =>
              pulumi.Input.encodeList<OptionGroupOption, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory OptionGroupArgs.fromMap(Map<String, dynamic> map) {
    return OptionGroupArgs(
      engineName: pulumi.Input.asInput<String>(map['engineName']),
      majorEngineVersion:
          pulumi.Input.asInput<String>(map['majorEngineVersion']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      optionGroupDescription:
          pulumi.Input.asOptionalInput<String>(map['optionGroupDescription']),
      options:
          pulumi.Input.asOptionalInput<List<OptionGroupOption>>(map['options']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      skipDestroy: pulumi.Input.asOptionalInput<bool>(map['skipDestroy']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
