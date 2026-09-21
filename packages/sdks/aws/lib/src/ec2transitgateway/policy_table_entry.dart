import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_table_entry_args.dart';
import 'policy_table_entry_policy_rule.dart';
import 'policy_table_entry_state.dart';

/// Manages an EC2 Transit Gateway Policy Table Entry. Each entry defines a traffic matching rule within a Transit Gateway Policy Table that routes matching traffic to a specified transit gateway route table, enabling Policy-Based Routing (PBR).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.PolicyTableEntry("example", {
///     transitGatewayPolicyTableId: exampleAwsEc2TransitGatewayPolicyTable.id,
///     policyRuleNumber: "100",
///     targetRouteTableId: exampleAwsEc2TransitGatewayRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.PolicyTableEntry("example",
///     transit_gateway_policy_table_id=example_aws_ec2_transit_gateway_policy_table["id"],
///     policy_rule_number="100",
///     target_route_table_id=example_aws_ec2_transit_gateway_route_table["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.PolicyTableEntry("example", new()
///     {
///         TransitGatewayPolicyTableId = exampleAwsEc2TransitGatewayPolicyTable.Id,
///         PolicyRuleNumber = "100",
///         TargetRouteTableId = exampleAwsEc2TransitGatewayRouteTable.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.NewPolicyTableEntry(ctx, "example", &ec2transitgateway.PolicyTableEntryArgs{
/// 			TransitGatewayPolicyTableId: pulumi.Any(exampleAwsEc2TransitGatewayPolicyTable.Id),
/// 			PolicyRuleNumber:            pulumi.String("100"),
/// 			TargetRouteTableId:          pulumi.Any(exampleAwsEc2TransitGatewayRouteTable.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2transitgateway_policytableentry" "example" {
///   transit_gateway_policy_table_id = exampleAwsEc2TransitGatewayPolicyTable.id
///   policy_rule_number              = 100
///   target_route_table_id           = exampleAwsEc2TransitGatewayRouteTable.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.PolicyTableEntry;
/// import com.pulumi.aws.ec2transitgateway.PolicyTableEntryArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new PolicyTableEntry("example", PolicyTableEntryArgs.builder()
///             .transitGatewayPolicyTableId(exampleAwsEc2TransitGatewayPolicyTable.id())
///             .policyRuleNumber("100")
///             .targetRouteTableId(exampleAwsEc2TransitGatewayRouteTable.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:PolicyTableEntry
///     properties:
///       transitGatewayPolicyTableId: ${exampleAwsEc2TransitGatewayPolicyTable.id}
///       policyRuleNumber: 100
///       targetRouteTableId: ${exampleAwsEc2TransitGatewayRouteTable.id}
/// ```
///
///
/// ### Full Traffic Matching Rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.PolicyTableEntry("example", {
///     policyRule: {
///         metadata: {
///             key: "test",
///             value: "test",
///         },
///         sourceCidrBlock: "10.0.1.0/24",
///         sourcePortRange: "*",
///         destinationCidrBlock: "10.0.2.0/24",
///         destinationPortRange: "443",
///         protocol: "6",
///     },
///     transitGatewayPolicyTableId: exampleAwsEc2TransitGatewayPolicyTable.id,
///     policyRuleNumber: "200",
///     targetRouteTableId: exampleAwsEc2TransitGatewayRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.PolicyTableEntry("example",
///     policy_rule={
///         "metadata": {
///             "key": "test",
///             "value": "test",
///         },
///         "source_cidr_block": "10.0.1.0/24",
///         "source_port_range": "*",
///         "destination_cidr_block": "10.0.2.0/24",
///         "destination_port_range": "443",
///         "protocol": "6",
///     },
///     transit_gateway_policy_table_id=example_aws_ec2_transit_gateway_policy_table["id"],
///     policy_rule_number="200",
///     target_route_table_id=example_aws_ec2_transit_gateway_route_table["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.PolicyTableEntry("example", new()
///     {
///         PolicyRule = new Aws.Ec2TransitGateway.Inputs.PolicyTableEntryPolicyRuleArgs
///         {
///             Metadata = new Aws.Ec2TransitGateway.Inputs.PolicyTableEntryPolicyRuleMetadataArgs
///             {
///                 Key = "test",
///                 Value = "test",
///             },
///             SourceCidrBlock = "10.0.1.0/24",
///             SourcePortRange = "*",
///             DestinationCidrBlock = "10.0.2.0/24",
///             DestinationPortRange = "443",
///             Protocol = "6",
///         },
///         TransitGatewayPolicyTableId = exampleAwsEc2TransitGatewayPolicyTable.Id,
///         PolicyRuleNumber = "200",
///         TargetRouteTableId = exampleAwsEc2TransitGatewayRouteTable.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.NewPolicyTableEntry(ctx, "example", &ec2transitgateway.PolicyTableEntryArgs{
/// 			PolicyRule: &ec2transitgateway.PolicyTableEntryPolicyRuleArgs{
/// 				Metadata: &ec2transitgateway.PolicyTableEntryPolicyRuleMetadataArgs{
/// 					Key:   pulumi.String("test"),
/// 					Value: pulumi.String("test"),
/// 				},
/// 				SourceCidrBlock:      pulumi.String("10.0.1.0/24"),
/// 				SourcePortRange:      pulumi.String("*"),
/// 				DestinationCidrBlock: pulumi.String("10.0.2.0/24"),
/// 				DestinationPortRange: pulumi.String("443"),
/// 				Protocol:             pulumi.String("6"),
/// 			},
/// 			TransitGatewayPolicyTableId: pulumi.Any(exampleAwsEc2TransitGatewayPolicyTable.Id),
/// 			PolicyRuleNumber:            pulumi.String("200"),
/// 			TargetRouteTableId:          pulumi.Any(exampleAwsEc2TransitGatewayRouteTable.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2transitgateway_policytableentry" "example" {
///   policy_rule = {
///     metadata = {
///       key   = "test"
///       value = "test"
///     }
///     source_cidr_block      = "10.0.1.0/24"
///     source_port_range      = "*"
///     destination_cidr_block = "10.0.2.0/24"
///     destination_port_range = "443"
///     protocol               = "6"
///   }
///   transit_gateway_policy_table_id = exampleAwsEc2TransitGatewayPolicyTable.id
///   policy_rule_number              = 200
///   target_route_table_id           = exampleAwsEc2TransitGatewayRouteTable.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.PolicyTableEntry;
/// import com.pulumi.aws.ec2transitgateway.PolicyTableEntryArgs;
/// import com.pulumi.aws.ec2transitgateway.inputs.PolicyTableEntryPolicyRuleArgs;
/// import com.pulumi.aws.ec2transitgateway.inputs.PolicyTableEntryPolicyRuleMetadataArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new PolicyTableEntry("example", PolicyTableEntryArgs.builder()
///             .policyRule(PolicyTableEntryPolicyRuleArgs.builder()
///                 .metadata(PolicyTableEntryPolicyRuleMetadataArgs.builder()
///                     .key("test")
///                     .value("test")
///                     .build())
///                 .sourceCidrBlock("10.0.1.0/24")
///                 .sourcePortRange("*")
///                 .destinationCidrBlock("10.0.2.0/24")
///                 .destinationPortRange("443")
///                 .protocol("6")
///                 .build())
///             .transitGatewayPolicyTableId(exampleAwsEc2TransitGatewayPolicyTable.id())
///             .policyRuleNumber("200")
///             .targetRouteTableId(exampleAwsEc2TransitGatewayRouteTable.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:PolicyTableEntry
///     properties:
///       policyRule:
///         metadata:
///           key: test
///           value: test
///         sourceCidrBlock: 10.0.1.0/24
///         sourcePortRange: '*'
///         destinationCidrBlock: 10.0.2.0/24
///         destinationPortRange: '443'
///         protocol: '6'
///       transitGatewayPolicyTableId: ${exampleAwsEc2TransitGatewayPolicyTable.id}
///       policyRuleNumber: 200
///       targetRouteTableId: ${exampleAwsEc2TransitGatewayRouteTable.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `transitGatewayPolicyTableId` (String) EC2 Transit Gateway Policy Table identifier.
/// * `policyRuleNumber` (String) Rule number for this entry.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import `aws.ec2transitgateway.PolicyTableEntry` using the composite identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/policyTableEntry:PolicyTableEntry example tgw-ptb-000000000fffffff,100
/// ```
class PolicyTableEntry extends pulumi.CustomResource {
  /// Matching criteria for the policy table entry. See below.
  late final pulumi.Output<PolicyTableEntryPolicyRule?> policyRule;
  /// Rule number for this entry. Changing this value forces a new resource. Lower numbers are evaluated first and take precedence. Enter an integer from 1 to 50,000. Leave gaps between numbers (for example, 100, 110, 120) so you can insert rules later without renumbering.
  late final pulumi.Output<String> policyRuleNumber;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the transit gateway route table to use for traffic matching this rule.
  late final pulumi.Output<String> targetRouteTableId;
  /// EC2 Transit Gateway Policy Table identifier.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> transitGatewayPolicyTableId;

