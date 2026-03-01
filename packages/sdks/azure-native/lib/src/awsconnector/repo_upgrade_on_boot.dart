/// Property value
enum RepoUpgradeOnBoot {
  nONE("NONE"),
  sECURITY("SECURITY");

  const RepoUpgradeOnBoot(this.value);
  final String value;

  static RepoUpgradeOnBoot fromValue(String value) {
    for (final item in RepoUpgradeOnBoot.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepoUpgradeOnBoot value: $value');
  }
}

