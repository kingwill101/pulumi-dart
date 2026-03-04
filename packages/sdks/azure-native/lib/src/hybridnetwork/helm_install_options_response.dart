// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The helm deployment install options
class HelmInstallOptionsResponse {
  /// The helm deployment atomic options
  final pulumi.Input<String>? atomic;

  /// The helm deployment timeout options
  final pulumi.Input<String>? timeout;

  /// The helm deployment wait options
  final pulumi.Input<String>? wait;

  /// Creates a new [HelmInstallOptionsResponse].
  /// [atomic] The helm deployment atomic options
  /// [timeout] The helm deployment timeout options
  /// [wait] The helm deployment wait options
  HelmInstallOptionsResponse({this.atomic, this.timeout, this.wait});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atomic': ?atomic,
      'timeout': ?timeout,
      'wait': ?wait,
    };
  }

  factory HelmInstallOptionsResponse.fromMap(Map<String, dynamic> map) {
    return HelmInstallOptionsResponse(
      atomic: (() {
        final guardedValue = map['atomic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      wait: (() {
        final guardedValue = map['wait'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
