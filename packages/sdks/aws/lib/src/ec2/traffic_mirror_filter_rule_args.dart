// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_mirror_filter_rule_destination_port_range.dart';
import 'traffic_mirror_filter_rule_source_port_range.dart';

/// {@template pulumi_ec2_traffic_mirror_filter_rule_traffic_mirror_filter_rule_args_doc}
/// The set of arguments for TrafficMirrorFilterRule.
/// {@endtemplate}
/// {@macro pulumi_ec2_traffic_mirror_filter_rule_traffic_mirror_filter_rule_args_doc}
class TrafficMirrorFilterRuleArgs {
  /// Description of the traffic mirror filter rule.
  final pulumi.Input<String?>? description;
  /// Destination CIDR block to assign to the Traffic Mirror rule.
  final pulumi.Input<String> destinationCidrBlock;
  /// Destination port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  final pulumi.Input<TrafficMirrorFilterRuleDestinationPortRange?>? destinationPortRange;
  /// Protocol number, for example 17 (UDP), to assign to the Traffic Mirror rule. For information about the protocol value, see [Protocol Numbers](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml) on the Internet Assigned Numbers Authority (IANA) website.
  final pulumi.Input<int?>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Action to take (accept | reject) on the filtered traffic. Valid values are `accept` and `reject`
  final pulumi.Input<String> ruleAction;
  /// Number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.
  final pulumi.Input<int> ruleNumber;
  /// Source CIDR block to assign to the Traffic Mirror rule.
  final pulumi.Input<String> sourceCidrBlock;
  /// Source port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  final pulumi.Input<TrafficMirrorFilterRuleSourcePortRange?>? sourcePortRange;
  /// Direction of traffic to be captured. Valid values are `ingress` and `egress`
  ///
  /// Traffic mirror port range support following attributes:
  final pulumi.Input<String> trafficDirection;
  /// ID of the traffic mirror filter to which this rule should be added
  final pulumi.Input<String> trafficMirrorFilterId;

  /// Creates a new [TrafficMirrorFilterRuleArgs].
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
  const TrafficMirrorFilterRuleArgs({
    this.description,
    required this.destinationCidrBlock,
    this.destinationPortRange,
    this.protocol,
    this.region,
    required this.ruleAction,
    required this.ruleNumber,
    required this.sourceCidrBlock,
    this.sourcePortRange,
    required this.trafficDirection,
    required this.trafficMirrorFilterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationCidrBlock': destinationCidrBlock,
      'destinationPortRange': ?pulumi.Input.mapOptionalInputValue<TrafficMirrorFilterRuleDestinationPortRange, Map<String, dynamic>>(destinationPortRange, (value) => value.toMap()),
      'protocol': ?protocol,
      'region': ?region,
      'ruleAction': ruleAction,
      'ruleNumber': ruleNumber,
      'sourceCidrBlock': sourceCidrBlock,
      'sourcePortRange': ?pulumi.Input.mapOptionalInputValue<TrafficMirrorFilterRuleSourcePortRange, Map<String, dynamic>>(sourcePortRange, (value) => value.toMap()),
      'trafficDirection': trafficDirection,
      'trafficMirrorFilterId': trafficMirrorFilterId,
    };
  }

  factory TrafficMirrorFilterRuleArgs.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorFilterRuleArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationCidrBlock: pulumi.Input.fromValue(map['destinationCidrBlock'] as String),
      destinationPortRange: (() { final guardedValue = map['destinationPortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficMirrorFilterRuleDestinationPortRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleAction: pulumi.Input.fromValue(map['ruleAction'] as String),
      ruleNumber: pulumi.Input.fromValue((map['ruleNumber'] as num).toInt()),
      sourceCidrBlock: pulumi.Input.fromValue(map['sourceCidrBlock'] as String),
      sourcePortRange: (() { final guardedValue = map['sourcePortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficMirrorFilterRuleSourcePortRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trafficDirection: pulumi.Input.fromValue(map['trafficDirection'] as String),
      trafficMirrorFilterId: pulumi.Input.fromValue(map['trafficMirrorFilterId'] as String),
    );
  }
}
