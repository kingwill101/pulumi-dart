/// The tag status of the image.
enum LifecyclePolicyTagStatus {
  tagged("tagged"),
  untagged("untagged"),
  any("any");

  const LifecyclePolicyTagStatus(this.wireValue);
  final String wireValue;

  static LifecyclePolicyTagStatus fromValue(String value) {
    for (final item in LifecyclePolicyTagStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecyclePolicyTagStatus value: $value');
  }
}

