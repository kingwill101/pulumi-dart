import 'package:pulumi/pulumi.dart';
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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const filter = new aws.ec2.TrafficMirrorFilter("filter", {
/// description: "traffic mirror filter - example",
/// networkServices: ["amazon-dns"],
/// });
/// const ruleout = new aws.ec2.TrafficMirrorFilterRule("ruleout", {
/// description: "test rule",
/// trafficMirrorFilterId: filter.id,
/// destinationCidrBlock: "10.0.0.0/8",
/// sourceCidrBlock: "10.0.0.0/8",
/// ruleNumber: 1,
/// ruleAction: "accept",
/// trafficDirection: "egress",
/// });
/// const rulein = new aws.ec2.TrafficMirrorFilterRule("rulein", {
/// description: "test rule",
/// trafficMirrorFilterId: filter.id,
/// destinationCidrBlock: "10.0.0.0/8",
/// sourceCidrBlock: "10.0.0.0/8",
/// ruleNumber: 1,
/// ruleAction: "accept",
/// trafficDirection: "ingress",
/// protocol: 6,
/// destinationPortRange: {
/// fromPort: 22,
/// toPort: 53,
/// },
/// sourcePortRange: {
/// fromPort: 0,
/// toPort: 10,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// filter = aws.ec2.TrafficMirrorFilter("filter",
/// description="traffic mirror filter - example",
/// network_services=["amazon-dns"])
/// ruleout = aws.ec2.TrafficMirrorFilterRule("ruleout",
/// description="test rule",
/// traffic_mirror_filter_id=filter.id,
/// destination_cidr_block="10.0.0.0/8",
/// source_cidr_block="10.0.0.0/8",
/// rule_number=1,
/// rule_action="accept",
/// traffic_direction="egress")
/// rulein = aws.ec2.TrafficMirrorFilterRule("rulein",
/// description="test rule",
/// traffic_mirror_filter_id=filter.id,
/// destination_cidr_block="10.0.0.0/8",
/// source_cidr_block="10.0.0.0/8",
/// rule_number=1,
/// rule_action="accept",
/// traffic_direction="ingress",
/// protocol=6,
/// destination_port_range={
/// "from_port": 22,
/// "to_port": 53,
/// },
/// source_port_range={
/// "from_port": 0,
/// "to_port": 10,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var filter = new Aws.Ec2.TrafficMirrorFilter("filter", new()
/// {
/// Description = "traffic mirror filter - example",
/// NetworkServices = new[]
/// {
/// "amazon-dns",
/// },
/// });
///
/// var ruleout = new Aws.Ec2.TrafficMirrorFilterRule("ruleout", new()
/// {
/// Description = "test rule",
/// TrafficMirrorFilterId = filter.Id,
/// DestinationCidrBlock = "10.0.0.0/8",
/// SourceCidrBlock = "10.0.0.0/8",
/// RuleNumber = 1,
/// RuleAction = "accept",
/// TrafficDirection = "egress",
/// });
///
/// var rulein = new Aws.Ec2.TrafficMirrorFilterRule("rulein", new()
/// {
/// Description = "test rule",
/// TrafficMirrorFilterId = filter.Id,
/// DestinationCidrBlock = "10.0.0.0/8",
/// SourceCidrBlock = "10.0.0.0/8",
/// RuleNumber = 1,
/// RuleAction = "accept",
/// TrafficDirection = "ingress",
/// Protocol = 6,
/// DestinationPortRange = new Aws.Ec2.Inputs.TrafficMirrorFilterRuleDestinationPortRangeArgs
/// {
/// FromPort = 22,
/// ToPort = 53,
/// },
/// SourcePortRange = new Aws.Ec2.Inputs.TrafficMirrorFilterRuleSourcePortRangeArgs
/// {
/// FromPort = 0,
/// ToPort = 10,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// filter, err := ec2.NewTrafficMirrorFilter(ctx, "filter", &ec2.TrafficMirrorFilterArgs{
/// Description: pulumi.String("traffic mirror filter - example"),
/// NetworkServices: pulumi.StringArray{
/// pulumi.String("amazon-dns"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewTrafficMirrorFilterRule(ctx, "ruleout", &ec2.TrafficMirrorFilterRuleArgs{
/// Description:           pulumi.String("test rule"),
/// TrafficMirrorFilterId: filter.ID(),
/// DestinationCidrBlock:  pulumi.String("10.0.0.0/8"),
/// SourceCidrBlock:       pulumi.String("10.0.0.0/8"),
/// RuleNumber:            pulumi.Int(1),
/// RuleAction:            pulumi.String("accept"),
/// TrafficDirection:      pulumi.String("egress"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewTrafficMirrorFilterRule(ctx, "rulein", &ec2.TrafficMirrorFilterRuleArgs{
/// Description:           pulumi.String("test rule"),
/// TrafficMirrorFilterId: filter.ID(),
/// DestinationCidrBlock:  pulumi.String("10.0.0.0/8"),
/// SourceCidrBlock:       pulumi.String("10.0.0.0/8"),
/// RuleNumber:            pulumi.Int(1),
/// RuleAction:            pulumi.String("accept"),
/// TrafficDirection:      pulumi.String("ingress"),
/// Protocol:              pulumi.Int(6),
/// DestinationPortRange: &ec2.TrafficMirrorFilterRuleDestinationPortRangeArgs{
/// FromPort: pulumi.Int(22),
/// ToPort:   pulumi.Int(53),
/// },
/// SourcePortRange: &ec2.TrafficMirrorFilterRuleSourcePortRangeArgs{
/// FromPort: pulumi.Int(0),
/// ToPort:   pulumi.Int(10),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.TrafficMirrorFilter;
/// import com.pulumi.aws.ec2.TrafficMirrorFilterArgs;
/// import com.pulumi.aws.ec2.TrafficMirrorFilterRule;
/// import com.pulumi.aws.ec2.TrafficMirrorFilterRuleArgs;
/// import com.pulumi.aws.ec2.inputs.TrafficMirrorFilterRuleDestinationPortRangeArgs;
/// import com.pulumi.aws.ec2.inputs.TrafficMirrorFilterRuleSourcePortRangeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var filter = new TrafficMirrorFilter("filter", TrafficMirrorFilterArgs.builder()
/// .description("traffic mirror filter - example")
/// .networkServices("amazon-dns")
/// .build());
///
/// var ruleout = new TrafficMirrorFilterRule("ruleout", TrafficMirrorFilterRuleArgs.builder()
/// .description("test rule")
/// .trafficMirrorFilterId(filter.id())
/// .destinationCidrBlock("10.0.0.0/8")
/// .sourceCidrBlock("10.0.0.0/8")
/// .ruleNumber(1)
/// .ruleAction("accept")
/// .trafficDirection("egress")
/// .build());
///
/// var rulein = new TrafficMirrorFilterRule("rulein", TrafficMirrorFilterRuleArgs.builder()
/// .description("test rule")
/// .trafficMirrorFilterId(filter.id())
/// .destinationCidrBlock("10.0.0.0/8")
/// .sourceCidrBlock("10.0.0.0/8")
/// .ruleNumber(1)
/// .ruleAction("accept")
/// .trafficDirection("ingress")
/// .protocol(6)
/// .destinationPortRange(TrafficMirrorFilterRuleDestinationPortRangeArgs.builder()
/// .fromPort(22)
/// .toPort(53)
/// .build())
/// .sourcePortRange(TrafficMirrorFilterRuleSourcePortRangeArgs.builder()
/// .fromPort(0)
/// .toPort(10)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// filter:
/// type: aws:ec2:TrafficMirrorFilter
/// properties:
/// description: traffic mirror filter - example
/// networkServices:
/// - amazon-dns
/// ruleout:
/// type: aws:ec2:TrafficMirrorFilterRule
/// properties:
/// description: test rule
/// trafficMirrorFilterId: ${filter.id}
/// destinationCidrBlock: 10.0.0.0/8
/// sourceCidrBlock: 10.0.0.0/8
/// ruleNumber: 1
/// ruleAction: accept
/// trafficDirection: egress
/// rulein:
/// type: aws:ec2:TrafficMirrorFilterRule
/// properties:
/// description: test rule
/// trafficMirrorFilterId: ${filter.id}
/// destinationCidrBlock: 10.0.0.0/8
/// sourceCidrBlock: 10.0.0.0/8
/// ruleNumber: 1
/// ruleAction: accept
/// trafficDirection: ingress
/// protocol: 6
/// destinationPortRange:
/// fromPort: 22
/// toPort: 53
/// sourcePortRange:
/// fromPort: 0
/// toPort: 10
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import traffic mirror rules using the <span pulumi-lang-nodejs="`trafficMirrorFilterId`" pulumi-lang-dotnet="`TrafficMirrorFilterId`" pulumi-lang-go="`trafficMirrorFilterId`" pulumi-lang-python="`traffic_mirror_filter_id`" pulumi-lang-yaml="`trafficMirrorFilterId`" pulumi-lang-java="`trafficMirrorFilterId`">`traffic_mirror_filter_id`</span> and <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> separated by `:`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/trafficMirrorFilterRule:TrafficMirrorFilterRule rule tmf-0fbb93ddf38198f64:tmfr-05a458f06445d0aee
/// ```
class TrafficMirrorFilterRule extends CustomResource {
  /// ARN of the traffic mirror filter rule.
  late final Output<String> arn;

  /// Description of the traffic mirror filter rule.
  late final Output<String?> description;

  /// Destination CIDR block to assign to the Traffic Mirror rule.
  late final Output<String> destinationCidrBlock;

  /// Destination port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  late final Output<TrafficMirrorFilterRuleDestinationPortRange?>
      destinationPortRange;

  /// Protocol number, for example 17 (UDP), to assign to the Traffic Mirror rule. For information about the protocol value, see [Protocol Numbers](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml) on the Internet Assigned Numbers Authority (IANA) website.
  late final Output<int?> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Action to take (accept | reject) on the filtered traffic. Valid values are <span pulumi-lang-nodejs="`accept`" pulumi-lang-dotnet="`Accept`" pulumi-lang-go="`accept`" pulumi-lang-python="`accept`" pulumi-lang-yaml="`accept`" pulumi-lang-java="`accept`">`accept`</span> and <span pulumi-lang-nodejs="`reject`" pulumi-lang-dotnet="`Reject`" pulumi-lang-go="`reject`" pulumi-lang-python="`reject`" pulumi-lang-yaml="`reject`" pulumi-lang-java="`reject`">`reject`</span>
  late final Output<String> ruleAction;

  /// Number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.
  late final Output<int> ruleNumber;

  /// Source CIDR block to assign to the Traffic Mirror rule.
  late final Output<String> sourceCidrBlock;

  /// Source port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below
  late final Output<TrafficMirrorFilterRuleSourcePortRange?> sourcePortRange;

  /// Direction of traffic to be captured. Valid values are <span pulumi-lang-nodejs="`ingress`" pulumi-lang-dotnet="`Ingress`" pulumi-lang-go="`ingress`" pulumi-lang-python="`ingress`" pulumi-lang-yaml="`ingress`" pulumi-lang-java="`ingress`">`ingress`</span> and <span pulumi-lang-nodejs="`egress`" pulumi-lang-dotnet="`Egress`" pulumi-lang-go="`egress`" pulumi-lang-python="`egress`" pulumi-lang-yaml="`egress`" pulumi-lang-java="`egress`">`egress`</span>
  ///
  /// Traffic mirror port range support following attributes:
  late final Output<String> trafficDirection;

  /// ID of the traffic mirror filter to which this rule should be added
  late final Output<String> trafficMirrorFilterId;

  TrafficMirrorFilterRule(
    String name, {
    TrafficMirrorFilterRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/trafficMirrorFilterRule:TrafficMirrorFilterRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
