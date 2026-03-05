/// Specifies the type of the Gallery Script parameter. Possible values are: String, Int, Double, Boolean, Enum
enum GalleryScriptParameterType {
  string_("String"),
  int_("Int"),
  double_("Double"),
  boolean("Boolean"),
  enum_("Enum");

  const GalleryScriptParameterType(this.wireValue);
  final String wireValue;

  static GalleryScriptParameterType fromValue(String value) {
    for (final item in GalleryScriptParameterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GalleryScriptParameterType value: $value');
  }
}

