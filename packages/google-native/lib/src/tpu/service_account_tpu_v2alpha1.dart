// ignore_for_file: unused_element, unnecessary_cast

/// A service account.
class ServiceAccountTpuV2alpha1 {
  /// Email address of the service account. If empty, default Compute service account will be used.
  final String? email;

  /// The list of scopes to be made available for this service account. If empty, access to all Cloud APIs will be allowed.
  final List<String>? scope;

  /// Creates a new [ServiceAccountTpuV2alpha1].
  /// [email] Email address of the service account. If empty, default Compute service account will be used.
  /// [scope] The list of scopes to be made available for this service account. If empty, access to all Cloud APIs will be allowed.
  ServiceAccountTpuV2alpha1({
    this.email,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    return map;
  }

  factory ServiceAccountTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return ServiceAccountTpuV2alpha1(
      email: map['email'] == null ? null : map['email'] as String,
      scope:
          map['scope'] == null ? null : (map['scope'] as List).cast<String>(),
    );
  }
}
