// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_tool_open_api_tool_tls_config_ca_cert/app_version_snapshot_tool_open_api_tool_tls_config_ca_cert.dart';

class AppVersionSnapshotToolOpenApiToolTlsConfig {
  /// (Output)
  /// Specifies a list of allowed custom CA certificates for HTTPS
  /// verification.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolOpenApiToolTlsConfigCaCert>? caCerts;

  AppVersionSnapshotToolOpenApiToolTlsConfig({
    this.caCerts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caCertsValue = caCerts;
    if (caCertsValue != null) {
      map['caCerts'] = Input.encodeList<
          AppVersionSnapshotToolOpenApiToolTlsConfigCaCert,
          Map<String, dynamic>>(caCertsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotToolOpenApiToolTlsConfig.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolOpenApiToolTlsConfig(
      caCerts: map['caCerts'] == null
          ? null
          : Input.decodeList<AppVersionSnapshotToolOpenApiToolTlsConfigCaCert>(
              map['caCerts'],
              (value) =>
                  AppVersionSnapshotToolOpenApiToolTlsConfigCaCert.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
