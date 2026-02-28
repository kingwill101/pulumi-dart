/// The tag status of the image.
enum LifecyclePolicyTagStatus {
  tagged("tagged"),
  untagged("untagged"),
  any("any");

  const LifecyclePolicyTagStatus(this.value);
  final String value;

  static LifecyclePolicyTagStatus fromValue(String value) {
    for (final item in LifecyclePolicyTagStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecyclePolicyTagStatus value: $value');
  }
}
