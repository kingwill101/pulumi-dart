/// The Project lifecycle state. Read-only.
enum ProjectLifecycleState {
  lifecycleStateUnspecified("LIFECYCLE_STATE_UNSPECIFIED"),
  active("ACTIVE"),
  deleteRequested("DELETE_REQUESTED"),
  deleteInProgress("DELETE_IN_PROGRESS");

  const ProjectLifecycleState(this.value);
  final String value;

  static ProjectLifecycleState fromValue(String value) {
    for (final item in ProjectLifecycleState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectLifecycleState value: $value');
  }
}

