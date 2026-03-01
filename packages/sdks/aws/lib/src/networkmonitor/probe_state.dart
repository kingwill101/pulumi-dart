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
    pulumi.Output<String>? addressFamily,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? destination,
    pulumi.Output<int>? destinationPort,
    pulumi.Output<String>? monitorName,
    pulumi.Output<int>? packetSize,
    pulumi.Output<String>? probeId,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sourceArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      addressFamily = pulumi.Input.asOptionalInput<String>(addressFamily),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      destinationPort = pulumi.Input.asOptionalInput<int>(destinationPort),
      monitorName = pulumi.Input.asOptionalInput<String>(monitorName),
      packetSize = pulumi.Input.asOptionalInput<int>(packetSize),
      probeId = pulumi.Input.asOptionalInput<String>(probeId),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceArn = pulumi.Input.asOptionalInput<String>(sourceArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      addressFamily: map['addressFamily'] == null ? null : pulumi.Output.create<String>(map['addressFamily'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      destinationPort: map['destinationPort'] == null ? null : pulumi.Output.create<int>(map['destinationPort'] as int),
      monitorName: map['monitorName'] == null ? null : pulumi.Output.create<String>(map['monitorName'] as String),
      packetSize: map['packetSize'] == null ? null : pulumi.Output.create<int>(map['packetSize'] as int),
      probeId: map['probeId'] == null ? null : pulumi.Output.create<String>(map['probeId'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourceArn: map['sourceArn'] == null ? null : pulumi.Output.create<String>(map['sourceArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

