// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_mirror_filter_rule_destination_port_range.dart';
import 'traffic_mirror_filter_rule_source_port_range.dart';

/// Input properties used for looking up and filtering TrafficMirrorFilterRule resources.
class TrafficMirrorFilterRuleState {
  /// ARN of the traffic mirror filter rule.
  final pulumi.Input<String>? arn;
  /// Description of the traffic mirror filter rule.
  final pulumi.Input<String>? description;
  /// Destination CIDR block to assign to the Traffic Mirror rule.
  final pulumi.Input<String>? destinationCidrBlock;
  /// Destination port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  final pulumi.Input<TrafficMirrorFilterRuleDestinationPortRange>? destinationPortRange;
  /// Protocol number, for example 17 (UDP), to assign to the Traffic Mirror rule. For information about the protocol value, see [Protocol Numbers](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml) on the Internet Assigned Numbers Authority (IANA) website.
  final pulumi.Input<int>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Action to take (accept | reject) on the filtered traffic. Valid values are `accept` and `reject`
  final pulumi.Input<String>? ruleAction;
  /// Number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.
  final pulumi.Input<int>? ruleNumber;
  /// Source CIDR block to assign to the Traffic Mirror rule.
  final pulumi.Input<String>? sourceCidrBlock;
  /// Source port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  final pulumi.Input<TrafficMirrorFilterRuleSourcePortRange>? sourcePortRange;
  /// Direction of traffic to be captured. Valid values are `ingress` and `egress`
  ///
  /// Traffic mirror port range support following attributes:
  final pulumi.Input<String>? trafficDirection;
  /// ID of the traffic mirror filter to which this rule should be added
  final pulumi.Input<String>? trafficMirrorFilterId;

  /// Creates a new [TrafficMirrorFilterRuleState].
  /// [arn] ARN of the traffic mirror filter rule.
  /// [description] Description of the traffic mirror filter rule.
  /// [destinationCidrBlock] Destination CIDR block to assign to the Traffic Mirror rule.
  /// [destinationPortRange] Destination port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  /// [protocol] Protocol number, for example 17 (UDP), to assign to the Traffic Mirror rule. For information about the protocol value, see [Protocol Numbers](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml) on the Internet Assigned Numbers Authority (IANA) website.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleAction] Action to take (accept | reject) on the filtered traffic. Valid values are `accept` and `reject`
  /// [ruleNumber] Number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.
  /// [sourceCidrBlock] Source CIDR block to assign to the Traffic Mirror rule.
  /// [sourcePortRange] Source port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  /// [trafficDirection] Direction of traffic to be captured. Valid values are `ingress` and `egress`
  /// [trafficMirrorFilterId] ID of the traffic mirror filter to which this rule should be added
  TrafficMirrorFilterRuleState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationCidrBlock,
    pulumi.Output<TrafficMirrorFilterRuleDestinationPortRange>? destinationPortRange,
    pulumi.Output<int>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<String>? ruleAction,
    pulumi.Output<int>? ruleNumber,
    pulumi.Output<String>? sourceCidrBlock,
    pulumi.Output<TrafficMirrorFilterRuleSourcePortRange>? sourcePortRange,
    pulumi.Output<String>? trafficDirection,
    pulumi.Output<String>? trafficMirrorFilterId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationCidrBlock = pulumi.Input.asOptionalInput<String>(destinationCidrBlock),
      destinationPortRange = pulumi.Input.asOptionalInput<TrafficMirrorFilterRuleDestinationPortRange>(destinationPortRange),
      protocol = pulumi.Input.asOptionalInput<int>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleAction = pulumi.Input.asOptionalInput<String>(ruleAction),
      ruleNumber = pulumi.Input.asOptionalInput<int>(ruleNumber),
      sourceCidrBlock = pulumi.Input.asOptionalInput<String>(sourceCidrBlock),
      sourcePortRange = pulumi.Input.asOptionalInput<TrafficMirrorFilterRuleSourcePortRange>(sourcePortRange),
      trafficDirection = pulumi.Input.asOptionalInput<String>(trafficDirection),
      trafficMirrorFilterId = pulumi.Input.asOptionalInput<String>(trafficMirrorFilterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'destinationCidrBlock': ?destinationCidrBlock,
      'destinationPortRange': ?pulumi.Input.mapOptionalInputValue<TrafficMirrorFilterRuleDestinationPortRange, Map<String, dynamic>>(destinationPortRange, (value) => value.toMap()),
      'protocol': ?protocol,
      'region': ?region,
      'ruleAction': ?ruleAction,
      'ruleNumber': ?ruleNumber,
      'sourceCidrBlock': ?sourceCidrBlock,
      'sourcePortRange': ?pulumi.Input.mapOptionalInputValue<TrafficMirrorFilterRuleSourcePortRange, Map<String, dynamic>>(sourcePortRange, (value) => value.toMap()),
      'trafficDirection': ?trafficDirection,
      'trafficMirrorFilterId': ?trafficMirrorFilterId,
    };
  }

  factory TrafficMirrorFilterRuleState.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorFilterRuleState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : pulumi.Output.create<String>(map['destinationCidrBlock'] as String),
      destinationPortRange: map['destinationPortRange'] == null ? null : pulumi.Output.create<TrafficMirrorFilterRuleDestinationPortRange>(TrafficMirrorFilterRuleDestinationPortRange.fromMap((map['destinationPortRange'] as Map).cast<String, dynamic>())),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<int>(map['protocol'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ruleAction: map['ruleAction'] == null ? null : pulumi.Output.create<String>(map['ruleAction'] as String),
      ruleNumber: map['ruleNumber'] == null ? null : pulumi.Output.create<int>(map['ruleNumber'] as int),
      sourceCidrBlock: map['sourceCidrBlock'] == null ? null : pulumi.Output.create<String>(map['sourceCidrBlock'] as String),
      sourcePortRange: map['sourcePortRange'] == null ? null : pulumi.Output.create<TrafficMirrorFilterRuleSourcePortRange>(TrafficMirrorFilterRuleSourcePortRange.fromMap((map['sourcePortRange'] as Map).cast<String, dynamic>())),
      trafficDirection: map['trafficDirection'] == null ? null : pulumi.Output.create<String>(map['trafficDirection'] as String),
      trafficMirrorFilterId: map['trafficMirrorFilterId'] == null ? null : pulumi.Output.create<String>(map['trafficMirrorFilterId'] as String),
    );
  }
}

