// ignore_for_file: unused_element, unnecessary_cast


class PluginGrantPermission {
  /// The name of the permission
  final String name;
  /// The value of the permission
  final List<String> values;

  /// Creates a new [PluginGrantPermission].
  /// [name] The name of the permission
  /// [values] The value of the permission
  PluginGrantPermission({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory PluginGrantPermission.fromMap(Map<String, dynamic> map) {
    return PluginGrantPermission(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

