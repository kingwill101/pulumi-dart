/// Property value
enum ImageState {
  available("available"),
  deregistered("deregistered"),
  disabled("disabled"),
  error("error"),
  failed("failed"),
  invalid("invalid"),
  pending("pending"),
  transient("transient");

  const ImageState(this.value);
  final String value;

  static ImageState fromValue(String value) {
    for (final item in ImageState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageState value: $value');
  }
}

