// ignore_for_file: unused_element, unnecessary_cast

/// A service account.
class ServiceAccountResponse9 {
  /// Email address of the service account. If empty, default Compute service account will be used.
  final String email;

  /// The list of scopes to be made available for this service account. If empty, access to all Cloud APIs will be allowed.
  final List<String> scope;

  ServiceAccountResponse9({
    required this.email,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['scope'] = scope;
    return map;
  }

  factory ServiceAccountResponse9.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse9(
      email: map['email'] as String,
      scope: (map['scope'] as List).cast<String>(),
    );
  }
}
