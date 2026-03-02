// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'json_mapper_destination_field.dart';
import 'json_mapper_source_field.dart';

/// A component that allows parsing a value from sourceField as a json array, match a key to each parsed value from keys, and output the key-value map to destinationField field.
class JsonArrayMapper {
  /// Define a destination field to which the parsed output will be written. The output is a map, it's keys is the given keys array and the matching values are the parsed json array elements.
  final pulumi.Input<JsonMapperDestinationField>? destinationField;
  /// Define the names of the keys in the resulting map. The input json array elements are mapped in order, one for every key.
  final pulumi.Input<List<String>> keys;
  /// Define a source field from which a json array will be read and parsed to it's elements. The number of elements in the json array is expected to be the same as the length of keys.
  final pulumi.Input<JsonMapperSourceField>? sourceField;

  /// Creates a new [JsonArrayMapper].
  /// [destinationField] Define a destination field to which the parsed output will be written. The output is a map, it's keys is the given keys array and the matching values are the parsed json array elements.
  /// [keys] Define the names of the keys in the resulting map. The input json array elements are mapped in order, one for every key.
  /// [sourceField] Define a source field from which a json array will be read and parsed to it's elements. The number of elements in the json array is expected to be the same as the length of keys.
  JsonArrayMapper({
    this.destinationField,
    required this.keys,
    this.sourceField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationField': ?pulumi.Input.mapOptionalInputValue<JsonMapperDestinationField, Map<String, dynamic>>(destinationField, (value) => value.toMap()),
      'keys': keys,
      'sourceField': ?pulumi.Input.mapOptionalInputValue<JsonMapperSourceField, Map<String, dynamic>>(sourceField, (value) => value.toMap()),
    };
  }

  factory JsonArrayMapper.fromMap(Map<String, dynamic> map) {
    return JsonArrayMapper(
      destinationField: map['destinationField'] == null ? null : (JsonMapperDestinationField.fromMap((map['destinationField']! as Map).cast<String, dynamic>())).input(),
      keys: ((map['keys'] as List).cast<String>()).input(),
      sourceField: map['sourceField'] == null ? null : (JsonMapperSourceField.fromMap((map['sourceField']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

