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
    pulumi.Output<String>? checksum,
    pulumi.Output<bool>? createVersion,
    pulumi.Output<String>? createdDate,
    pulumi.Output<String>? description,
    pulumi.Output<List<SlotTypeEnumerationValue>>? enumerationValues,
    pulumi.Output<String>? lastUpdatedDate,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? valueSelectionStrategy,
    pulumi.Output<String>? version,
  }) :
      checksum = pulumi.Input.asOptionalInput<String>(checksum),
      createVersion = pulumi.Input.asOptionalInput<bool>(createVersion),
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      description = pulumi.Input.asOptionalInput<String>(description),
      enumerationValues = pulumi.Input.asOptionalInput<List<SlotTypeEnumerationValue>>(enumerationValues),
      lastUpdatedDate = pulumi.Input.asOptionalInput<String>(lastUpdatedDate),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      valueSelectionStrategy = pulumi.Input.asOptionalInput<String>(valueSelectionStrategy),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      checksum: map['checksum'] == null ? null : pulumi.Output.create<String>(map['checksum'] as String),
      createVersion: map['createVersion'] == null ? null : pulumi.Output.create<bool>(map['createVersion'] as bool),
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enumerationValues: map['enumerationValues'] == null ? null : pulumi.Output.create<List<SlotTypeEnumerationValue>>(pulumi.Input.decodeList<SlotTypeEnumerationValue>(map['enumerationValues'], (value) => SlotTypeEnumerationValue.fromMap((value as Map).cast<String, dynamic>()))),
      lastUpdatedDate: map['lastUpdatedDate'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedDate'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      valueSelectionStrategy: map['valueSelectionStrategy'] == null ? null : pulumi.Output.create<String>(map['valueSelectionStrategy'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

