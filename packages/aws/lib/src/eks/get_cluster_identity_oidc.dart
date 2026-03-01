// ignore_for_file: unused_element, unnecessary_cast


class GetClusterIdentityOidc {
  /// Issuer URL for the OpenID Connect identity provider.
  final String issuer;

  /// Creates a new [GetClusterIdentityOidc].
  /// [issuer] Issuer URL for the OpenID Connect identity provider.
  GetClusterIdentityOidc({
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuer': issuer,
    };
  }

  factory GetClusterIdentityOidc.fromMap(Map<String, dynamic> map) {
    return GetClusterIdentityOidc(
      issuer: map['issuer'] as String,
    );
  }
}

