/// Immutable. The target type of this group.
enum GroupMigrationTargetType {
  migrationTargetTypeUnspecified("MIGRATION_TARGET_TYPE_UNSPECIFIED"),
  migrationTargetTypeGce("MIGRATION_TARGET_TYPE_GCE"),
  migrationTargetTypeDisks("MIGRATION_TARGET_TYPE_DISKS");

  const GroupMigrationTargetType(this.value);
  final String value;

  static GroupMigrationTargetType fromValue(String value) {
    for (final item in GroupMigrationTargetType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GroupMigrationTargetType value: $value');
  }
}
