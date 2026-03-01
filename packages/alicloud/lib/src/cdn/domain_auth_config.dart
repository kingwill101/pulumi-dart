// ignore_for_file: unused_element, unnecessary_cast


class DomainAuthConfig {
  final String? authType;
  final String? masterKey;
  final String? slaveKey;
  final int? timeout;

  /// Creates a new [DomainAuthConfig].
  /// [authType] Optional.
  /// [masterKey] Optional.
  /// [slaveKey] Optional.
  /// [timeout] Optional.
  DomainAuthConfig({
    this.authType,
    this.masterKey,
    this.slaveKey,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?authType,
      'masterKey': ?masterKey,
      'slaveKey': ?slaveKey,
      'timeout': ?timeout,
    };
  }

  factory DomainAuthConfig.fromMap(Map<String, dynamic> map) {
    return DomainAuthConfig(
      authType: map['authType'] == null ? null : map['authType'] as String,
      masterKey: map['masterKey'] == null ? null : map['masterKey'] as String,
      slaveKey: map['slaveKey'] == null ? null : map['slaveKey'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}

