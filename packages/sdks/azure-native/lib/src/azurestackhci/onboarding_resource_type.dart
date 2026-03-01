/// Type of the onboarding resource to support polymorphic resource.
enum OnboardingResourceType {
  hybridComputeMachine("HybridComputeMachine");

  const OnboardingResourceType(this.value);
  final String value;

  static OnboardingResourceType fromValue(String value) {
    for (final item in OnboardingResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnboardingResourceType value: $value');
  }
}

