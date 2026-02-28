// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentConfigWebServerConfig {
  /// Optional. Machine type on which Airflow web server is running. It has to be one of: composer-n1-webserver-2, composer-n1-webserver-4 or composer-n1-webserver-8. If not specified, composer-n1-webserver-2 will be used. Value custom is returned only in response, if Airflow web server parameters were manually changed to a non-standard values.
  final String machineType;

  /// Creates a new [EnvironmentConfigWebServerConfig].
  /// [machineType] Optional. Machine type on which Airflow web server is running. It has to be one of: composer-n1-webserver-2, composer-n1-webserver-4 or composer-n1-webserver-8. If not specified, composer-n1-webserver-2 will be used. Value custom is returned only in response, if Airflow web server parameters were manually changed to a non-standard values.
  EnvironmentConfigWebServerConfig({
    required this.machineType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['machineType'] = machineType;
    return map;
  }

  factory EnvironmentConfigWebServerConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigWebServerConfig(
      machineType: map['machineType'] as String,
    );
  }
}
