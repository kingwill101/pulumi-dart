// ignore_for_file: unused_element, unnecessary_cast

/// The configuration settings for the Airflow web server App Engine instance. Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
class WebServerConfigResponse2 {
  /// Optional. Machine type on which Airflow web server is running. It has to be one of: composer-n1-webserver-2, composer-n1-webserver-4 or composer-n1-webserver-8. If not specified, composer-n1-webserver-2 will be used. Value custom is returned only in response, if Airflow web server parameters were manually changed to a non-standard values.
  final String machineType;

  WebServerConfigResponse2({
    required this.machineType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['machineType'] = machineType;
    return map;
  }

  factory WebServerConfigResponse2.fromMap(Map<String, dynamic> map) {
    return WebServerConfigResponse2(
      machineType: map['machineType'] as String,
    );
  }
}
