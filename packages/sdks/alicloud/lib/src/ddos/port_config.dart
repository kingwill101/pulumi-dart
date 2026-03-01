// ignore_for_file: unused_element, unnecessary_cast


class PortConfig {
  /// The timeout period for session retention. Value range: 30~3600, unit: second. The default is 0, which means off.
  final int? persistenceTimeout;

  /// Creates a new [PortConfig].
  /// [persistenceTimeout] The timeout period for session retention. Value range: 30~3600, unit: second. The default is 0, which means off.
  PortConfig({
    this.persistenceTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistenceTimeout': ?persistenceTimeout,
    };
  }

  factory PortConfig.fromMap(Map<String, dynamic> map) {
    return PortConfig(
      persistenceTimeout: map['persistenceTimeout'] == null ? null : map['persistenceTimeout'] as int,
    );
  }
}

