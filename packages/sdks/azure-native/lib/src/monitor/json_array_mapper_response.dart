// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'json_mapper_destination_field_response.dart';
import 'json_mapper_source_field_response.dart';

/// A component that allows parsing a value from sourceField as a json array, match a key to each parsed value from keys, and output the key-value map to destinationField field.
class JsonArrayMapperResponse {
  /// Define a destination field to which the parsed output will be written. The output is a map, it's keys is the given keys array and the matching values are the parsed json array elements.
  final pulumi.Input<JsonMapperDestinationFieldResponse>? destinationField;
  /// Define the names of the keys in the resulting map. The input json array elements are mapped in order, one for every key.
  final pulumi.Input<List<String>> keys;
  /// Define a source field from which a json array will be read and parsed to it's elements. The number of elements in the json array is expected to be the same as the length of keys.
  final pulumi.Input<JsonMapperSourceFieldResponse>? sourceField;

  /// Creates a new [JsonArrayMapperResponse].
  /// [destinationField] Define a destination field to which the parsed output will be written. The output is a map, it's keys is the given keys array and the matching values are the parsed json array elements.
  /// [keys] Define the names of the keys in the resulting map. The input json array elements are mapped in order, one for every key.
  /// [sourceField] Define a source field from which a json array will be read and parsed to it's elements. The number of elements in the json array is expected to be the same as the length of keys.
  JsonArrayMapperResponse({
    this.destinationField,
    required this.keys,
    this.sourceField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationField': ?pulumi.Input.mapOptionalInputValue<JsonMapperDestinationFieldResponse, Map<String, dynamic>>(destinationField, (value) => value.toMap()),
      'keys': keys,
      'sourceField': ?pulumi.Input.mapOptionalInputValue<JsonMapperSourceFieldResponse, Map<String, dynamic>>(sourceField, (value) => value.toMap()),
    };
  }

  factory JsonArrayMapperResponse.fromMap(Map<String, dynamic> map) {
    return JsonArrayMapperResponse(
      destinationField: (() { final guardedValue = map['destinationField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JsonMapperDestinationFieldResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keys: pulumi.Input.fromValue((map['keys'] as List).cast<String>()),
      sourceField: (() { final guardedValue = map['sourceField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JsonMapperSourceFieldResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

