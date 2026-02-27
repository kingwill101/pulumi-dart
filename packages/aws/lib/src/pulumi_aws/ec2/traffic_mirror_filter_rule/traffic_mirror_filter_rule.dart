import 'package:pulumi/pulumi.dart' as pulumi;
import '../traffic_mirror_filter_rule_destination_port_range/traffic_mirror_filter_rule_destination_port_range.dart';
import '../traffic_mirror_filter_rule_source_port_range/traffic_mirror_filter_rule_source_port_range.dart';
import 'traffic_mirror_filter_rule_args.dart';

/// Provides an Traffic mirror filter rule.
/// Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring
///
/// ## Example Usage
///
/// To create a basic traffic mirror session
///
///
///
/// ## Import
///
/// Using `pulumi import`, import traffic mirror rules using the `traffic_mirror_filter_id` and `id` separated by `:`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/trafficMirrorFilterRule:TrafficMirrorFilterRule rule tmf-0fbb93ddf38198f64:tmfr-05a458f06445d0aee
/// ```
class TrafficMirrorFilterRule extends pulumi.CustomResource {
  /// ARN of the traffic mirror filter rule.
  late final pulumi.Output<String> arn;

  /// Description of the traffic mirror filter rule.
  late final pulumi.Output<String?> description;

  /// Destination CIDR block to assign to the Traffic Mirror rule.
  late final pulumi.Output<String> destinationCidrBlock;

  /// Destination port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  late final pulumi.Output<TrafficMirrorFilterRuleDestinationPortRange?>
      destinationPortRange;

  /// Protocol number, for example 17 (UDP), to assign to the Traffic Mirror rule. For information about the protocol value, see [Protocol Numbers](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml) on the Internet Assigned Numbers Authority (IANA) website.
  late final pulumi.Output<int?> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Action to take (accept | reject) on the filtered traffic. Valid values are `accept` and `reject`
  late final pulumi.Output<String> ruleAction;

  /// Number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.
  late final pulumi.Output<int> ruleNumber;

  /// Source CIDR block to assign to the Traffic Mirror rule.
  late final pulumi.Output<String> sourceCidrBlock;

  /// Source port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  late final pulumi.Output<TrafficMirrorFilterRuleSourcePortRange?>
      sourcePortRange;

  /// Direction of traffic to be captured. Valid values are `ingress` and `egress`
  ///
  /// Traffic mirror port range support following attributes:
  late final pulumi.Output<String> trafficDirection;

  /// ID of the traffic mirror filter to which this rule should be added
  late final pulumi.Output<String> trafficMirrorFilterId;

  TrafficMirrorFilterRule(
    String name, {
    TrafficMirrorFilterRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/trafficMirrorFilterRule:TrafficMirrorFilterRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    this.destinationPortRange =
        registerOutput<TrafficMirrorFilterRuleDestinationPortRange?>(
            'destinationPortRange');
    this.protocol = registerOutput<int?>('protocol');
    this.region = registerOutput<String>('region');
    this.ruleAction = registerOutput<String>('ruleAction');
    this.ruleNumber = registerOutput<int>('ruleNumber');
    this.sourceCidrBlock = registerOutput<String>('sourceCidrBlock');
    this.sourcePortRange =
        registerOutput<TrafficMirrorFilterRuleSourcePortRange?>(
            'sourcePortRange');
    this.trafficDirection = registerOutput<String>('trafficDirection');
    this.trafficMirrorFilterId =
        registerOutput<String>('trafficMirrorFilterId');
  }
}
