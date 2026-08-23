// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LogSetup
class LogSetupResponse {
  /// &lt;p&gt;If a log type is enabled, that log type exports its control plane logs to CloudWatch Logs. If a log type isn't enabled, that log type doesn't export its control plane logs. Each individual log type can be enabled or disabled independently.&lt;/p&gt;
  final pulumi.Input<bool>? enabled;
  /// &lt;p&gt;The available cluster control plane log types.&lt;/p&gt;
  final pulumi.Input<List<String>>? types;

  /// Creates a new [LogSetupResponse].
  /// [enabled] &lt;p&gt;If a log type is enabled, that log type exports its control plane logs to CloudWatch Logs. If a log type isn't enabled, that log type doesn't export its control plane logs. Each individual log type can be enabled or disabled independently.&lt;/p&gt;
  /// [types] &lt;p&gt;The available cluster control plane log types.&lt;/p&gt;
  const LogSetupResponse({
    this.enabled,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'types': ?types,
    };
  }

  factory LogSetupResponse.fromMap(Map<String, dynamic> map) {
    return LogSetupResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
