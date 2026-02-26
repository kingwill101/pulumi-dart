// ignore_for_file: unused_element, unnecessary_cast

class DataSourceSslProperties {
  /// A Boolean option to control whether SSL should be disabled.
  final bool disableSsl;

  DataSourceSslProperties({
    required this.disableSsl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disableSsl'] = disableSsl;
    return map;
  }

  factory DataSourceSslProperties.fromMap(Map<String, dynamic> map) {
    return DataSourceSslProperties(
      disableSsl: map['disableSsl'] as bool,
    );
  }
}
