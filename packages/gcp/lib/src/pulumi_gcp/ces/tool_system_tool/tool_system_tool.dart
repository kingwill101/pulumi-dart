// ignore_for_file: unused_element, unnecessary_cast

class ToolSystemTool {
  /// (Output)
  /// The description of the system tool.
  final String? description;

  /// (Output)
  /// The name of the system tool.
  final String? name;

  ToolSystemTool({
    this.description,
    this.name,
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
    return map;
  }

  factory ToolSystemTool.fromMap(Map<String, dynamic> map) {
    return ToolSystemTool(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
