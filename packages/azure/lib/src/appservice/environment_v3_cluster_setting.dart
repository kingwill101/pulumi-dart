// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentV3ClusterSetting {
  /// The name of the Cluster Setting.
  final String name;
  /// The value for the Cluster Setting.
  final String value;

  /// Creates a new [EnvironmentV3ClusterSetting].
  /// [name] The name of the Cluster Setting.
  /// [value] The value for the Cluster Setting.
  EnvironmentV3ClusterSetting({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory EnvironmentV3ClusterSetting.fromMap(Map<String, dynamic> map) {
    return EnvironmentV3ClusterSetting(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

