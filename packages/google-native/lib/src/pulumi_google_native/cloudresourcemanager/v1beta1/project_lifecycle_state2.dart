/// The Project lifecycle state. Read-only.
enum ProjectLifecycleState2 {
  lifecycleStateUnspecified("LIFECYCLE_STATE_UNSPECIFIED"),
  active("ACTIVE"),
  deleteRequested("DELETE_REQUESTED"),
  deleteInProgress("DELETE_IN_PROGRESS");

  const ProjectLifecycleState2(this.value);
  final String value;

  static ProjectLifecycleState2 fromValue(String value) {
    for (final item in ProjectLifecycleState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectLifecycleState2 value: $value');
  }
}
