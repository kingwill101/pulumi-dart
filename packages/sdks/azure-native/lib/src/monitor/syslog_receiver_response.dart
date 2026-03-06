// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Base receiver using TCP as transport protocol.
class SyslogReceiverResponse {
  /// Syslog receiver endpoint definition. Example: 0.0.0.0:&lt;port&gt;.
  final pulumi.Input<String> endpoint;
  /// Protocol to parse syslog messages. Default rfc3164
  final pulumi.Input<String>? protocol;

  /// Creates a new [SyslogReceiverResponse].
  /// [endpoint] Syslog receiver endpoint definition. Example: 0.0.0.0:&lt;port&gt;.
  /// [protocol] Protocol to parse syslog messages. Default rfc3164
  const SyslogReceiverResponse({
    required this.endpoint,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'protocol': ?protocol,
    };
  }

  factory SyslogReceiverResponse.fromMap(Map<String, dynamic> map) {
    return SyslogReceiverResponse(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

