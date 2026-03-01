/// Specifies the move cost for the service.
enum MoveCost {
  zero("Zero"),
  low("Low"),
  medium("Medium"),
  high("High");

  const MoveCost(this.value);
  final String value;

  static MoveCost fromValue(String value) {
    for (final item in MoveCost.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MoveCost value: $value');
  }
}

