// ignore_for_file: unused_element, unnecessary_cast

class ClassifierXmlClassifier {
  /// An identifier of the data format that the classifier matches.
  final String classification;

  /// The XML tag designating the element that contains each record in an XML document being parsed. Note that this cannot identify a self-closing element (closed by `/>`). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, `<row item_a="A" item_b="B"></row>` is okay, but `<row item_a="A" item_b="B" />` is not).
  final String rowTag;

  ClassifierXmlClassifier({
    required this.classification,
    required this.rowTag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['classification'] = classification;
    map['rowTag'] = rowTag;
    return map;
  }

  factory ClassifierXmlClassifier.fromMap(Map<String, dynamic> map) {
    return ClassifierXmlClassifier(
      classification: map['classification'] as String,
      rowTag: map['rowTag'] as String,
    );
  }
}
