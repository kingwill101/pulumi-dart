// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LogSetup
class LogSetup {
  /// <p>If a log type is enabled, that log type exports its control plane logs to CloudWatch Logs. If a log type isn't enabled, that log type doesn't export its control plane logs. Each individual log type can be enabled or disabled independently.</p>
  final pulumi.Input<bool>? enabled;
  /// <p>The available cluster control plane log types.</p>
  final pulumi.Input<List<String>>? types;

  /// Creates a new [LogSetup].
  /// [enabled] <p>If a log type is enabled, that log type exports its control plane logs to CloudWatch Logs. If a log type isn't enabled, that log type doesn't export its control plane logs. Each individual log type can be enabled or disabled independently.</p>
  /// [types] <p>The available cluster control plane log types.</p>
  LogSetup({
    this.enabled,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'types': ?types,
    };
  }

  factory LogSetup.fromMap(Map<String, dynamic> map) {
    return LogSetup(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      types: map['types'] == null ? null : ((map['types'] as List).cast<String>()).input(),
    );
  }
}

