// ignore_for_file: unused_element, unnecessary_cast

class GuardrailModelSafetySafetySetting {
  /// The harm category.
  /// Possible values:
  /// HARM_CATEGORY_HATE_SPEECH
  /// HARM_CATEGORY_DANGEROUS_CONTENT
  /// HARM_CATEGORY_HARASSMENT
  /// HARM_CATEGORY_SEXUALLY_EXPLICIT
  /// Possible values are: `HARM_CATEGORY_HATE_SPEECH`, `HARM_CATEGORY_DANGEROUS_CONTENT`, `HARM_CATEGORY_HARASSMENT`, `HARM_CATEGORY_SEXUALLY_EXPLICIT`.
  final String category;

  /// The harm block threshold.
  /// Possible values:
  /// BLOCK_LOW_AND_ABOVE
  /// BLOCK_MEDIUM_AND_ABOVE
  /// BLOCK_ONLY_HIGH
  /// BLOCK_NONE
  /// OFF
  /// Possible values are: `BLOCK_LOW_AND_ABOVE`, `BLOCK_MEDIUM_AND_ABOVE`, `BLOCK_ONLY_HIGH`, `BLOCK_NONE`, `OFF`.
  final String threshold;

  GuardrailModelSafetySafetySetting({
    required this.category,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['category'] = category;
    map['threshold'] = threshold;
    return map;
  }

  factory GuardrailModelSafetySafetySetting.fromMap(Map<String, dynamic> map) {
    return GuardrailModelSafetySafetySetting(
      category: map['category'] as String,
      threshold: map['threshold'] as String,
    );
  }
}
