// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterIdentityOidc {
  /// Issuer URL for the OpenID Connect identity provider.
  final pulumi.Input<String> issuer;

  /// Creates a new [GetClusterIdentityOidc].
  /// [issuer] Issuer URL for the OpenID Connect identity provider.
  const GetClusterIdentityOidc({
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuer': issuer,
    };
  }

  factory GetClusterIdentityOidc.fromMap(Map<String, dynamic> map) {
    return GetClusterIdentityOidc(
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
    );
  }
}
