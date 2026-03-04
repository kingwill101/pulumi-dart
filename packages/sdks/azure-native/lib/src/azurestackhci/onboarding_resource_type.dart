/// Type of the onboarding resource to support polymorphic resource.
enum OnboardingResourceType {
  hybridComputeMachine("HybridComputeMachine");

  const OnboardingResourceType(this.wireValue);
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
