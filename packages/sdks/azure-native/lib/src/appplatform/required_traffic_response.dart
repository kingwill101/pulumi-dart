// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Required inbound or outbound traffic for Azure Spring Apps resource.
class RequiredTrafficResponse {
  /// The direction of required traffic
  final pulumi.Input<String> direction;
  /// The FQDN list of required traffic
  final pulumi.Input<List<String>> fqdns;
  /// The ip list of required traffic
  final pulumi.Input<List<String>> ips;
  /// The port of required traffic
  final pulumi.Input<int> port;
  /// The protocol of required traffic
  final pulumi.Input<String> protocol;

  /// Creates a new [RequiredTrafficResponse].
  /// [direction] The direction of required traffic
  /// [fqdns] The FQDN list of required traffic
  /// [ips] The ip list of required traffic
  /// [port] The port of required traffic
  /// [protocol] The protocol of required traffic
  RequiredTrafficResponse({
    required this.direction,
    required this.fqdns,
    required this.ips,
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'fqdns': fqdns,
      'ips': ips,
      'port': port,
      'protocol': protocol,
    };
  }

  factory RequiredTrafficResponse.fromMap(Map<String, dynamic> map) {
    return RequiredTrafficResponse(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      fqdns: pulumi.Input.fromValue((map['fqdns'] as List).cast<String>()),
      ips: pulumi.Input.fromValue((map['ips'] as List).cast<String>()),
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

