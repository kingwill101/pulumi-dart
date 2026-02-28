// ignore_for_file: unused_element, unnecessary_cast

class GetConfigurationSetSuppressionOption {
  /// A list that contains the reasons that email addresses are automatically added to the suppression list for your account.
  final List<String> suppressedReasons;

  /// Creates a new [GetConfigurationSetSuppressionOption].
  /// [suppressedReasons] A list that contains the reasons that email addresses are automatically added to the suppression list for your account.
  GetConfigurationSetSuppressionOption({
    required this.suppressedReasons,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['suppressedReasons'] = suppressedReasons;
    return map;
  }

  factory GetConfigurationSetSuppressionOption.fromMap(
      Map<String, dynamic> map) {
    return GetConfigurationSetSuppressionOption(
      suppressedReasons: (map['suppressedReasons'] as List).cast<String>(),
    );
  }
}
