/// Distinguish between sentinel MIN/MAX versions and normal versions. If kind is not NORMAL, then the other fields are ignored.
enum VersionKindContaineranalysisV1alpha1 {
  normal("NORMAL"),
  minimum("MINIMUM"),
  maximum("MAXIMUM");

  const VersionKindContaineranalysisV1alpha1(this.value);
  final String value;

  static VersionKindContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in VersionKindContaineranalysisV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown VersionKindContaineranalysisV1alpha1 value: $value');
  }
}
