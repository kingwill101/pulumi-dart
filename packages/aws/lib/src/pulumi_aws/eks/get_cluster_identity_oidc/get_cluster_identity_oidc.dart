// ignore_for_file: unused_element, unnecessary_cast

class GetClusterIdentityOidc {
  /// Issuer URL for the OpenID Connect identity provider.
  final String issuer;

  GetClusterIdentityOidc({
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issuer'] = issuer;
    return map;
  }

  factory GetClusterIdentityOidc.fromMap(Map<String, dynamic> map) {
    return GetClusterIdentityOidc(
      issuer: map['issuer'] as String,
    );
  }
}
