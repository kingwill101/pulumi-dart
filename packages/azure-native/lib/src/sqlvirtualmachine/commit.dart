/// Replica commit mode in availability group.
enum Commit {
  synchronousCommit("Synchronous_Commit"),
  asynchronousCommit("Asynchronous_Commit");

  const Commit(this.value);
  final String value;

  static Commit fromValue(String value) {
    for (final item in Commit.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Commit value: $value');
  }
}

