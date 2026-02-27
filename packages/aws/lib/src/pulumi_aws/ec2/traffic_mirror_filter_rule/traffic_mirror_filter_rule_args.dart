// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../traffic_mirror_filter_rule_destination_port_range/traffic_mirror_filter_rule_destination_port_range.dart';
import '../traffic_mirror_filter_rule_source_port_range/traffic_mirror_filter_rule_source_port_range.dart';

/// The set of arguments for TrafficMirrorFilterRule.
class TrafficMirrorFilterRuleArgs {
  /// Description of the traffic mirror filter rule.
  final Input<String>? description;

  /// Destination CIDR block to assign to the Traffic Mirror rule.
  final Input<String> destinationCidrBlock;

  /// Destination port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  final Input<TrafficMirrorFilterRuleDestinationPortRange>?
      destinationPortRange;

  /// Protocol number, for example 17 (UDP), to assign to the Traffic Mirror rule. For information about the protocol value, see [Protocol Numbers](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml) on the Internet Assigned Numbers Authority (IANA) website.
  final Input<int>? protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Action to take (accept | reject) on the filtered traffic. Valid values are `accept` and `reject`
  final Input<String> ruleAction;

  /// Number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.
  final Input<int> ruleNumber;

  /// Source CIDR block to assign to the Traffic Mirror rule.
  final Input<String> sourceCidrBlock;

  /// Source port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  final Input<TrafficMirrorFilterRuleSourcePortRange>? sourcePortRange;

  /// Direction of traffic to be captured. Valid values are `ingress` and `egress`
  ///
  /// Traffic mirror port range support following attributes:
  final Input<String> trafficDirection;

  /// ID of the traffic mirror filter to which this rule should be added
  final Input<String> trafficMirrorFilterId;

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
      map['destinationPortRange'] = Input.mapOptionalInputValue<
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
      map['sourcePortRange'] = Input.mapOptionalInputValue<
          TrafficMirrorFilterRuleSourcePortRange,
          Map<String, dynamic>>(sourcePortRangeValue, (value) => value.toMap());
    }
    map['trafficDirection'] = trafficDirection;
    map['trafficMirrorFilterId'] = trafficMirrorFilterId;
    return map;
  }

  factory TrafficMirrorFilterRuleArgs.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorFilterRuleArgs(
      description: Input.asOptionalInput<String>(map['description']),
      destinationCidrBlock: Input.asInput<String>(map['destinationCidrBlock']),
      destinationPortRange:
          Input.asOptionalInput<TrafficMirrorFilterRuleDestinationPortRange>(
              map['destinationPortRange']),
      protocol: Input.asOptionalInput<int>(map['protocol']),
      region: Input.asOptionalInput<String>(map['region']),
      ruleAction: Input.asInput<String>(map['ruleAction']),
      ruleNumber: Input.asInput<int>(map['ruleNumber']),
      sourceCidrBlock: Input.asInput<String>(map['sourceCidrBlock']),
      sourcePortRange:
          Input.asOptionalInput<TrafficMirrorFilterRuleSourcePortRange>(
              map['sourcePortRange']),
      trafficDirection: Input.asInput<String>(map['trafficDirection']),
      trafficMirrorFilterId:
          Input.asInput<String>(map['trafficMirrorFilterId']),
    );
  }
}
