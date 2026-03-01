/// Custom image OS state.
enum ImageOSState {
  valueGeneralized("Generalized"),
  valueSpecialized("Specialized");

  const ImageOSState(this.value);
  final String value;

  static ImageOSState fromValue(String value) {
    for (final item in ImageOSState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageOSState value: $value');
  }
}

