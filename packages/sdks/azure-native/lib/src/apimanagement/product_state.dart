/// whether product is published or not. Published products are discoverable by users of developer portal. Non published products are visible only to administrators. Default state of Product is notPublished.
enum ProductState {
  valueNotPublished("notPublished"),
  valuePublished("published");

  const ProductState(this.wireValue);
  final String wireValue;

  static ProductState fromValue(String value) {
    for (final item in ProductState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductState value: $value');
  }
}

