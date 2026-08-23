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
  const TrafficMirrorFilterRuleState({
    this.arn,
    this.description,
    this.destinationCidrBlock,
    this.destinationPortRange,
    this.protocol,
    this.region,
    this.ruleAction,
    this.ruleNumber,
    this.sourceCidrBlock,
    this.sourcePortRange,
    this.trafficDirection,
    this.trafficMirrorFilterId,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationCidrBlock: (() { final guardedValue = map['destinationCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPortRange: (() { final guardedValue = map['destinationPortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficMirrorFilterRuleDestinationPortRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleAction: (() { final guardedValue = map['ruleAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleNumber: (() { final guardedValue = map['ruleNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceCidrBlock: (() { final guardedValue = map['sourceCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePortRange: (() { final guardedValue = map['sourcePortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficMirrorFilterRuleSourcePortRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trafficDirection: (() { final guardedValue = map['trafficDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficMirrorFilterId: (() { final guardedValue = map['trafficMirrorFilterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
