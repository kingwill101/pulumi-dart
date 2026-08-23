// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Probe resources.
class ProbeState {
  final pulumi.Input<String>? addressFamily;
  /// The ARN of the attachment.
  final pulumi.Input<String>? arn;
  /// The destination IP address. This must be either IPV4 or IPV6.
  final pulumi.Input<String>? destination;
  /// The port associated with the destination. This is required only if the protocol is TCP and must be a number between 1 and 65536.
  final pulumi.Input<int>? destinationPort;
  /// The name of the monitor.
  final pulumi.Input<String>? monitorName;
  /// The size of the packets sent between the source and destination. This must be a number between 56 and 8500.
  final pulumi.Input<int>? packetSize;
  final pulumi.Input<String>? probeId;
  /// The protocol used for the network traffic between the source and destination. This must be either TCP or ICMP.
  final pulumi.Input<String>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the subnet.
  final pulumi.Input<String>? sourceArn;
  /// Key-value tags for the monitor. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ProbeState].
  /// [addressFamily] Optional.
  /// [arn] The ARN of the attachment.
  /// [destination] The destination IP address. This must be either IPV4 or IPV6.
  /// [destinationPort] The port associated with the destination. This is required only if the protocol is TCP and must be a number between 1 and 65536.
  /// [monitorName] The name of the monitor.
  /// [packetSize] The size of the packets sent between the source and destination. This must be a number between 56 and 8500.
  /// [probeId] Optional.
  /// [protocol] The protocol used for the network traffic between the source and destination. This must be either TCP or ICMP.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceArn] The ARN of the subnet.
  /// [tags] Key-value tags for the monitor. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [vpcId] Optional.
  const ProbeState({
    this.addressFamily,
    this.arn,
    this.destination,
    this.destinationPort,
    this.monitorName,
    this.packetSize,
    this.probeId,
    this.protocol,
    this.region,
    this.sourceArn,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'arn': ?arn,
      'destination': ?destination,
      'destinationPort': ?destinationPort,
      'monitorName': ?monitorName,
      'packetSize': ?packetSize,
      'probeId': ?probeId,
      'protocol': ?protocol,
      'region': ?region,
      'sourceArn': ?sourceArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory ProbeState.fromMap(Map<String, dynamic> map) {
    return ProbeState(
      addressFamily: (() { final guardedValue = map['addressFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      monitorName: (() { final guardedValue = map['monitorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packetSize: (() { final guardedValue = map['packetSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      probeId: (() { final guardedValue = map['probeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceArn: (() { final guardedValue = map['sourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
