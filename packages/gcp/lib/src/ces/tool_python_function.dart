// ignore_for_file: unused_element, unnecessary_cast

class ToolPythonFunction {
  /// (Output)
  /// The description of the Python function, parsed from the python code's
  /// docstring.
  final String? description;

  /// The name of the Python function to execute. Must match a Python function
  /// name defined in the python code. Case sensitive. If the name is not
  /// provided, the first function defined in the python code will be used.
  final String? name;

  /// The Python code to execute for the tool.
  final String? pythonCode;

  /// Creates a new [ToolPythonFunction].
  /// [description] (Output)
  /// [name] The name of the Python function to execute. Must match a Python function
  /// [pythonCode] The Python code to execute for the tool.
  ToolPythonFunction({
    this.description,
    this.name,
    this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pythonCodeValue = pythonCode;
    if (pythonCodeValue != null) {
      map['pythonCode'] = pythonCodeValue;
    }
    return map;
  }

  factory ToolPythonFunction.fromMap(Map<String, dynamic> map) {
    return ToolPythonFunction(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pythonCode:
          map['pythonCode'] == null ? null : map['pythonCode'] as String,
    );
  }
}
