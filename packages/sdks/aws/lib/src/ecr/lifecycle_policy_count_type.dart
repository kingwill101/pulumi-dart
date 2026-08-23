/// The type of count to perform.
enum LifecyclePolicyCountType {
  imageCountMoreThan("imageCountMoreThan"),
  sinceImagePushed("sinceImagePushed"),
  sinceImagePulled("sinceImagePulled"),
  sinceImageTransitioned("sinceImageTransitioned");

  const LifecyclePolicyCountType(this.wireValue);
  final String wireValue;

  static LifecyclePolicyCountType fromValue(String value) {
    for (final item in LifecyclePolicyCountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecyclePolicyCountType value: $value');
  }
}
