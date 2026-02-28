// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_stored_info_type_dictionary.dart';
import 'prevention_stored_info_type_large_custom_dictionary.dart';
import 'prevention_stored_info_type_regex.dart';

/// {@template pulumi_dataloss_prevention_stored_info_type_prevention_stored_info_type_args_doc}
/// The set of arguments for PreventionStoredInfoType.
/// {@endtemplate}
/// {@macro pulumi_dataloss_prevention_stored_info_type_prevention_stored_info_type_args_doc}
class PreventionStoredInfoTypeArgs {
  /// A description of the info type.
  final pulumi.Input<String>? description;

  /// Dictionary which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionStoredInfoTypeDictionary>? dictionary;

  /// User set display name of the info type.
  final pulumi.Input<String>? displayName;

  /// Dictionary which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionStoredInfoTypeLargeCustomDictionary>?
      largeCustomDictionary;

  /// The parent of the info type in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final pulumi.Input<String> parent;

  /// Regular expression which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionStoredInfoTypeRegex>? regex;

  /// The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is 100
  /// characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? storedInfoTypeId;

  /// Creates a new [PreventionStoredInfoTypeArgs].
  /// [description] A description of the info type.
  /// [dictionary] Dictionary which defines the rule.
  /// [displayName] User set display name of the info type.
  /// [largeCustomDictionary] Dictionary which defines the rule.
  /// [parent] The parent of the info type in any of the following formats:
  /// [regex] Regular expression which defines the rule.
  /// [storedInfoTypeId] The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens;
  PreventionStoredInfoTypeArgs({
    String? description,
    PreventionStoredInfoTypeDictionary? dictionary,
    String? displayName,
    PreventionStoredInfoTypeLargeCustomDictionary? largeCustomDictionary,
    required String parent,
    PreventionStoredInfoTypeRegex? regex,
    String? storedInfoTypeId,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        dictionary =
            pulumi.Input.asOptionalInput<PreventionStoredInfoTypeDictionary>(
                dictionary),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        largeCustomDictionary = pulumi.Input.asOptionalInput<
                PreventionStoredInfoTypeLargeCustomDictionary>(
            largeCustomDictionary),
        parent = pulumi.Input.asInput<String>(parent),
        regex =
            pulumi.Input.asOptionalInput<PreventionStoredInfoTypeRegex>(regex),
        storedInfoTypeId =
            pulumi.Input.asOptionalInput<String>(storedInfoTypeId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dictionaryValue = dictionary;
    if (dictionaryValue != null) {
      map['dictionary'] = pulumi.Input.mapOptionalInputValue<
          PreventionStoredInfoTypeDictionary,
          Map<String, dynamic>>(dictionaryValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final largeCustomDictionaryValue = largeCustomDictionary;
    if (largeCustomDictionaryValue != null) {
      map['largeCustomDictionary'] = pulumi.Input.mapOptionalInputValue<
              PreventionStoredInfoTypeLargeCustomDictionary,
              Map<String, dynamic>>(
          largeCustomDictionaryValue, (value) => value.toMap());
    }
    map['parent'] = parent;
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = pulumi.Input.mapOptionalInputValue<
          PreventionStoredInfoTypeRegex,
          Map<String, dynamic>>(regexValue, (value) => value.toMap());
    }
    final storedInfoTypeIdValue = storedInfoTypeId;
    if (storedInfoTypeIdValue != null) {
      map['storedInfoTypeId'] = storedInfoTypeIdValue;
    }
    return map;
  }

  factory PreventionStoredInfoTypeArgs.fromMap(Map<String, dynamic> map) {
    return PreventionStoredInfoTypeArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      dictionary: map['dictionary'] == null
          ? null
          : PreventionStoredInfoTypeDictionary.fromMap(
              (map['dictionary'] as Map).cast<String, dynamic>()),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      largeCustomDictionary: map['largeCustomDictionary'] == null
          ? null
          : PreventionStoredInfoTypeLargeCustomDictionary.fromMap(
              (map['largeCustomDictionary'] as Map).cast<String, dynamic>()),
      parent: map['parent'] as String,
      regex: map['regex'] == null
          ? null
          : PreventionStoredInfoTypeRegex.fromMap(
              (map['regex'] as Map).cast<String, dynamic>()),
      storedInfoTypeId: map['storedInfoTypeId'] == null
          ? null
          : map['storedInfoTypeId'] as String,
    );
  }
}
