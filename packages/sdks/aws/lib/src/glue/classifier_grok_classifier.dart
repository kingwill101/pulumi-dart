// ignore_for_file: unused_element, unnecessary_cast


class ClassifierGrokClassifier {
  /// An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.
  final String classification;
  /// Custom grok patterns used by this classifier.
  final String? customPatterns;
  /// The grok pattern used by this classifier.
  final String grokPattern;

  /// Creates a new [ClassifierGrokClassifier].
  /// [classification] An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.
  /// [customPatterns] Custom grok patterns used by this classifier.
  /// [grokPattern] The grok pattern used by this classifier.
  ClassifierGrokClassifier({
    required this.classification,
    this.customPatterns,
    required this.grokPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': classification,
      'customPatterns': ?customPatterns,
      'grokPattern': grokPattern,
    };
  }

  factory ClassifierGrokClassifier.fromMap(Map<String, dynamic> map) {
    return ClassifierGrokClassifier(
      classification: map['classification'] as String,
      customPatterns: map['customPatterns'] == null ? null : map['customPatterns'] as String,
      grokPattern: map['grokPattern'] as String,
    );
  }
}

