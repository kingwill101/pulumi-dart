/// The type of count to perform.
enum LifecyclePolicyCountType {
  imageCountMoreThan("imageCountMoreThan"),
  sinceImagePushed("sinceImagePushed");

  const LifecyclePolicyCountType(this.value);
  final String value;

  static LifecyclePolicyCountType fromValue(String value) {
    for (final item in LifecyclePolicyCountType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecyclePolicyCountType value: $value');
  }
}
