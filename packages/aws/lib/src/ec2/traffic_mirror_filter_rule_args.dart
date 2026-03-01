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
  final pulumi.Input<String>? description;
  /// Destination CIDR block to assign to the Traffic Mirror rule.
  final pulumi.Input<String> destinationCidrBlock;
  /// Destination port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  final pulumi.Input<TrafficMirrorFilterRuleDestinationPortRange>? destinationPortRange;
  /// Protocol number, for example 17 (UDP), to assign to the Traffic Mirror rule. For information about the protocol value, see [Protocol Numbers](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml) on the Internet Assigned Numbers Authority (IANA) website.
  final pulumi.Input<int>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Action to take (accept | reject) on the filtered traffic. Valid values are `accept` and `reject`
  final pulumi.Input<String> ruleAction;
  /// Number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.
  final pulumi.Input<int> ruleNumber;
  /// Source CIDR block to assign to the Traffic Mirror rule.
  final pulumi.Input<String> sourceCidrBlock;
  /// Source port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  final pulumi.Input<TrafficMirrorFilterRuleSourcePortRange>? sourcePortRange;
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
  TrafficMirrorFilterRuleArgs({
    String? description,
    required String destinationCidrBlock,
    TrafficMirrorFilterRuleDestinationPortRange? destinationPortRange,
    int? protocol,
    String? region,
    required String ruleAction,
    required int ruleNumber,
    required String sourceCidrBlock,
    TrafficMirrorFilterRuleSourcePortRange? sourcePortRange,
    required String trafficDirection,
    required String trafficMirrorFilterId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationCidrBlock = pulumi.Input.asInput<String>(destinationCidrBlock),
      destinationPortRange = pulumi.Input.asOptionalInput<TrafficMirrorFilterRuleDestinationPortRange>(destinationPortRange),
      protocol = pulumi.Input.asOptionalInput<int>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleAction = pulumi.Input.asInput<String>(ruleAction),
      ruleNumber = pulumi.Input.asInput<int>(ruleNumber),
      sourceCidrBlock = pulumi.Input.asInput<String>(sourceCidrBlock),
      sourcePortRange = pulumi.Input.asOptionalInput<TrafficMirrorFilterRuleSourcePortRange>(sourcePortRange),
      trafficDirection = pulumi.Input.asInput<String>(trafficDirection),
      trafficMirrorFilterId = pulumi.Input.asInput<String>(trafficMirrorFilterId);

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
      description: map['description'] == null ? null : map['description'] as String,
      destinationCidrBlock: map['destinationCidrBlock'] as String,
      destinationPortRange: map['destinationPortRange'] == null ? null : TrafficMirrorFilterRuleDestinationPortRange.fromMap((map['destinationPortRange'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] == null ? null : map['protocol'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      ruleAction: map['ruleAction'] as String,
      ruleNumber: map['ruleNumber'] as int,
      sourceCidrBlock: map['sourceCidrBlock'] as String,
      sourcePortRange: map['sourcePortRange'] == null ? null : TrafficMirrorFilterRuleSourcePortRange.fromMap((map['sourcePortRange'] as Map).cast<String, dynamic>()),
      trafficDirection: map['trafficDirection'] as String,
      trafficMirrorFilterId: map['trafficMirrorFilterId'] as String,
    );
  }
}

