/// Required. Gets or sets the Kind of the resource.
enum Kind {
  sdk("sdk"),
  designer("designer"),
  bot("bot"),
  function("function"),
  azurebot("azurebot");

  const Kind(this.value);
  final String value;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}

