/// The pointer location for this widget (also sometimes called a "tail")
enum TextStylePointerLocation {
  pointerLocationUnspecified("POINTER_LOCATION_UNSPECIFIED"),
  plTop("PL_TOP"),
  plRight("PL_RIGHT"),
  plBottom("PL_BOTTOM"),
  plLeft("PL_LEFT"),
  plTopLeft("PL_TOP_LEFT"),
  plTopRight("PL_TOP_RIGHT"),
  plRightTop("PL_RIGHT_TOP"),
  plRightBottom("PL_RIGHT_BOTTOM"),
  plBottomRight("PL_BOTTOM_RIGHT"),
  plBottomLeft("PL_BOTTOM_LEFT"),
  plLeftBottom("PL_LEFT_BOTTOM"),
  plLeftTop("PL_LEFT_TOP");

  const TextStylePointerLocation(this.value);
  final String value;

  static TextStylePointerLocation fromValue(String value) {
    for (final item in TextStylePointerLocation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextStylePointerLocation value: $value');
  }
}
