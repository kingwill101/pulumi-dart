// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The helm deployment install options
class HelmUpgradeOptions {
  /// The helm deployment atomic options
  final pulumi.Input<String>? atomic;
  /// The helm deployment timeout options
  final pulumi.Input<String>? timeout;
  /// The helm deployment wait options
  final pulumi.Input<String>? wait;

  /// Creates a new [HelmUpgradeOptions].
  /// [atomic] The helm deployment atomic options
  /// [timeout] The helm deployment timeout options
  /// [wait] The helm deployment wait options
  HelmUpgradeOptions({
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

  factory HelmUpgradeOptions.fromMap(Map<String, dynamic> map) {
    return HelmUpgradeOptions(
      atomic: map['atomic'] == null ? null : (map['atomic']! as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
      wait: map['wait'] == null ? null : (map['wait']! as String).input(),
    );
  }
}

