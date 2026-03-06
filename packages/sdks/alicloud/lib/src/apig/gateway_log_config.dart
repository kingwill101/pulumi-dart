// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_log_config_sls.dart';

class GatewayLogConfig {
  /// Sls See `sls` below.
  final pulumi.Input<GatewayLogConfigSls>? sls;

  /// Creates a new [GatewayLogConfig].
  /// [sls] Sls See `sls` below.
  const GatewayLogConfig({
    this.sls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sls': ?pulumi.Input.mapOptionalInputValue<GatewayLogConfigSls, Map<String, dynamic>>(sls, (value) => value.toMap()),
    };
  }

  factory GatewayLogConfig.fromMap(Map<String, dynamic> map) {
    return GatewayLogConfig(
      sls: (() { final guardedValue = map['sls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayLogConfigSls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

