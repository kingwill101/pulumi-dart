// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_version_snapshot_toolset_open_api_toolset_tls_config_ca_cert/app_version_snapshot_toolset_open_api_toolset_tls_config_ca_cert.dart';

class AppVersionSnapshotToolsetOpenApiToolsetTlsConfig {
  /// (Output)
  /// Specifies a list of allowed custom CA certificates for HTTPS
  /// verification.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolsetOpenApiToolsetTlsConfigCaCert>? caCerts;

  AppVersionSnapshotToolsetOpenApiToolsetTlsConfig({
    this.caCerts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caCertsValue = caCerts;
    if (caCertsValue != null) {
      map['caCerts'] = pulumi.Input.encodeList<
          AppVersionSnapshotToolsetOpenApiToolsetTlsConfigCaCert,
          Map<String, dynamic>>(caCertsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotToolsetOpenApiToolsetTlsConfig.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolsetOpenApiToolsetTlsConfig(
      caCerts: map['caCerts'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotToolsetOpenApiToolsetTlsConfigCaCert>(
              map['caCerts'],
              (value) => AppVersionSnapshotToolsetOpenApiToolsetTlsConfigCaCert
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
