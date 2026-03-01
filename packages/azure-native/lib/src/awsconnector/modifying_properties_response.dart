// ignore_for_file: unused_element, unnecessary_cast

import 'property_value_type_enum_value_response.dart';

/// Definition of ModifyingProperties
class ModifyingPropertiesResponse {
  /// <p>The current value of the domain property that is being modified.</p>
  final String? activeValue;
  /// <p>The name of the property that is currently being modified.</p>
  final String? name;
  /// <p>The value that the property that is currently being modified will eventually have.</p>
  final String? pendingValue;
  /// <p>The type of value that is currently being modified. Properties can have two types:</p> <ul> <li> <p> <code>PLAIN_TEXT</code>: Contain direct values such as '1', 'True', or 'c5.large.search'.</p> </li> <li> <p> <code>STRINGIFIED_JSON</code>: Contain content in JSON format, such as {'Enabled':'True'}'.</p> </li> </ul>
  final PropertyValueTypeEnumValueResponse? valueType;

  /// Creates a new [ModifyingPropertiesResponse].
  /// [activeValue] <p>The current value of the domain property that is being modified.</p>
  /// [name] <p>The name of the property that is currently being modified.</p>
  /// [pendingValue] <p>The value that the property that is currently being modified will eventually have.</p>
  /// [valueType] <p>The type of value that is currently being modified. Properties can have two types:</p> <ul> <li> <p> <code>PLAIN_TEXT</code>: Contain direct values such as '1', 'True', or 'c5.large.search'.</p> </li> <li> <p> <code>STRINGIFIED_JSON</code>: Contain content in JSON format, such as {'Enabled':'True'}'.</p> </li> </ul>
  ModifyingPropertiesResponse({
    this.activeValue,
    this.name,
    this.pendingValue,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeValue': ?activeValue,
      'name': ?name,
      'pendingValue': ?pendingValue,
      'valueType': ?valueType == null ? null : valueType!.toMap(),
    };
  }

  factory ModifyingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ModifyingPropertiesResponse(
      activeValue: map['activeValue'] == null ? null : map['activeValue'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pendingValue: map['pendingValue'] == null ? null : map['pendingValue'] as String,
      valueType: map['valueType'] == null ? null : PropertyValueTypeEnumValueResponse.fromMap((map['valueType'] as Map).cast<String, dynamic>()),
    );
  }
}

