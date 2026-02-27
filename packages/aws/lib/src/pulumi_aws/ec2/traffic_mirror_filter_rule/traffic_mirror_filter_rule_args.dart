// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../traffic_mirror_filter_rule_destination_port_range/traffic_mirror_filter_rule_destination_port_range.dart';
import '../traffic_mirror_filter_rule_source_port_range/traffic_mirror_filter_rule_source_port_range.dart';

/// The set of arguments for TrafficMirrorFilterRule.
class TrafficMirrorFilterRuleArgs {
  /// Description of the traffic mirror filter rule.
  final pulumi.Input<String>? description;

  /// Destination CIDR block to assign to the Traffic Mirror rule.
  final pulumi.Input<String> destinationCidrBlock;

  /// Destination port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  final pulumi.Input<TrafficMirrorFilterRuleDestinationPortRange>?
      destinationPortRange;

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

  TrafficMirrorFilterRuleArgs({
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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['destinationCidrBlock'] = destinationCidrBlock;
    final destinationPortRangeValue = destinationPortRange;
    if (destinationPortRangeValue != null) {
      map['destinationPortRange'] = pulumi.Input.mapOptionalInputValue<
              TrafficMirrorFilterRuleDestinationPortRange,
              Map<String, dynamic>>(
          destinationPortRangeValue, (value) => value.toMap());
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['ruleAction'] = ruleAction;
    map['ruleNumber'] = ruleNumber;
    map['sourceCidrBlock'] = sourceCidrBlock;
    final sourcePortRangeValue = sourcePortRange;
    if (sourcePortRangeValue != null) {
      map['sourcePortRange'] = pulumi.Input.mapOptionalInputValue<
          TrafficMirrorFilterRuleSourcePortRange,
          Map<String, dynamic>>(sourcePortRangeValue, (value) => value.toMap());
    }
    map['trafficDirection'] = trafficDirection;
    map['trafficMirrorFilterId'] = trafficMirrorFilterId;
    return map;
  }

  factory TrafficMirrorFilterRuleArgs.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorFilterRuleArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      destinationCidrBlock:
          pulumi.Input.asInput<String>(map['destinationCidrBlock']),
      destinationPortRange: pulumi.Input.asOptionalInput<
              TrafficMirrorFilterRuleDestinationPortRange>(
          map['destinationPortRange']),
      protocol: pulumi.Input.asOptionalInput<int>(map['protocol']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      ruleAction: pulumi.Input.asInput<String>(map['ruleAction']),
      ruleNumber: pulumi.Input.asInput<int>(map['ruleNumber']),
      sourceCidrBlock: pulumi.Input.asInput<String>(map['sourceCidrBlock']),
      sourcePortRange:
          pulumi.Input.asOptionalInput<TrafficMirrorFilterRuleSourcePortRange>(
              map['sourcePortRange']),
      trafficDirection: pulumi.Input.asInput<String>(map['trafficDirection']),
      trafficMirrorFilterId:
          pulumi.Input.asInput<String>(map['trafficMirrorFilterId']),
    );
  }
}
