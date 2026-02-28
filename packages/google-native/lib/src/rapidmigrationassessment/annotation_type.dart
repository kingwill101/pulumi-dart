/// Type of an annotation.
enum AnnotationType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  typeLegacyExportConsent("TYPE_LEGACY_EXPORT_CONSENT"),
  typeQwiklab("TYPE_QWIKLAB");

  const AnnotationType(this.value);
  final String value;

  static AnnotationType fromValue(String value) {
    for (final item in AnnotationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnnotationType value: $value');
  }
}

