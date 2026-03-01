// ignore_for_file: unused_element, unnecessary_cast


/// Base receiver using TCP as transport protocol.
class SyslogReceiverResponse {
  /// Syslog receiver endpoint definition. Example: 0.0.0.0:<port>.
  final String endpoint;
  /// Protocol to parse syslog messages. Default rfc3164
  final String? protocol;

  /// Creates a new [SyslogReceiverResponse].
  /// [endpoint] Syslog receiver endpoint definition. Example: 0.0.0.0:<port>.
  /// [protocol] Protocol to parse syslog messages. Default rfc3164
  SyslogReceiverResponse({
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
      endpoint: map['endpoint'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

