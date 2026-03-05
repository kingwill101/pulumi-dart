/// The infrastructure the data controller is running on.
enum Infrastructure {
  valueAzure("azure"),
  valueGcp("gcp"),
  valueAws("aws"),
  valueAlibaba("alibaba"),
  valueOnpremises("onpremises"),
  valueOther("other");

  const Infrastructure(this.wireValue);
  final String wireValue;

  static Infrastructure fromValue(String value) {
    for (final item in Infrastructure.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Infrastructure value: $value');
  }
}

