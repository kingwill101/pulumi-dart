// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_identity_oidc.dart';

class GetClusterIdentity {
  /// Nested attribute containing [OpenID Connect](https://openid.net/connect/) identity provider information for the cluster.
  final pulumi.Input<List<GetClusterIdentityOidc>> oidcs;

  /// Creates a new [GetClusterIdentity].
  /// [oidcs] Nested attribute containing [OpenID Connect](https://openid.net/connect/) identity provider information for the cluster.
  const GetClusterIdentity({
    required this.oidcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oidcs': pulumi.Input.mapInputValue<List<GetClusterIdentityOidc>, List<Map<String, dynamic>>>(oidcs, (value) => pulumi.Input.encodeList<GetClusterIdentityOidc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterIdentity.fromMap(Map<String, dynamic> map) {
    return GetClusterIdentity(
      oidcs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterIdentityOidc>(map['oidcs']!, (value) => GetClusterIdentityOidc.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
