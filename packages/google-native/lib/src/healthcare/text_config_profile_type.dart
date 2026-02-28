/// Base profile type for text transformation.
enum TextConfigProfileType {
  profileTypeUnspecified("PROFILE_TYPE_UNSPECIFIED"),
  empty("EMPTY"),
  basic("BASIC");

  const TextConfigProfileType(this.value);
  final String value;

  static TextConfigProfileType fromValue(String value) {
    for (final item in TextConfigProfileType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextConfigProfileType value: $value');
  }
}

