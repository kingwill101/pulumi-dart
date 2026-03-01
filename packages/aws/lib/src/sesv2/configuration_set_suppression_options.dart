// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetSuppressionOptions {
  /// A list that contains the reasons that email addresses are automatically added to the suppression list for your account. Valid values: `BOUNCE`, `COMPLAINT`.
  final List<String>? suppressedReasons;

  /// Creates a new [ConfigurationSetSuppressionOptions].
  /// [suppressedReasons] A list that contains the reasons that email addresses are automatically added to the suppression list for your account. Valid values: `BOUNCE`, `COMPLAINT`.
  ConfigurationSetSuppressionOptions({this.suppressedReasons});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'suppressedReasons': ?suppressedReasons};
  }

  factory ConfigurationSetSuppressionOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetSuppressionOptions(
      suppressedReasons: map['suppressedReasons'] == null
          ? null
          : (map['suppressedReasons'] as List).cast<String>(),
    );
  }
}
