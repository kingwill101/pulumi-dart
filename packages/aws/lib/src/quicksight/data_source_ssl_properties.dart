// ignore_for_file: unused_element, unnecessary_cast

class DataSourceSslProperties {
  /// A Boolean option to control whether SSL should be disabled.
  final bool disableSsl;

  /// Creates a new [DataSourceSslProperties].
  /// [disableSsl] A Boolean option to control whether SSL should be disabled.
  DataSourceSslProperties({required this.disableSsl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disableSsl': disableSsl};
  }

  factory DataSourceSslProperties.fromMap(Map<String, dynamic> map) {
    return DataSourceSslProperties(disableSsl: map['disableSsl'] as bool);
  }
}
