// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmonitor_probe_probe_args_doc}
/// The set of arguments for Probe.
/// {@endtemplate}
/// {@macro pulumi_networkmonitor_probe_probe_args_doc}
class ProbeArgs {
  /// The destination IP address. This must be either IPV4 or IPV6.
  final pulumi.Input<String> destination;
  /// The port associated with the destination. This is required only if the protocol is TCP and must be a number between 1 and 65536.
  final pulumi.Input<int>? destinationPort;
  /// The name of the monitor.
  final pulumi.Input<String> monitorName;
  /// The size of the packets sent between the source and destination. This must be a number between 56 and 8500.
  final pulumi.Input<int>? packetSize;
  /// The protocol used for the network traffic between the source and destination. This must be either TCP or ICMP.
  final pulumi.Input<String> protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the subnet.
  final pulumi.Input<String> sourceArn;
  /// Key-value tags for the monitor. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProbeArgs].
  /// [destination] The destination IP address. This must be either IPV4 or IPV6.
  /// [destinationPort] The port associated with the destination. This is required only if the protocol is TCP and must be a number between 1 and 65536.
  /// [monitorName] The name of the monitor.
  /// [packetSize] The size of the packets sent between the source and destination. This must be a number between 56 and 8500.
  /// [protocol] The protocol used for the network traffic between the source and destination. This must be either TCP or ICMP.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceArn] The ARN of the subnet.
  /// [tags] Key-value tags for the monitor. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ProbeArgs({
    required this.destination,
    this.destinationPort,
    required this.monitorName,
    this.packetSize,
    required this.protocol,
    this.region,
    required this.sourceArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'destinationPort': ?destinationPort,
      'monitorName': monitorName,
      'packetSize': ?packetSize,
      'protocol': protocol,
      'region': ?region,
      'sourceArn': sourceArn,
      'tags': ?tags,
    };
  }

  factory ProbeArgs.fromMap(Map<String, dynamic> map) {
    return ProbeArgs(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      monitorName: pulumi.Input.fromValue(map['monitorName'] as String),
      packetSize: (() { final guardedValue = map['packetSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceArn: pulumi.Input.fromValue(map['sourceArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
