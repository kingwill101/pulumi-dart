import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of count to perform.
enum LifecyclePolicyCountType implements pulumi.PulumiEnum<String> {
  imageCountMoreThan("imageCountMoreThan"),
  sinceImagePushed("sinceImagePushed"),
  sinceImagePulled("sinceImagePulled"),
  sinceImageTransitioned("sinceImageTransitioned");

  const LifecyclePolicyCountType(this.wireValue);
  @override
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
