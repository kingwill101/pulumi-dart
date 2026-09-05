// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetSuppressionOptions {
  /// List that contains the reasons that email addresses are automatically added to the suppression list for your account. Valid values: `BOUNCE`, `COMPLAINT`.
  final pulumi.Input<List<String>?>? suppressedReasons;

  /// Creates a new [ConfigurationSetSuppressionOptions].
  /// [suppressedReasons] List that contains the reasons that email addresses are automatically added to the suppression list for your account. Valid values: `BOUNCE`, `COMPLAINT`.
  const ConfigurationSetSuppressionOptions({
    this.suppressedReasons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suppressedReasons': ?suppressedReasons,
    };
  }

  factory ConfigurationSetSuppressionOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetSuppressionOptions(
      suppressedReasons: (() { final guardedValue = map['suppressedReasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
