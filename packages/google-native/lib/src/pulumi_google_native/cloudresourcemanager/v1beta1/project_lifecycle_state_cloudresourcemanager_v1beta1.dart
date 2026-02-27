/// The Project lifecycle state. Read-only.
enum ProjectLifecycleStateCloudresourcemanagerV1beta1 {
  lifecycleStateUnspecified("LIFECYCLE_STATE_UNSPECIFIED"),
  active("ACTIVE"),
  deleteRequested("DELETE_REQUESTED"),
  deleteInProgress("DELETE_IN_PROGRESS");

  const ProjectLifecycleStateCloudresourcemanagerV1beta1(this.value);
  final String value;

  static ProjectLifecycleStateCloudresourcemanagerV1beta1 fromValue(
      String value) {
    for (final item
        in ProjectLifecycleStateCloudresourcemanagerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ProjectLifecycleStateCloudresourcemanagerV1beta1 value: $value');
  }
}
