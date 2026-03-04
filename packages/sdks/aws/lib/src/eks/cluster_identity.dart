// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_identity_oidc.dart';

class ClusterIdentity {
  /// Nested block containing [OpenID Connect](https://openid.net/connect/) identity provider information for the cluster. Detailed below.
  final pulumi.Input<List<ClusterIdentityOidc>>? oidcs;

  /// Creates a new [ClusterIdentity].
  /// [oidcs] Nested block containing [OpenID Connect](https://openid.net/connect/) identity provider information for the cluster. Detailed below.
  ClusterIdentity({this.oidcs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oidcs':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterIdentityOidc>,
            List<Map<String, dynamic>>
          >(
            oidcs,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterIdentityOidc,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ClusterIdentity.fromMap(Map<String, dynamic> map) {
    return ClusterIdentity(
      oidcs: (() {
        final guardedValue = map['oidcs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterIdentityOidc>(
            guardedValue,
            (value) => ClusterIdentityOidc.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
