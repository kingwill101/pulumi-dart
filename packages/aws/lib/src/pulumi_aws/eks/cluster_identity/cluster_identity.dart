// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_identity_oidc/cluster_identity_oidc.dart';

class ClusterIdentity {
  /// Nested block containing [OpenID Connect](https://openid.net/connect/) identity provider information for the cluster. Detailed below.
  final List<ClusterIdentityOidc>? oidcs;

  ClusterIdentity({
    this.oidcs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oidcsValue = oidcs;
    if (oidcsValue != null) {
      map['oidcs'] =
          Input.encodeList<ClusterIdentityOidc, Map<String, dynamic>>(
              oidcsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterIdentity.fromMap(Map<String, dynamic> map) {
    return ClusterIdentity(
      oidcs: map['oidcs'] == null
          ? null
          : Input.decodeList<ClusterIdentityOidc>(
              map['oidcs'],
              (value) => ClusterIdentityOidc.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
