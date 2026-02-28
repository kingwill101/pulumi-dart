// ignore_for_file: unused_element, unnecessary_cast

class DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig {
  /// If true, the LLM based annotation is added to the image during parsing.
  final bool? enableImageAnnotation;

  /// If true, the LLM based annotation is added to the table during parsing.
  final bool? enableTableAnnotation;

  /// List of HTML classes to exclude from the parsed content.
  final List<String>? excludeHtmlClasses;

  /// List of HTML elements to exclude from the parsed content.
  final List<String>? excludeHtmlElements;

  /// List of HTML ids to exclude from the parsed content.
  final List<String>? excludeHtmlIds;

  /// Contains the required structure types to extract from the document. Supported values: `shareholder-structure`.
  final List<String>? structuredContentTypes;

  /// Creates a new [DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig].
  /// [enableImageAnnotation] If true, the LLM based annotation is added to the image during parsing.
  /// [enableTableAnnotation] If true, the LLM based annotation is added to the table during parsing.
  /// [excludeHtmlClasses] List of HTML classes to exclude from the parsed content.
  /// [excludeHtmlElements] List of HTML elements to exclude from the parsed content.
  /// [excludeHtmlIds] List of HTML ids to exclude from the parsed content.
  /// [structuredContentTypes] Contains the required structure types to extract from the document. Supported values: `shareholder-structure`.
  DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig({
    this.enableImageAnnotation,
    this.enableTableAnnotation,
    this.excludeHtmlClasses,
    this.excludeHtmlElements,
    this.excludeHtmlIds,
    this.structuredContentTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableImageAnnotationValue = enableImageAnnotation;
    if (enableImageAnnotationValue != null) {
      map['enableImageAnnotation'] = enableImageAnnotationValue;
    }
    final enableTableAnnotationValue = enableTableAnnotation;
    if (enableTableAnnotationValue != null) {
      map['enableTableAnnotation'] = enableTableAnnotationValue;
    }
    final excludeHtmlClassesValue = excludeHtmlClasses;
    if (excludeHtmlClassesValue != null) {
      map['excludeHtmlClasses'] = excludeHtmlClassesValue;
    }
    final excludeHtmlElementsValue = excludeHtmlElements;
    if (excludeHtmlElementsValue != null) {
      map['excludeHtmlElements'] = excludeHtmlElementsValue;
    }
    final excludeHtmlIdsValue = excludeHtmlIds;
    if (excludeHtmlIdsValue != null) {
      map['excludeHtmlIds'] = excludeHtmlIdsValue;
    }
    final structuredContentTypesValue = structuredContentTypes;
    if (structuredContentTypesValue != null) {
      map['structuredContentTypes'] = structuredContentTypesValue;
    }
    return map;
  }

  factory DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig.fromMap(
      Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig(
      enableImageAnnotation: map['enableImageAnnotation'] == null
          ? null
          : map['enableImageAnnotation'] as bool,
      enableTableAnnotation: map['enableTableAnnotation'] == null
          ? null
          : map['enableTableAnnotation'] as bool,
      excludeHtmlClasses: map['excludeHtmlClasses'] == null
          ? null
          : (map['excludeHtmlClasses'] as List).cast<String>(),
      excludeHtmlElements: map['excludeHtmlElements'] == null
          ? null
          : (map['excludeHtmlElements'] as List).cast<String>(),
      excludeHtmlIds: map['excludeHtmlIds'] == null
          ? null
          : (map['excludeHtmlIds'] as List).cast<String>(),
      structuredContentTypes: map['structuredContentTypes'] == null
          ? null
          : (map['structuredContentTypes'] as List).cast<String>(),
    );
  }
}
