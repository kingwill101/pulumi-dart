// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_managed_server_ca_ca_cert.dart';

class GetInstanceManagedServerCa {
  /// The PEM encoded CA certificate chains for managed server authentication
  final List<GetInstanceManagedServerCaCaCert> caCerts;

  /// Creates a new [GetInstanceManagedServerCa].
  /// [caCerts] The PEM encoded CA certificate chains for managed server authentication
  GetInstanceManagedServerCa({
    required this.caCerts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCerts'] = pulumi.Input.encodeList<GetInstanceManagedServerCaCaCert,
        Map<String, dynamic>>(caCerts, (value) => value.toMap());
    return map;
  }

  factory GetInstanceManagedServerCa.fromMap(Map<String, dynamic> map) {
    return GetInstanceManagedServerCa(
      caCerts: pulumi.Input.decodeList<GetInstanceManagedServerCaCaCert>(
          map['caCerts'],
          (value) => GetInstanceManagedServerCaCaCert.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
