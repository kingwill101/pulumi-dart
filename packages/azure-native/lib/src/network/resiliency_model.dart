/// Property to indicate if the Express Route Gateway has resiliency model of MultiHomed or SingleHomed
enum ResiliencyModel {
  valueSingleHomed("SingleHomed"),
  valueMultiHomed("MultiHomed");

  const ResiliencyModel(this.value);
  final String value;

  static ResiliencyModel fromValue(String value) {
    for (final item in ResiliencyModel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResiliencyModel value: $value');
  }
}

