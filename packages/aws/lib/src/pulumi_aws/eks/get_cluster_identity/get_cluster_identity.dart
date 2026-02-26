// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_identity_oidc/get_cluster_identity_oidc.dart';

class GetClusterIdentity {
  /// Nested attribute containing [OpenID Connect](https://openid.net/connect/) identity provider information for the cluster.
  final List<GetClusterIdentityOidc> oidcs;

  GetClusterIdentity({
    required this.oidcs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oidcs'] =
        Input.encodeList<GetClusterIdentityOidc, Map<String, dynamic>>(
            oidcs, (value) => value.toMap());
    return map;
  }

  factory GetClusterIdentity.fromMap(Map<String, dynamic> map) {
    return GetClusterIdentity(
      oidcs: Input.decodeList<GetClusterIdentityOidc>(
          map['oidcs'],
          (value) => GetClusterIdentityOidc.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
