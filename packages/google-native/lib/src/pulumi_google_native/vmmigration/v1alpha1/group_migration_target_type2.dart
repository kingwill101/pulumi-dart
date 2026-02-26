/// Immutable. The target type of this group.
enum GroupMigrationTargetType2 {
  migrationTargetTypeUnspecified("MIGRATION_TARGET_TYPE_UNSPECIFIED"),
  migrationTargetTypeGce("MIGRATION_TARGET_TYPE_GCE"),
  migrationTargetTypeDisks("MIGRATION_TARGET_TYPE_DISKS");

  const GroupMigrationTargetType2(this.value);
  final String value;

  static GroupMigrationTargetType2 fromValue(String value) {
    for (final item in GroupMigrationTargetType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GroupMigrationTargetType2 value: $value');
  }
}
