// ignore_for_file: unused_element, unnecessary_cast


/// Stream governance configuration
class StreamGovernanceConfig {
  /// Stream governance configuration
  final String? package;

  /// Creates a new [StreamGovernanceConfig].
  /// [package] Stream governance configuration
  StreamGovernanceConfig({
    this.package,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'package': ?package,
    };
  }

  factory StreamGovernanceConfig.fromMap(Map<String, dynamic> map) {
    return StreamGovernanceConfig(
      package: map['package'] == null ? null : map['package'] as String,
    );
  }
}

