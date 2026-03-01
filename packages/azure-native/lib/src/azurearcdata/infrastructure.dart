/// The infrastructure the data controller is running on.
enum Infrastructure {
  valueAzure("azure"),
  valueGcp("gcp"),
  valueAws("aws"),
  valueAlibaba("alibaba"),
  valueOnpremises("onpremises"),
  valueOther("other");

  const Infrastructure(this.value);
  final String value;

  static Infrastructure fromValue(String value) {
    for (final item in Infrastructure.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Infrastructure value: $value');
  }
}

