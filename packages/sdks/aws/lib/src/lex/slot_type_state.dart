// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_type_enumeration_value.dart';

/// Input properties used for looking up and filtering SlotType resources.
class SlotTypeState {
  /// Checksum identifying the version of the slot type that was created. The checksum is
  /// not included as an argument because the resource will add it automatically when updating the slot type.
  final pulumi.Input<String?>? checksum;
  /// Determines if a new slot type version is created when the initial resource is created and on each
  /// update. Defaults to `false`.
  final pulumi.Input<bool?>? createVersion;
  /// The date when the slot type version was created.
  final pulumi.Input<String?>? createdDate;
  /// A description of the slot type. Must be less than or equal to 200 characters in length.
  final pulumi.Input<String?>? description;
  /// A list of EnumerationValue objects that defines the values that
  /// the slot type can take. Each value can have a list of synonyms, which are additional values that help
  /// train the machine learning model about the values that it resolves for a slot. Attributes are
  /// documented under enumeration_value.
  final pulumi.Input<List<SlotTypeEnumerationValue>?>? enumerationValues;
  /// The date when the `$LATEST` version of this slot type was updated.
  final pulumi.Input<String?>? lastUpdatedDate;
  /// The name of the slot type. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Determines the slot resolution strategy that Amazon Lex
  /// uses to return slot type values. `ORIGINAL_VALUE` returns the value entered by the user if the user
  /// value is similar to the slot value. `TOP_RESOLUTION` returns the first value in the resolution list
  /// if there is a resolution list for the slot, otherwise null is returned. Defaults to `ORIGINAL_VALUE`.
  final pulumi.Input<String?>? valueSelectionStrategy;
  /// The version of the slot type.
  final pulumi.Input<String?>? version;

  /// Creates a new [SlotTypeState].
  /// [checksum] Checksum identifying the version of the slot type that was created. The checksum is
  /// [createVersion] Determines if a new slot type version is created when the initial resource is created and on each
  /// [createdDate] The date when the slot type version was created.
  /// [description] A description of the slot type. Must be less than or equal to 200 characters in length.
  /// [enumerationValues] A list of EnumerationValue objects that defines the values that
  /// [lastUpdatedDate] The date when the `$LATEST` version of this slot type was updated.
  /// [name] The name of the slot type. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [valueSelectionStrategy] Determines the slot resolution strategy that Amazon Lex
  /// [version] The version of the slot type.
  const SlotTypeState({
    this.checksum,
    this.createVersion,
    this.createdDate,
    this.description,
    this.enumerationValues,
    this.lastUpdatedDate,
    this.name,
    this.region,
    this.valueSelectionStrategy,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksum': ?checksum,
      'createVersion': ?createVersion,
      'createdDate': ?createdDate,
      'description': ?description,
      'enumerationValues': ?pulumi.Input.mapOptionalInputValue<List<SlotTypeEnumerationValue>, List<Map<String, dynamic>>>(enumerationValues, (value) => pulumi.Input.encodeList<SlotTypeEnumerationValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastUpdatedDate': ?lastUpdatedDate,
      'name': ?name,
      'region': ?region,
      'valueSelectionStrategy': ?valueSelectionStrategy,
      'version': ?version,
    };
  }

  factory SlotTypeState.fromMap(Map<String, dynamic> map) {
    return SlotTypeState(
      checksum: (() { final guardedValue = map['checksum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createVersion: (() { final guardedValue = map['createVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enumerationValues: (() { final guardedValue = map['enumerationValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SlotTypeEnumerationValue>(guardedValue, (value) => SlotTypeEnumerationValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastUpdatedDate: (() { final guardedValue = map['lastUpdatedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueSelectionStrategy: (() { final guardedValue = map['valueSelectionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
