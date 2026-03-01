// ignore_for_file: unused_element, unnecessary_cast


/// The helm deployment install options
class HelmInstallOptions {
  /// The helm deployment atomic options
  final String? atomic;
  /// The helm deployment timeout options
  final String? timeout;
  /// The helm deployment wait options
  final String? wait;

  /// Creates a new [HelmInstallOptions].
  /// [atomic] The helm deployment atomic options
  /// [timeout] The helm deployment timeout options
  /// [wait] The helm deployment wait options
  HelmInstallOptions({
    this.atomic,
    this.timeout,
    this.wait,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atomic': ?atomic,
      'timeout': ?timeout,
      'wait': ?wait,
    };
  }

  factory HelmInstallOptions.fromMap(Map<String, dynamic> map) {
    return HelmInstallOptions(
      atomic: map['atomic'] == null ? null : map['atomic'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      wait: map['wait'] == null ? null : map['wait'] as String,
    );
  }
}

