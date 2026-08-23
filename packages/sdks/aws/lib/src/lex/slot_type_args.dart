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
  const SlotTypeArgs({
    this.createVersion,
    this.description,
    required this.enumerationValues,
    this.name,
    this.region,
    this.valueSelectionStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createVersion': ?createVersion,
      'description': ?description,
      'enumerationValues': pulumi.Input.mapInputValue<List<SlotTypeEnumerationValue>, List<Map<String, dynamic>>>(enumerationValues, (value) => pulumi.Input.encodeList<SlotTypeEnumerationValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'valueSelectionStrategy': ?valueSelectionStrategy,
    };
  }

  factory SlotTypeArgs.fromMap(Map<String, dynamic> map) {
    return SlotTypeArgs(
      createVersion: (() { final guardedValue = map['createVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enumerationValues: pulumi.Input.fromValue(pulumi.Input.decodeList<SlotTypeEnumerationValue>(map['enumerationValues']!, (value) => SlotTypeEnumerationValue.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueSelectionStrategy: (() { final guardedValue = map['valueSelectionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
