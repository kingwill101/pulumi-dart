// ignore_for_file: unused_element, unnecessary_cast

class AuthzPolicyCustomProviderAuthzExtension {
  /// A list of references to authorization extensions that will be invoked for requests matching this policy. Limited to 1 custom provider.
  final List<String> resources;

  AuthzPolicyCustomProviderAuthzExtension({
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resources'] = resources;
    return map;
  }

  factory AuthzPolicyCustomProviderAuthzExtension.fromMap(
      Map<String, dynamic> map) {
    return AuthzPolicyCustomProviderAuthzExtension(
      resources: (map['resources'] as List).cast<String>(),
    );
  }
}
