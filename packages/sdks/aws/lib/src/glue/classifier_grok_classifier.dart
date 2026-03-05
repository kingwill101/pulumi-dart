// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassifierGrokClassifier {
  /// An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.
  final pulumi.Input<String> classification;
  /// Custom grok patterns used by this classifier.
  final pulumi.Input<String>? customPatterns;
  /// The grok pattern used by this classifier.
  final pulumi.Input<String> grokPattern;

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
      classification: pulumi.Input.fromValue(map['classification'] as String),
      customPatterns: (() { final guardedValue = map['customPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grokPattern: pulumi.Input.fromValue(map['grokPattern'] as String),
    );
  }
}

