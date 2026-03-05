/// Property value
enum RepoUpgradeOnBoot {
  nONE("NONE"),
  sECURITY("SECURITY");

  const RepoUpgradeOnBoot(this.wireValue);
  final String wireValue;

  static RepoUpgradeOnBoot fromValue(String value) {
    for (final item in RepoUpgradeOnBoot.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepoUpgradeOnBoot value: $value');
  }
}

