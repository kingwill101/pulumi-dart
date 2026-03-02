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
  /// Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] Optional.
  ProbeState({
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
      addressFamily: map['addressFamily'] == null ? null : ((map['addressFamily'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      destination: map['destination'] == null ? null : ((map['destination'] as String).input()).input(),
      destinationPort: map['destinationPort'] == null ? null : ((map['destinationPort'] as int).input()).input(),
      monitorName: map['monitorName'] == null ? null : ((map['monitorName'] as String).input()).input(),
      packetSize: map['packetSize'] == null ? null : ((map['packetSize'] as int).input()).input(),
      probeId: map['probeId'] == null ? null : ((map['probeId'] as String).input()).input(),
      protocol: map['protocol'] == null ? null : ((map['protocol'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sourceArn: map['sourceArn'] == null ? null : ((map['sourceArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

