// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Variable.
class VariableArgs {
  /// The name of the variable to manage. Note that variable
  /// names can be hierarchical using slashes (e.g. "prod-variables/hostname").
  final pulumi.Input<String>? name;

  /// The name of the RuntimeConfig resource containing this
  /// variable.
  final pulumi.Input<String> parent;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// or `value` - (Required) The content to associate with the variable.
  /// Exactly one of `text` or `variable` must be specified. If `text` is specified,
  /// it must be a valid UTF-8 string and less than 4096 bytes in length. If `value`
  /// is specified, it must be base64 encoded and less than 4096 bytes in length.
  ///
  /// - - -
  final pulumi.Input<String>? text;
  final pulumi.Input<String>? value;

  VariableArgs({
    this.name,
    required this.parent,
    this.project,
    this.text,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parent'] = parent;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory VariableArgs.fromMap(Map<String, dynamic> map) {
    return VariableArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      text: pulumi.Input.asOptionalInput<String>(map['text']),
      value: pulumi.Input.asOptionalInput<String>(map['value']),
    );
  }
}
