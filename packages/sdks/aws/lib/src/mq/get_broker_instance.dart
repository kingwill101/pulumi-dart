// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBrokerInstance {
  /// URL of the ActiveMQ Web Console or the RabbitMQ Management UI depending on `engine_type`.
  final pulumi.Input<String> consoleUrl;
  /// Broker's wire-level protocol endpoints.
  final pulumi.Input<List<String>> endpoints;
  /// IP Address of the broker.
  final pulumi.Input<String> ipAddress;

  /// Creates a new [GetBrokerInstance].
  /// [consoleUrl] URL of the ActiveMQ Web Console or the RabbitMQ Management UI depending on `engine_type`.
  /// [endpoints] Broker's wire-level protocol endpoints.
  /// [ipAddress] IP Address of the broker.
  GetBrokerInstance({
    required this.consoleUrl,
    required this.endpoints,
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consoleUrl': consoleUrl,
      'endpoints': endpoints,
      'ipAddress': ipAddress,
    };
  }

  factory GetBrokerInstance.fromMap(Map<String, dynamic> map) {
    return GetBrokerInstance(
      consoleUrl: (map['consoleUrl'] as String).input(),
      endpoints: ((map['endpoints'] as List).cast<String>()).input(),
      ipAddress: (map['ipAddress'] as String).input(),
    );
  }
}

