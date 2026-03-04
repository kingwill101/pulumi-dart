// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassifierXmlClassifier {
  /// An identifier of the data format that the classifier matches.
  final pulumi.Input<String> classification;

  /// The XML tag designating the element that contains each record in an XML document being parsed. Note that this cannot identify a self-closing element (closed by `/&gt;`). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, `&lt;row item_a="A" item_b="B"&gt;&lt;/row&gt;` is okay, but `&lt;row item_a="A" item_b="B" /&gt;` is not).
  final pulumi.Input<String> rowTag;

  /// Creates a new [ClassifierXmlClassifier].
  /// [classification] An identifier of the data format that the classifier matches.
  /// [rowTag] The XML tag designating the element that contains each record in an XML document being parsed. Note that this cannot identify a self-closing element (closed by `/&gt;`). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, `&lt;row item_a="A" item_b="B"&gt;&lt;/row&gt;` is okay, but `&lt;row item_a="A" item_b="B" /&gt;` is not).
  ClassifierXmlClassifier({required this.classification, required this.rowTag});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': classification,
      'rowTag': rowTag,
    };
  }

  factory ClassifierXmlClassifier.fromMap(Map<String, dynamic> map) {
    return ClassifierXmlClassifier(
      classification: pulumi.Input.fromValue(map['classification'] as String),
      rowTag: pulumi.Input.fromValue(map['rowTag'] as String),
    );
  }
}
