// ignore_for_file: unused_element, unnecessary_cast


class DomainParameterFilterConfig {
  final String? enable;
  final List<String>? hashKeyArgs;

  /// Creates a new [DomainParameterFilterConfig].
  /// [enable] Optional.
  /// [hashKeyArgs] Optional.
  DomainParameterFilterConfig({
    this.enable,
    this.hashKeyArgs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'hashKeyArgs': ?hashKeyArgs,
    };
  }

  factory DomainParameterFilterConfig.fromMap(Map<String, dynamic> map) {
    return DomainParameterFilterConfig(
      enable: map['enable'] == null ? null : map['enable'] as String,
      hashKeyArgs: map['hashKeyArgs'] == null ? null : (map['hashKeyArgs'] as List).cast<String>(),
    );
  }
}

