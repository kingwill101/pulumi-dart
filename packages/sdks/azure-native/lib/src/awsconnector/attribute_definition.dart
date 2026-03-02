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
  AttributeDefinition({
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
      attributeName: map['attributeName'] == null ? null : (map['attributeName']! as String).input(),
      attributeType: map['attributeType'] == null ? null : (map['attributeType']! as String).input(),
    );
  }
}

