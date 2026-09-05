// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DocumentParameter {
  /// If specified, the default values for the parameters. Parameters without a default value are required. Parameters with a default value are optional.
  final pulumi.Input<String?>? defaultValue;
  /// A description of what the parameter does, how to use it, the default value, and whether or not the parameter is optional.
  final pulumi.Input<String?>? description;
  /// The name of the document.
  final pulumi.Input<String?>? name;
  /// The type of parameter. Valid values: `String`, `StringList`.
  final pulumi.Input<String?>? type;

  /// Creates a new [DocumentParameter].
  /// [defaultValue] If specified, the default values for the parameters. Parameters without a default value are required. Parameters with a default value are optional.
  /// [description] A description of what the parameter does, how to use it, the default value, and whether or not the parameter is optional.
  /// [name] The name of the document.
  /// [type] The type of parameter. Valid values: `String`, `StringList`.
  const DocumentParameter({
    this.defaultValue,
    this.description,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'description': ?description,
      'name': ?name,
      'type': ?type,
    };
  }

  factory DocumentParameter.fromMap(Map<String, dynamic> map) {
    return DocumentParameter(
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
