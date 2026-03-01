// ignore_for_file: unused_element, unnecessary_cast

class ClusterIdentityOidc {
  /// Issuer URL for the OpenID Connect identity provider.
  final String? issuer;

  /// Creates a new [ClusterIdentityOidc].
  /// [issuer] Issuer URL for the OpenID Connect identity provider.
  ClusterIdentityOidc({this.issuer});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'issuer': ?issuer};
  }

  factory ClusterIdentityOidc.fromMap(Map<String, dynamic> map) {
    return ClusterIdentityOidc(
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
    );
  }
}
