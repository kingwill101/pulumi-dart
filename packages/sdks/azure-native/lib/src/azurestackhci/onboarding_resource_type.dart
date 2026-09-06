import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the onboarding resource to support polymorphic resource.
enum OnboardingResourceType implements pulumi.PulumiEnum<String> {
  hybridComputeMachine("HybridComputeMachine");

  const OnboardingResourceType(this.wireValue);
  @override
  final String wireValue;

  static OnboardingResourceType fromValue(String value) {
    for (final item in OnboardingResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnboardingResourceType value: $value');
  }
}
