// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_type_enumeration_value.dart';

/// {@template pulumi_lex_slot_type_slot_type_args_doc}
/// The set of arguments for SlotType.
/// {@endtemplate}
/// {@macro pulumi_lex_slot_type_slot_type_args_doc}
class SlotTypeArgs {
  /// Determines if a new slot type version is created when the initial resource is created and on each
  /// update. Defaults to `false`.
  final pulumi.Input<bool>? createVersion;

  /// A description of the slot type. Must be less than or equal to 200 characters in length.
  final pulumi.Input<String>? description;

  /// A list of EnumerationValue objects that defines the values that
  /// the slot type can take. Each value can have a list of synonyms, which are additional values that help
  /// train the machine learning model about the values that it resolves for a slot. Attributes are
  /// documented under enumeration_value.
  final pulumi.Input<List<SlotTypeEnumerationValue>> enumerationValues;

  /// The name of the slot type. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Determines the slot resolution strategy that Amazon Lex
  /// uses to return slot type values. `ORIGINAL_VALUE` returns the value entered by the user if the user
  /// value is similar to the slot value. `TOP_RESOLUTION` returns the first value in the resolution list
  /// if there is a resolution list for the slot, otherwise null is returned. Defaults to `ORIGINAL_VALUE`.
  final pulumi.Input<String>? valueSelectionStrategy;

  /// Creates a new [SlotTypeArgs].
  /// [createVersion] Determines if a new slot type version is created when the initial resource is created and on each
  /// [description] A description of the slot type. Must be less than or equal to 200 characters in length.
  /// [enumerationValues] A list of EnumerationValue objects that defines the values that
  /// [name] The name of the slot type. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [valueSelectionStrategy] Determines the slot resolution strategy that Amazon Lex
  SlotTypeArgs({
    bool? createVersion,
    String? description,
    required List<SlotTypeEnumerationValue> enumerationValues,
    String? name,
    String? region,
    String? valueSelectionStrategy,
  })  : createVersion = pulumi.Input.asOptionalInput<bool>(createVersion),
        description = pulumi.Input.asOptionalInput<String>(description),
        enumerationValues =
            pulumi.Input.asInput<List<SlotTypeEnumerationValue>>(
                enumerationValues),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        valueSelectionStrategy =
            pulumi.Input.asOptionalInput<String>(valueSelectionStrategy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createVersionValue = createVersion;
    if (createVersionValue != null) {
      map['createVersion'] = createVersionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['enumerationValues'] = pulumi.Input.mapInputValue<
            List<SlotTypeEnumerationValue>, List<Map<String, dynamic>>>(
        enumerationValues,
        (value) => pulumi.Input.encodeList<SlotTypeEnumerationValue,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final valueSelectionStrategyValue = valueSelectionStrategy;
    if (valueSelectionStrategyValue != null) {
      map['valueSelectionStrategy'] = valueSelectionStrategyValue;
    }
    return map;
  }

  factory SlotTypeArgs.fromMap(Map<String, dynamic> map) {
    return SlotTypeArgs(
      createVersion:
          map['createVersion'] == null ? null : map['createVersion'] as bool,
      description:
          map['description'] == null ? null : map['description'] as String,
      enumerationValues: pulumi.Input.decodeList<SlotTypeEnumerationValue>(
          map['enumerationValues'],
          (value) => SlotTypeEnumerationValue.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      valueSelectionStrategy: map['valueSelectionStrategy'] == null
          ? null
          : map['valueSelectionStrategy'] as String,
    );
  }
}
