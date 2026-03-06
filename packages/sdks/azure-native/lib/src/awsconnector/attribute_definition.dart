// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AttributeDefinition
class AttributeDefinition {
  /// A name for the attribute.
  final pulumi.Input<String>? attributeName;
  /// The data type for the attribute, where:  +   ``S`` - the attribute is of type String  +   ``N`` - the attribute is of type Number  +   ``B`` - the attribute is of type Binary
  final pulumi.Input<String>? attributeType;

  /// Creates a new [AttributeDefinition].
  /// [attributeName] A name for the attribute.
  /// [attributeType] The data type for the attribute, where:  +   ``S`` - the attribute is of type String  +   ``N`` - the attribute is of type Number  +   ``B`` - the attribute is of type Binary
  const AttributeDefinition({
    this.attributeName,
    this.attributeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': ?attributeName,
      'attributeType': ?attributeType,
    };
  }

  factory AttributeDefinition.fromMap(Map<String, dynamic> map) {
    return AttributeDefinition(
      attributeName: (() { final guardedValue = map['attributeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributeType: (() { final guardedValue = map['attributeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

