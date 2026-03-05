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

  const ImageState(this.wireValue);
  final String wireValue;

  static ImageState fromValue(String value) {
    for (final item in ImageState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageState value: $value');
  }
}

