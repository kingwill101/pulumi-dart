// ignore_for_file: unused_element, unnecessary_cast


class ResourceConcurrencyControlOptionResponse {
  /// The policy.
  final String? policy;

  /// Creates a new [ResourceConcurrencyControlOptionResponse].
  /// [policy] The policy.
  ResourceConcurrencyControlOptionResponse({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory ResourceConcurrencyControlOptionResponse.fromMap(Map<String, dynamic> map) {
    return ResourceConcurrencyControlOptionResponse(
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}

