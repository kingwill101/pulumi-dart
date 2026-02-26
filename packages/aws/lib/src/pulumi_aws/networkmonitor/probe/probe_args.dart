// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Probe.
class ProbeArgs {
  /// The destination IP address. This must be either IPV4 or IPV6.
  final Input<String> destination;

  /// The port associated with the destination. This is required only if the protocol is TCP and must be a number between 1 and 65536.
  final Input<int>? destinationPort;

  /// The name of the monitor.
  final Input<String> monitorName;

  /// The size of the packets sent between the source and destination. This must be a number between 56 and 8500.
  final Input<int>? packetSize;

  /// The protocol used for the network traffic between the source and destination. This must be either TCP or ICMP.
  final Input<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the subnet.
  final Input<String> sourceArn;

  /// Key-value tags for the monitor. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ProbeArgs({
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
    final map = <String, dynamic>{};
    map['destination'] = destination;
    final destinationPortValue = destinationPort;
    if (destinationPortValue != null) {
      map['destinationPort'] = destinationPortValue;
    }
    map['monitorName'] = monitorName;
    final packetSizeValue = packetSize;
    if (packetSizeValue != null) {
      map['packetSize'] = packetSizeValue;
    }
    map['protocol'] = protocol;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sourceArn'] = sourceArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ProbeArgs.fromMap(Map<String, dynamic> map) {
    return ProbeArgs(
      destination: Input.asInput<String>(map['destination']),
      destinationPort: Input.asOptionalInput<int>(map['destinationPort']),
      monitorName: Input.asInput<String>(map['monitorName']),
      packetSize: Input.asOptionalInput<int>(map['packetSize']),
      protocol: Input.asInput<String>(map['protocol']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceArn: Input.asInput<String>(map['sourceArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
