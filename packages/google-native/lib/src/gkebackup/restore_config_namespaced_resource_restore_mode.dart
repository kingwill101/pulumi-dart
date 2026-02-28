/// Optional. Defines the behavior for handling the situation where sets of namespaced resources being restored already exist in the target cluster. This MUST be set to a value other than NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED.
enum RestoreConfigNamespacedResourceRestoreMode {
  namespacedResourceRestoreModeUnspecified("NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED"),
  deleteAndRestore("DELETE_AND_RESTORE"),
  failOnConflict("FAIL_ON_CONFLICT");

  const RestoreConfigNamespacedResourceRestoreMode(this.value);
  final String value;

  static RestoreConfigNamespacedResourceRestoreMode fromValue(String value) {
    for (final item in RestoreConfigNamespacedResourceRestoreMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RestoreConfigNamespacedResourceRestoreMode value: $value');
  }
}

