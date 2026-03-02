// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_type_enumeration_value.dart';

/// Input properties used for looking up and filtering SlotType resources.
class SlotTypeState {
  /// Checksum identifying the version of the slot type that was created. The checksum is
  /// not included as an argument because the resource will add it automatically when updating the slot type.
  final pulumi.Input<String>? checksum;
  /// Determines if a new slot type version is created when the initial resource is created and on each
  /// update. Defaults to `false`.
  final pulumi.Input<bool>? createVersion;
  /// The date when the slot type version was created.
  final pulumi.Input<String>? createdDate;
  /// A description of the slot type. Must be less than or equal to 200 characters in length.
  final pulumi.Input<String>? description;
  /// A list of EnumerationValue objects that defines the values that
  /// the slot type can take. Each value can have a list of synonyms, which are additional values that help
  /// train the machine learning model about the values that it resolves for a slot. Attributes are
  /// documented under enumeration_value.
  final pulumi.Input<List<SlotTypeEnumerationValue>>? enumerationValues;
  /// The date when the `$LATEST` version of this slot type was updated.
  final pulumi.Input<String>? lastUpdatedDate;
  /// The name of the slot type. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Determines the slot resolution strategy that Amazon Lex
  /// uses to return slot type values. `ORIGINAL_VALUE` returns the value entered by the user if the user
  /// value is similar to the slot value. `TOP_RESOLUTION` returns the first value in the resolution list
  /// if there is a resolution list for the slot, otherwise null is returned. Defaults to `ORIGINAL_VALUE`.
  final pulumi.Input<String>? valueSelectionStrategy;
  /// The version of the slot type.
  final pulumi.Input<String>? version;

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
  SlotTypeState({
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
      checksum: map['checksum'] == null ? null : ((map['checksum'] as String).input()).input(),
      createVersion: map['createVersion'] == null ? null : ((map['createVersion'] as bool).input()).input(),
      createdDate: map['createdDate'] == null ? null : ((map['createdDate'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      enumerationValues: map['enumerationValues'] == null ? null : ((pulumi.Input.decodeList<SlotTypeEnumerationValue>(map['enumerationValues']!, (value) => SlotTypeEnumerationValue.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      lastUpdatedDate: map['lastUpdatedDate'] == null ? null : ((map['lastUpdatedDate'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      valueSelectionStrategy: map['valueSelectionStrategy'] == null ? null : ((map['valueSelectionStrategy'] as String).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
    );
  }
}

