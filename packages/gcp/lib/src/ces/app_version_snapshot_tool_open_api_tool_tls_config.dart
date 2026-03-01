// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_open_api_tool_tls_config_ca_cert.dart';

class AppVersionSnapshotToolOpenApiToolTlsConfig {
  /// (Output)
  /// Specifies a list of allowed custom CA certificates for HTTPS
  /// verification.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolOpenApiToolTlsConfigCaCert>? caCerts;

  /// Creates a new [AppVersionSnapshotToolOpenApiToolTlsConfig].
  /// [caCerts] (Output)
  AppVersionSnapshotToolOpenApiToolTlsConfig({
    this.caCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCerts': ?caCerts == null ? null : pulumi.Input.encodeList<AppVersionSnapshotToolOpenApiToolTlsConfigCaCert, Map<String, dynamic>>(caCerts!, (value) => value.toMap()),
    };
  }

  factory AppVersionSnapshotToolOpenApiToolTlsConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolOpenApiToolTlsConfig(
      caCerts: map['caCerts'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotToolOpenApiToolTlsConfigCaCert>(map['caCerts'], (value) => AppVersionSnapshotToolOpenApiToolTlsConfigCaCert.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

