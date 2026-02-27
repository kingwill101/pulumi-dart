// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_managed_server_ca_ca_cert/get_cluster_managed_server_ca_ca_cert.dart';

class GetClusterManagedServerCa {
  /// The PEM encoded CA certificate chains for redis managed server authentication
  final List<GetClusterManagedServerCaCaCert> caCerts;

  GetClusterManagedServerCa({
    required this.caCerts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCerts'] = pulumi.Input.encodeList<GetClusterManagedServerCaCaCert,
        Map<String, dynamic>>(caCerts, (value) => value.toMap());
    return map;
  }

  factory GetClusterManagedServerCa.fromMap(Map<String, dynamic> map) {
    return GetClusterManagedServerCa(
      caCerts: pulumi.Input.decodeList<GetClusterManagedServerCaCaCert>(
          map['caCerts'],
          (value) => GetClusterManagedServerCaCaCert.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
