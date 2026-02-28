// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotGuardrailModelSafetySafetySetting {
  /// (Output)
  /// The harm category.
  /// Possible values:
  /// HARM_CATEGORY_HATE_SPEECH
  /// HARM_CATEGORY_DANGEROUS_CONTENT
  /// HARM_CATEGORY_HARASSMENT
  /// HARM_CATEGORY_SEXUALLY_EXPLICIT
  final String? category;

  /// (Output)
  /// The harm block threshold.
  /// Possible values:
  /// BLOCK_LOW_AND_ABOVE
  /// BLOCK_MEDIUM_AND_ABOVE
  /// BLOCK_ONLY_HIGH
  /// BLOCK_NONE
  /// OFF
  final String? threshold;

  /// Creates a new [AppVersionSnapshotGuardrailModelSafetySafetySetting].
  /// [category] (Output)
  /// [threshold] (Output)
  AppVersionSnapshotGuardrailModelSafetySafetySetting({
    this.category,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoryValue = category;
    if (categoryValue != null) {
      map['category'] = categoryValue;
    }
    final thresholdValue = threshold;
    if (thresholdValue != null) {
      map['threshold'] = thresholdValue;
    }
    return map;
  }

  factory AppVersionSnapshotGuardrailModelSafetySafetySetting.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailModelSafetySafetySetting(
      category: map['category'] == null ? null : map['category'] as String,
      threshold: map['threshold'] == null ? null : map['threshold'] as String,
    );
  }
}
