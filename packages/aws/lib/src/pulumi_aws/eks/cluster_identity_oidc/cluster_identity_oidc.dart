// ignore_for_file: unused_element, unnecessary_cast

class ClusterIdentityOidc {
  /// Issuer URL for the OpenID Connect identity provider.
  final String? issuer;

  ClusterIdentityOidc({
    this.issuer,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final issuerValue = issuer;
    if (issuerValue != null) {
      map['issuer'] = issuerValue;
    }
    return map;
  }

  factory ClusterIdentityOidc.fromMap(Map<String, dynamic> map) {
    return ClusterIdentityOidc(
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
    );
  }
}
