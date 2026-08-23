// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_slot_type_enumeration_value.dart';

/// Result data returned by getSlotType.
class GetSlotTypeResult {
  /// Checksum identifying the version of the slot type that was created. The checksum is
  /// not included as an argument because the resource will add it automatically when updating the slot type.
  final String checksum;
  /// Date when the slot type version was created.
  final String createdDate;
  /// Description of the slot type.
  final String description;
  /// Set of EnumerationValue objects that defines the values that
  /// the slot type can take. Each value can have a set of synonyms, which are additional values that help
  /// train the machine learning model about the values that it resolves for a slot.
  final List<GetSlotTypeEnumerationValue> enumerationValues;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Date when the $LATEST version of this slot type was updated.
  final String lastUpdatedDate;
  /// Name of the slot type. The name is not case sensitive.
  final String name;
  final String region;
  /// Determines the slot resolution strategy that Amazon Lex
  /// uses to return slot type values. `ORIGINAL_VALUE` returns the value entered by the user if the user
  /// value is similar to the slot value. `TOP_RESOLUTION` returns the first value in the resolution list
  /// if there is a resolution list for the slot, otherwise null is returned.
  final String valueSelectionStrategy;
  /// Version of the slot type.
  final String? version;

  /// Creates a new [GetSlotTypeResult].
  /// [checksum] Checksum identifying the version of the slot type that was created. The checksum is
  /// [createdDate] Date when the slot type version was created.
  /// [description] Description of the slot type.
  /// [enumerationValues] Set of EnumerationValue objects that defines the values that
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedDate] Date when the $LATEST version of this slot type was updated.
  /// [name] Name of the slot type. The name is not case sensitive.
  /// [region] Required.
  /// [valueSelectionStrategy] Determines the slot resolution strategy that Amazon Lex
  /// [version] Version of the slot type.
  const GetSlotTypeResult({
    required this.checksum,
    required this.createdDate,
    required this.description,
    required this.enumerationValues,
    required this.id,
    required this.lastUpdatedDate,
    required this.name,
    required this.region,
    required this.valueSelectionStrategy,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksum': checksum,
      'createdDate': createdDate,
      'description': description,
      'enumerationValues': pulumi.Input.encodeList<GetSlotTypeEnumerationValue, Map<String, dynamic>>(enumerationValues, (value) => value.toMap()),
      'id': id,
      'lastUpdatedDate': lastUpdatedDate,
      'name': name,
      'region': region,
      'valueSelectionStrategy': valueSelectionStrategy,
      'version': ?version,
    };
  }

  factory GetSlotTypeResult.fromMap(Map<String, dynamic> map) {
    return GetSlotTypeResult(
      checksum: map['checksum'] as String,
      createdDate: map['createdDate'] as String,
      description: map['description'] as String,
      enumerationValues: pulumi.Input.decodeList<GetSlotTypeEnumerationValue>(map['enumerationValues']!, (value) => GetSlotTypeEnumerationValue.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      valueSelectionStrategy: map['valueSelectionStrategy'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
