// ignore_for_file: unused_element, unnecessary_cast

/// A non-fatal problem encountered during the execution of the build.
class WarningResponse {
  /// The priority for this warning.
  final String priority;

  /// Explanation of the warning generated.
  final String text;

  /// Creates a new [WarningResponse].
  /// [priority] The priority for this warning.
  /// [text] Explanation of the warning generated.
  WarningResponse({
    required this.priority,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['priority'] = priority;
    map['text'] = text;
    return map;
  }

  factory WarningResponse.fromMap(Map<String, dynamic> map) {
    return WarningResponse(
      priority: map['priority'] as String,
      text: map['text'] as String,
    );
  }
}
