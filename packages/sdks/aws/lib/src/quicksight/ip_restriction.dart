import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_restriction_args.dart';
import 'ip_restriction_state.dart';

/// Manages the content and status of IP rules.
///
/// > Deletion of this resource clears all IP restrictions from a QuickSight account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.IpRestriction("example", {
///     enabled: true,
///     ipRestrictionRuleMap: {
///         "108.56.166.202/32": "Allow self",
///     },
///     vpcIdRestrictionRuleMap: {
///         [exampleAwsVpc.id]: "Main VPC",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.IpRestriction("example",
///     enabled=True,
///     ip_restriction_rule_map={
///         "108.56.166.202/32": "Allow self",
///     },
///     vpc_id_restriction_rule_map={
///         example_aws_vpc["id"]: "Main VPC",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.IpRestriction("example", new()
///     {
///         Enabled = true,
///         IpRestrictionRuleMap =
///         {
///             { "108.56.166.202/32", "Allow self" },
///         },
///         VpcIdRestrictionRuleMap =
///         {
///             { exampleAwsVpc.Id, "Main VPC" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewIpRestriction(ctx, "example", &quicksight.IpRestrictionArgs{
/// 			Enabled: pulumi.Bool(true),
/// 			IpRestrictionRuleMap: pulumi.StringMap{
/// 				"108.56.166.202/32": pulumi.String("Allow self"),
/// 			},
/// 			VpcIdRestrictionRuleMap: pulumi.StringMap{
/// 				exampleAwsVpc.Id: "Main VPC",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.IpRestriction;
/// import com.pulumi.aws.quicksight.IpRestrictionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new IpRestriction("example", IpRestrictionArgs.builder()
///             .enabled(true)
///             .ipRestrictionRuleMap(Map.of("108.56.166.202/32", "Allow self"))
///             .vpcIdRestrictionRuleMap(Map.of(exampleAwsVpc.id(), "Main VPC"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:IpRestriction
///     properties:
///       enabled: true
///       ipRestrictionRuleMap:
///         108.56.166.202/32: Allow self
///       vpcIdRestrictionRuleMap:
///         ${exampleAwsVpc.id}: Main VPC
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight IP restriction using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/ipRestriction:IpRestriction example "012345678901"
/// ```
class IpRestriction extends pulumi.CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;
  /// Whether IP rules are turned on.
  late final pulumi.Output<bool> enabled;
  /// Map of allowed IPv4 CIDR ranges and descriptions.
  late final pulumi.Output<Map<String, String>?> ipRestrictionRuleMap;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of allowed VPC endpoint IDs and descriptions.
  late final pulumi.Output<Map<String, String>?> vpcEndpointIdRestrictionRuleMap;
  /// Map of VPC IDs and descriptions. Traffic from all VPC endpoints that are present in the specified VPC is allowed.
  late final pulumi.Output<Map<String, String>?> vpcIdRestrictionRuleMap;

  /// Creates a new [IpRestriction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpRestriction]. {@macro pulumi_quicksight_ip_restriction_ip_restriction_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpRestriction(
    String name, {
    IpRestrictionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/ipRestriction:IpRestriction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.enabled = registerOutput<bool>('enabled');
    this.ipRestrictionRuleMap = registerOutput<Map<String, String>?>('ipRestrictionRuleMap');
    this.region = registerOutput<String>('region');
    this.vpcEndpointIdRestrictionRuleMap = registerOutput<Map<String, String>?>('vpcEndpointIdRestrictionRuleMap');
    this.vpcIdRestrictionRuleMap = registerOutput<Map<String, String>?>('vpcIdRestrictionRuleMap');
  }

  /// Gets an existing [IpRestriction] resource's state with the given [name] and [id].
  static IpRestriction get(
    String name,
    pulumi.Input<String> id, {
    IpRestrictionState? state,
  }) {
    return IpRestriction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IpRestriction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/ipRestriction:IpRestriction',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.enabled = registerOutput<bool>('enabled');
    this.ipRestrictionRuleMap = registerOutput<Map<String, String>?>('ipRestrictionRuleMap');
    this.region = registerOutput<String>('region');
    this.vpcEndpointIdRestrictionRuleMap = registerOutput<Map<String, String>?>('vpcEndpointIdRestrictionRuleMap');
    this.vpcIdRestrictionRuleMap = registerOutput<Map<String, String>?>('vpcIdRestrictionRuleMap');
  }
}
