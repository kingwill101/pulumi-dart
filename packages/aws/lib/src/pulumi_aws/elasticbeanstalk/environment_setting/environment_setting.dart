// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentSetting {
  /// A unique name for this Environment. This name is used
  /// in the application URL
  final String name;
  final String namespace;
  final String? resource;
  final String value;

  EnvironmentSetting({
    required this.name,
    required this.namespace,
    this.resource,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['namespace'] = namespace;
    final resourceValue = resource;
    if (resourceValue != null) {
      map['resource'] = resourceValue;
    }
    map['value'] = value;
    return map;
  }

  factory EnvironmentSetting.fromMap(Map<String, dynamic> map) {
    return EnvironmentSetting(
      name: map['name'] as String,
      namespace: map['namespace'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
      value: map['value'] as String,
    );
  }
}
