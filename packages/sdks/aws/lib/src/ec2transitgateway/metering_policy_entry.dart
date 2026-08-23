import 'package:pulumi/pulumi.dart' as pulumi;
import 'metering_policy_entry_args.dart';
import 'metering_policy_entry_state.dart';
import 'metering_policy_entry_timeouts.dart';

/// Manages an EC2 Transit Gateway Metering Policy Entry. Each entry defines a traffic matching rule within a Transit Gateway Metering Policy that determines which account is charged for matching traffic flows.
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
/// const example = new aws.ec2transitgateway.MeteringPolicyEntry("example", {
///     transitGatewayMeteringPolicyId: exampleAwsEc2TransitGatewayMeteringPolicy.transitGatewayMeteringPolicyId,
///     policyRuleNumber: 100,
///     meteredAccount: "source-attachment-owner",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.MeteringPolicyEntry("example",
///     transit_gateway_metering_policy_id=example_aws_ec2_transit_gateway_metering_policy["transitGatewayMeteringPolicyId"],
///     policy_rule_number=100,
///     metered_account="source-attachment-owner")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.MeteringPolicyEntry("example", new()
///     {
///         TransitGatewayMeteringPolicyId = exampleAwsEc2TransitGatewayMeteringPolicy.TransitGatewayMeteringPolicyId,
///         PolicyRuleNumber = 100,
///         MeteredAccount = "source-attachment-owner",
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
/// 		_, err := ec2transitgateway.NewMeteringPolicyEntry(ctx, "example", &ec2transitgateway.MeteringPolicyEntryArgs{
/// 			TransitGatewayMeteringPolicyId: pulumi.Any(exampleAwsEc2TransitGatewayMeteringPolicy.TransitGatewayMeteringPolicyId),
/// 			PolicyRuleNumber:               pulumi.Int(100),
/// 			MeteredAccount:                 pulumi.String("source-attachment-owner"),
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
/// resource "aws_ec2transitgateway_meteringpolicyentry" "example" {
///   transit_gateway_metering_policy_id = exampleAwsEc2TransitGatewayMeteringPolicy.transitGatewayMeteringPolicyId
///   policy_rule_number                 = 100
///   metered_account                    = "source-attachment-owner"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.MeteringPolicyEntry;
/// import com.pulumi.aws.ec2transitgateway.MeteringPolicyEntryArgs;
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
///         var example = new MeteringPolicyEntry("example", MeteringPolicyEntryArgs.builder()
///             .transitGatewayMeteringPolicyId(exampleAwsEc2TransitGatewayMeteringPolicy.transitGatewayMeteringPolicyId())
///             .policyRuleNumber(100)
///             .meteredAccount("source-attachment-owner")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:MeteringPolicyEntry
///     properties:
///       transitGatewayMeteringPolicyId: ${exampleAwsEc2TransitGatewayMeteringPolicy.transitGatewayMeteringPolicyId}
///       policyRuleNumber: 100
///       meteredAccount: source-attachment-owner
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
/// const example = new aws.ec2transitgateway.MeteringPolicyEntry("example", {
///     transitGatewayMeteringPolicyId: exampleAwsEc2TransitGatewayMeteringPolicy.transitGatewayMeteringPolicyId,
///     policyRuleNumber: 200,
///     meteredAccount: "destination-attachment-owner",
///     sourceCidrBlock: "10.0.0.0/8",
///     destinationCidrBlock: "172.16.0.0/12",
///     protocol: "6",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.MeteringPolicyEntry("example",
///     transit_gateway_metering_policy_id=example_aws_ec2_transit_gateway_metering_policy["transitGatewayMeteringPolicyId"],
///     policy_rule_number=200,
///     metered_account="destination-attachment-owner",
///     source_cidr_block="10.0.0.0/8",
///     destination_cidr_block="172.16.0.0/12",
///     protocol="6")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.MeteringPolicyEntry("example", new()
///     {
///         TransitGatewayMeteringPolicyId = exampleAwsEc2TransitGatewayMeteringPolicy.TransitGatewayMeteringPolicyId,
///         PolicyRuleNumber = 200,
///         MeteredAccount = "destination-attachment-owner",
///         SourceCidrBlock = "10.0.0.0/8",
///         DestinationCidrBlock = "172.16.0.0/12",
///         Protocol = "6",
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
/// 		_, err := ec2transitgateway.NewMeteringPolicyEntry(ctx, "example", &ec2transitgateway.MeteringPolicyEntryArgs{
/// 			TransitGatewayMeteringPolicyId: pulumi.Any(exampleAwsEc2TransitGatewayMeteringPolicy.TransitGatewayMeteringPolicyId),
/// 			PolicyRuleNumber:               pulumi.Int(200),
/// 			MeteredAccount:                 pulumi.String("destination-attachment-owner"),
/// 			SourceCidrBlock:                pulumi.String("10.0.0.0/8"),
/// 			DestinationCidrBlock:           pulumi.String("172.16.0.0/12"),
/// 			Protocol:                       pulumi.String("6"),
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
/// resource "aws_ec2transitgateway_meteringpolicyentry" "example" {
///   transit_gateway_metering_policy_id = exampleAwsEc2TransitGatewayMeteringPolicy.transitGatewayMeteringPolicyId
///   policy_rule_number                 = 200
///   metered_account                    = "destination-attachment-owner"
///   source_cidr_block                  = "10.0.0.0/8"
///   destination_cidr_block             = "172.16.0.0/12"
///   protocol                           = "6"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.MeteringPolicyEntry;
/// import com.pulumi.aws.ec2transitgateway.MeteringPolicyEntryArgs;
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
///         var example = new MeteringPolicyEntry("example", MeteringPolicyEntryArgs.builder()
///             .transitGatewayMeteringPolicyId(exampleAwsEc2TransitGatewayMeteringPolicy.transitGatewayMeteringPolicyId())
///             .policyRuleNumber(200)
///             .meteredAccount("destination-attachment-owner")
///             .sourceCidrBlock("10.0.0.0/8")
///             .destinationCidrBlock("172.16.0.0/12")
///             .protocol("6")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:MeteringPolicyEntry
///     properties:
///       transitGatewayMeteringPolicyId: ${exampleAwsEc2TransitGatewayMeteringPolicy.transitGatewayMeteringPolicyId}
///       policyRuleNumber: 200
///       meteredAccount: destination-attachment-owner
///       sourceCidrBlock: 10.0.0.0/8
///       destinationCidrBlock: 172.16.0.0/12
///       protocol: '6'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.MeteringPolicyEntry` using the composite identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/meteringPolicyEntry:MeteringPolicyEntry example tgw-policy-12345678,100
/// ```
class MeteringPolicyEntry extends pulumi.CustomResource {
  /// Destination CIDR block to match. If not specified, all destination CIDR blocks are matched.
  late final pulumi.Output<String?> destinationCidrBlock;
  late final pulumi.Output<String?> destinationPortRange;
  late final pulumi.Output<String?> destinationTransitGatewayAttachmentId;
  /// Destination attachment resource type to match. Valid values are `vpc`, `vpn`, `direct-connect-gateway`, `connect`, `peering`, `tgw-peering`.
  late final pulumi.Output<String?> destinationTransitGatewayAttachmentType;
  /// The account to charge for matching traffic. Valid values are `source-attachment-owner` or `destination-attachment-owner`.
  late final pulumi.Output<String> meteredAccount;
  /// Rule number for this entry. Lower numbers have higher priority. Valid values are between `1` and `32766`.
  late final pulumi.Output<int> policyRuleNumber;
  /// Protocol number to match (e.g., `6` for TCP, `17` for UDP). If not specified, all protocols are matched.
  late final pulumi.Output<String?> protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Source CIDR block to match. If not specified, all source CIDR blocks are matched.
  late final pulumi.Output<String?> sourceCidrBlock;
  late final pulumi.Output<String?> sourcePortRange;
  late final pulumi.Output<String?> sourceTransitGatewayAttachmentId;
  /// Source attachment resource type to match. Valid values are `vpc`, `vpn`, `direct-connect-gateway`, `connect`, `peering`, `tgw-peering`.
  late final pulumi.Output<String?> sourceTransitGatewayAttachmentType;
  late final pulumi.Output<MeteringPolicyEntryTimeouts?> timeouts;
  /// EC2 Transit Gateway Metering Policy identifier.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> transitGatewayMeteringPolicyId;

