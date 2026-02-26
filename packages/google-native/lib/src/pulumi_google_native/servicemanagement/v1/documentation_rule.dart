// ignore_for_file: unused_element, unnecessary_cast

/// A documentation rule provides information about individual API elements.
class DocumentationRule {
  /// Deprecation description of the selected element(s). It can be provided if an element is marked as `deprecated`.
  final String? deprecationDescription;

  /// Description of the selected proto element (e.g. a message, a method, a 'service' definition, or a field). Defaults to leading & trailing comments taken from the proto source definition of the proto element.
  final String? description;

  /// String of comma or space separated case-sensitive words for which method/field name replacement will be disabled by go/api-docgen.
  final String? disableReplacementWords;

  /// The selector is a comma-separated list of patterns for any element such as a method, a field, an enum value. Each pattern is a qualified name of the element which may end in "*", indicating a wildcard. Wildcards are only allowed at the end and for a whole component of the qualified name, i.e. "foo.*" is ok, but not "foo.b*" or "foo.*.bar". A wildcard will match one or more components. To specify a default for all applicable elements, the whole pattern "*" is used.
  final String? selector;

  DocumentationRule({
    this.deprecationDescription,
    this.description,
    this.disableReplacementWords,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deprecationDescriptionValue = deprecationDescription;
    if (deprecationDescriptionValue != null) {
      map['deprecationDescription'] = deprecationDescriptionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disableReplacementWordsValue = disableReplacementWords;
    if (disableReplacementWordsValue != null) {
      map['disableReplacementWords'] = disableReplacementWordsValue;
    }
    final selectorValue = selector;
    if (selectorValue != null) {
      map['selector'] = selectorValue;
    }
    return map;
  }

  factory DocumentationRule.fromMap(Map<String, dynamic> map) {
    return DocumentationRule(
      deprecationDescription: map['deprecationDescription'] == null
          ? null
          : map['deprecationDescription'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      disableReplacementWords: map['disableReplacementWords'] == null
          ? null
          : map['disableReplacementWords'] as String,
      selector: map['selector'] == null ? null : map['selector'] as String,
    );
  }
}
