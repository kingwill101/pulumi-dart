// ignore_for_file: unused_element, unnecessary_cast


class NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader {
  /// The name of the HTTP header.
  final String name;
  /// The value of the HTTP header.
  final String value;

  /// Creates a new [NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader].
  /// [name] The name of the HTTP header.
  /// [value] The value of the HTTP header.
  NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorTestConfigurationHttpConfigurationRequestHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

