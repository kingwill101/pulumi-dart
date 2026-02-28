// ignore_for_file: unused_element, unnecessary_cast


class AuthzPolicyCustomProviderAuthzExtension {
  /// A list of references to authorization extensions that will be invoked for requests matching this policy. Limited to 1 custom provider.
  final List<String> resources;

  /// Creates a new [AuthzPolicyCustomProviderAuthzExtension].
  /// [resources] A list of references to authorization extensions that will be invoked for requests matching this policy. Limited to 1 custom provider.
  AuthzPolicyCustomProviderAuthzExtension({
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resources': resources,
    };
  }

  factory AuthzPolicyCustomProviderAuthzExtension.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyCustomProviderAuthzExtension(
      resources: (map['resources'] as List).cast<String>(),
    );
  }
}

