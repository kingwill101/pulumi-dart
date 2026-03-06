// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// JsonArrayMapper destination field used to describe the field to which the parsed output will be written.
class JsonMapperDestinationFieldResponse {
  /// Define the destination's element. The element is the body or the attributes of the message, to which the json array mapper will write the output map.
  final pulumi.Input<String>? destination;
  /// Define a destination field name under the given element. Leaving this empty, means the root of the element. In case element=attributes and fieldName is empty, the object's attributes themselves will contain the key value output pairs.
  final pulumi.Input<String>? fieldName;

  /// Creates a new [JsonMapperDestinationFieldResponse].
  /// [destination] Define the destination's element. The element is the body or the attributes of the message, to which the json array mapper will write the output map.
  /// [fieldName] Define a destination field name under the given element. Leaving this empty, means the root of the element. In case element=attributes and fieldName is empty, the object's attributes themselves will contain the key value output pairs.
  const JsonMapperDestinationFieldResponse({
    this.destination,
    this.fieldName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'fieldName': ?fieldName,
    };
  }

  factory JsonMapperDestinationFieldResponse.fromMap(Map<String, dynamic> map) {
    return JsonMapperDestinationFieldResponse(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldName: (() { final guardedValue = map['fieldName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

