// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Variable.
class VariableArgs {
  /// The name of the variable to manage. Note that variable
  /// names can be hierarchical using slashes (e.g. "prod-variables/hostname").
  final Input<String>? name;

  /// The name of the RuntimeConfig resource containing this
  /// variable.
  final Input<String> parent;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// or <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> - (Required) The content to associate with the variable.
  /// Exactly one of <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span> or <span pulumi-lang-nodejs="`variable`" pulumi-lang-dotnet="`Variable`" pulumi-lang-go="`variable`" pulumi-lang-python="`variable`" pulumi-lang-yaml="`variable`" pulumi-lang-java="`variable`">`variable`</span> must be specified. If <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span> is specified,
  /// it must be a valid UTF-8 string and less than 4096 bytes in length. If <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span>
  /// is specified, it must be base64 encoded and less than 4096 bytes in length.
  ///
  /// - - -
  final Input<String>? text;
  final Input<String>? value;

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
      name: Input.asOptionalInput<String>(map['name']),
      parent: Input.asInput<String>(map['parent']),
      project: Input.asOptionalInput<String>(map['project']),
      text: Input.asOptionalInput<String>(map['text']),
      value: Input.asOptionalInput<String>(map['value']),
    );
  }
}
