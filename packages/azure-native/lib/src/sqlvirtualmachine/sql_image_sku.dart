/// SQL Server edition type.
enum SqlImageSku {
  developer("Developer"),
  express("Express"),
  standard("Standard"),
  enterprise("Enterprise"),
  web("Web");

  const SqlImageSku(this.value);
  final String value;

  static SqlImageSku fromValue(String value) {
    for (final item in SqlImageSku.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlImageSku value: $value');
  }
}

