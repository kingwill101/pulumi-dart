import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum RepoUpgradeOnBoot implements pulumi.PulumiEnum<String> {
  nONE("NONE"),
  sECURITY("SECURITY");

  const RepoUpgradeOnBoot(this.wireValue);
  @override
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
