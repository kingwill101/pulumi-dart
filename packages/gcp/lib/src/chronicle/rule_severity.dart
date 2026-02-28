// ignore_for_file: unused_element, unnecessary_cast

class RuleSeverity {
  /// The display name of the severity level. Extracted from the meta section of
  /// the rule text.
  final String? displayName;

  /// Creates a new [RuleSeverity].
  /// [displayName] The display name of the severity level. Extracted from the meta section of
  RuleSeverity({
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    return map;
  }

  factory RuleSeverity.fromMap(Map<String, dynamic> map) {
    return RuleSeverity(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
    );
  }
}
