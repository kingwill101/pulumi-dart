/// Specifies the type of the Gallery Script parameter. Possible values are: String, Int, Double, Boolean, Enum
enum GalleryScriptParameterType {
  string("String"),
  int("Int"),
  double("Double"),
  boolean("Boolean"),
  enum_("Enum");

  const GalleryScriptParameterType(this.value);
  final String value;

  static GalleryScriptParameterType fromValue(String value) {
    for (final item in GalleryScriptParameterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GalleryScriptParameterType value: $value');
  }
}

