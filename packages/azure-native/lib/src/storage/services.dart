/// The signed services accessible with the account SAS. Possible values include: Blob (b), Queue (q), Table (t), File (f).
enum Services {
  valueB("b"),
  valueQ("q"),
  valueT("t"),
  valueF("f");

  const Services(this.value);
  final String value;

  static Services fromValue(String value) {
    for (final item in Services.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Services value: $value');
  }
}

