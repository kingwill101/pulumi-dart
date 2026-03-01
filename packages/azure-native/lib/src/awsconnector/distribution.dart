/// The method used to distribute log data to the destination, which can be either random or grouped by log stream.
enum Distribution {
  byLogStream("ByLogStream"),
  random("Random");

  const Distribution(this.value);
  final String value;

  static Distribution fromValue(String value) {
    for (final item in Distribution.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Distribution value: $value');
  }
}

