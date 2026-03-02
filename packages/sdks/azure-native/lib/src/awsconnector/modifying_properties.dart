// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'property_value_type_enum_value.dart';

/// Definition of ModifyingProperties
class ModifyingProperties {
  /// <p>The current value of the domain property that is being modified.</p>
  final pulumi.Input<String>? activeValue;
  /// <p>The name of the property that is currently being modified.</p>
  final pulumi.Input<String>? name;
  /// <p>The value that the property that is currently being modified will eventually have.</p>
  final pulumi.Input<String>? pendingValue;
  /// <p>The type of value that is currently being modified. Properties can have two types:</p> <ul> <li> <p> <code>PLAIN_TEXT</code>: Contain direct values such as '1', 'True', or 'c5.large.search'.</p> </li> <li> <p> <code>STRINGIFIED_JSON</code>: Contain content in JSON format, such as {'Enabled':'True'}'.</p> </li> </ul>
  final pulumi.Input<PropertyValueTypeEnumValue>? valueType;

  /// Creates a new [ModifyingProperties].
  /// [activeValue] <p>The current value of the domain property that is being modified.</p>
  /// [name] <p>The name of the property that is currently being modified.</p>
  /// [pendingValue] <p>The value that the property that is currently being modified will eventually have.</p>
  /// [valueType] <p>The type of value that is currently being modified. Properties can have two types:</p> <ul> <li> <p> <code>PLAIN_TEXT</code>: Contain direct values such as '1', 'True', or 'c5.large.search'.</p> </li> <li> <p> <code>STRINGIFIED_JSON</code>: Contain content in JSON format, such as {'Enabled':'True'}'.</p> </li> </ul>
  ModifyingProperties({
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
      'valueType': ?pulumi.Input.mapOptionalInputValue<PropertyValueTypeEnumValue, Map<String, dynamic>>(valueType, (value) => value.toMap()),
    };
  }

  factory ModifyingProperties.fromMap(Map<String, dynamic> map) {
    return ModifyingProperties(
      activeValue: map['activeValue'] == null ? null : (map['activeValue']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pendingValue: map['pendingValue'] == null ? null : (map['pendingValue']! as String).input(),
      valueType: map['valueType'] == null ? null : (PropertyValueTypeEnumValue.fromMap((map['valueType']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

