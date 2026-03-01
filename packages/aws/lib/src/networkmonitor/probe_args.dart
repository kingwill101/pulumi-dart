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
  /// Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProbeArgs].
  /// [destination] The destination IP address. This must be either IPV4 or IPV6.
  /// [destinationPort] The port associated with the destination. This is required only if the protocol is TCP and must be a number between 1 and 65536.
  /// [monitorName] The name of the monitor.
  /// [packetSize] The size of the packets sent between the source and destination. This must be a number between 56 and 8500.
  /// [protocol] The protocol used for the network traffic between the source and destination. This must be either TCP or ICMP.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceArn] The ARN of the subnet.
  /// [tags] Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ProbeArgs({
    required String destination,
    int? destinationPort,
    required String monitorName,
    int? packetSize,
    required String protocol,
    String? region,
    required String sourceArn,
    Map<String, String>? tags,
  }) :
      destination = pulumi.Input.asInput<String>(destination),
      destinationPort = pulumi.Input.asOptionalInput<int>(destinationPort),
      monitorName = pulumi.Input.asInput<String>(monitorName),
      packetSize = pulumi.Input.asOptionalInput<int>(packetSize),
      protocol = pulumi.Input.asInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceArn = pulumi.Input.asInput<String>(sourceArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      destination: map['destination'] as String,
      destinationPort: map['destinationPort'] == null ? null : map['destinationPort'] as int,
      monitorName: map['monitorName'] as String,
      packetSize: map['packetSize'] == null ? null : map['packetSize'] as int,
      protocol: map['protocol'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sourceArn: map['sourceArn'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