  /// Creates a new [PolicyTableEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyTableEntry]. {@macro pulumi_ec2transitgateway_policy_table_entry_policy_table_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyTableEntry(
    String name, {
    PolicyTableEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/policyTableEntry:PolicyTableEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    policyRule = registerOutput<PolicyTableEntryPolicyRule?>('policyRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyTableEntryPolicyRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyRuleNumber = registerOutput<String>('policyRuleNumber');
    region = registerOutput<String>('region');
    targetRouteTableId = registerOutput<String>('targetRouteTableId');
    transitGatewayPolicyTableId = registerOutput<String>('transitGatewayPolicyTableId');
  }

  /// Gets an existing [PolicyTableEntry] resource's state with the given [name] and [id].
  static PolicyTableEntry get(
    String name,
    pulumi.Input<String> id, {
    PolicyTableEntryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PolicyTableEntry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PolicyTableEntry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/policyTableEntry:PolicyTableEntry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policyRule = registerOutput<PolicyTableEntryPolicyRule?>('policyRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyTableEntryPolicyRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyRuleNumber = registerOutput<String>('policyRuleNumber');
    region = registerOutput<String>('region');
    targetRouteTableId = registerOutput<String>('targetRouteTableId');
    transitGatewayPolicyTableId = registerOutput<String>('transitGatewayPolicyTableId');
  }

  /// Creates a typed reference to an existing [PolicyTableEntry] resource.
  PolicyTableEntry.reference(String urn)
    : super(
        'aws:ec2transitgateway/policyTableEntry:PolicyTableEntry',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policyRule = registerOutput<PolicyTableEntryPolicyRule?>('policyRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyTableEntryPolicyRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyRuleNumber = registerOutput<String>('policyRuleNumber');
    region = registerOutput<String>('region');
    targetRouteTableId = registerOutput<String>('targetRouteTableId');
    transitGatewayPolicyTableId = registerOutput<String>('transitGatewayPolicyTableId');
  }
}
