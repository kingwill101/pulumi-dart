// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_log_config_sls.dart';

class GatewayLogConfig {
  /// Sls See `sls` below.
  final GatewayLogConfigSls? sls;

  /// Creates a new [GatewayLogConfig].
  /// [sls] Sls See `sls` below.
  GatewayLogConfig({
    this.sls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sls': ?sls == null ? null : sls!.toMap(),
    };
  }

  factory GatewayLogConfig.fromMap(Map<String, dynamic> map) {
    return GatewayLogConfig(
      sls: map['sls'] == null ? null : GatewayLogConfigSls.fromMap((map['sls'] as Map).cast<String, dynamic>()),
    );
  }
}

