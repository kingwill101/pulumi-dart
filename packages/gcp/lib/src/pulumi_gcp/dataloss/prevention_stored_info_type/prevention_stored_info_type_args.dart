// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../prevention_stored_info_type_dictionary/prevention_stored_info_type_dictionary.dart';
import '../prevention_stored_info_type_large_custom_dictionary/prevention_stored_info_type_large_custom_dictionary.dart';
import '../prevention_stored_info_type_regex/prevention_stored_info_type_regex.dart';

/// The set of arguments for PreventionStoredInfoType.
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

  PreventionStoredInfoTypeArgs({
    this.description,
    this.dictionary,
    this.displayName,
    this.largeCustomDictionary,
    required this.parent,
    this.regex,
    this.storedInfoTypeId,
  });

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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      dictionary:
          pulumi.Input.asOptionalInput<PreventionStoredInfoTypeDictionary>(
              map['dictionary']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      largeCustomDictionary: pulumi.Input.asOptionalInput<
              PreventionStoredInfoTypeLargeCustomDictionary>(
          map['largeCustomDictionary']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      regex: pulumi.Input.asOptionalInput<PreventionStoredInfoTypeRegex>(
          map['regex']),
      storedInfoTypeId:
          pulumi.Input.asOptionalInput<String>(map['storedInfoTypeId']),
    );
  }
}
