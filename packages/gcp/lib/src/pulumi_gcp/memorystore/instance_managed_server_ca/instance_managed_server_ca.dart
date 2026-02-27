// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_managed_server_ca_ca_cert/instance_managed_server_ca_ca_cert.dart';

class InstanceManagedServerCa {
  /// (Output)
  /// The PEM encoded CA certificate chains for managed server authentication
  /// Structure is documented below.
  final List<InstanceManagedServerCaCaCert>? caCerts;

  InstanceManagedServerCa({
    this.caCerts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caCertsValue = caCerts;
    if (caCertsValue != null) {
      map['caCerts'] = pulumi.Input.encodeList<InstanceManagedServerCaCaCert,
          Map<String, dynamic>>(caCertsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceManagedServerCa.fromMap(Map<String, dynamic> map) {
    return InstanceManagedServerCa(
      caCerts: map['caCerts'] == null
          ? null
          : pulumi.Input.decodeList<InstanceManagedServerCaCaCert>(
              map['caCerts'],
              (value) => InstanceManagedServerCaCaCert.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