  /// Creates a new [MeteringPolicyEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MeteringPolicyEntry]. {@macro pulumi_ec2transitgateway_metering_policy_entry_metering_policy_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MeteringPolicyEntry(
    String name, {
    MeteringPolicyEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/meteringPolicyEntry:MeteringPolicyEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationCidrBlock = registerOutput<String?>('destinationCidrBlock');
    destinationPortRange = registerOutput<String?>('destinationPortRange');
    destinationTransitGatewayAttachmentId = registerOutput<String?>('destinationTransitGatewayAttachmentId');
    destinationTransitGatewayAttachmentType = registerOutput<String?>('destinationTransitGatewayAttachmentType');
    meteredAccount = registerOutput<String>('meteredAccount');
    policyRuleNumber = registerOutput<int>('policyRuleNumber');
    protocol = registerOutput<String?>('protocol');
    region = registerOutput<String>('region');
    sourceCidrBlock = registerOutput<String?>('sourceCidrBlock');
    sourcePortRange = registerOutput<String?>('sourcePortRange');
    sourceTransitGatewayAttachmentId = registerOutput<String?>('sourceTransitGatewayAttachmentId');
    sourceTransitGatewayAttachmentType = registerOutput<String?>('sourceTransitGatewayAttachmentType');
    timeouts = registerOutput<MeteringPolicyEntryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MeteringPolicyEntryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transitGatewayMeteringPolicyId = registerOutput<String>('transitGatewayMeteringPolicyId');
  }

  /// Gets an existing [MeteringPolicyEntry] resource's state with the given [name] and [id].
  static MeteringPolicyEntry get(
    String name,
    pulumi.Input<String> id, {
    MeteringPolicyEntryState? state,
  }) {
    return MeteringPolicyEntry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MeteringPolicyEntry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/meteringPolicyEntry:MeteringPolicyEntry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationCidrBlock = registerOutput<String?>('destinationCidrBlock');
    destinationPortRange = registerOutput<String?>('destinationPortRange');
    destinationTransitGatewayAttachmentId = registerOutput<String?>('destinationTransitGatewayAttachmentId');
    destinationTransitGatewayAttachmentType = registerOutput<String?>('destinationTransitGatewayAttachmentType');
    meteredAccount = registerOutput<String>('meteredAccount');
    policyRuleNumber = registerOutput<int>('policyRuleNumber');
    protocol = registerOutput<String?>('protocol');
    region = registerOutput<String>('region');
    sourceCidrBlock = registerOutput<String?>('sourceCidrBlock');
    sourcePortRange = registerOutput<String?>('sourcePortRange');
    sourceTransitGatewayAttachmentId = registerOutput<String?>('sourceTransitGatewayAttachmentId');
    sourceTransitGatewayAttachmentType = registerOutput<String?>('sourceTransitGatewayAttachmentType');
    timeouts = registerOutput<MeteringPolicyEntryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MeteringPolicyEntryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transitGatewayMeteringPolicyId = registerOutput<String>('transitGatewayMeteringPolicyId');
  }
}
