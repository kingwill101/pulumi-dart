// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_managed_server_ca_ca_cert/cluster_managed_server_ca_ca_cert.dart';

class ClusterManagedServerCa {
  /// (Output)
  /// The PEM encoded CA certificate chains for redis managed server authentication
  /// Structure is documented below.
  final List<ClusterManagedServerCaCaCert>? caCerts;

  ClusterManagedServerCa({
    this.caCerts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caCertsValue = caCerts;
    if (caCertsValue != null) {
      map['caCerts'] = pulumi.Input.encodeList<ClusterManagedServerCaCaCert,
          Map<String, dynamic>>(caCertsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterManagedServerCa.fromMap(Map<String, dynamic> map) {
    return ClusterManagedServerCa(
      caCerts: map['caCerts'] == null
          ? null
          : pulumi.Input.decodeList<ClusterManagedServerCaCaCert>(
              map['caCerts'],
              (value) => ClusterManagedServerCaCaCert.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
