import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_table_args.dart';
import 'policy_table_state.dart';

/// Manages an EC2 Transit Gateway Policy Table.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.PolicyTable("example", {
///     transitGatewayId: exampleAwsEc2TransitGateway.id,
///     tags: {
///         Name: "Example Policy Table",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.PolicyTable("example",
///     transit_gateway_id=example_aws_ec2_transit_gateway["id"],
///     tags={
///         "Name": "Example Policy Table",
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
///     var example = new Aws.Ec2TransitGateway.PolicyTable("example", new()
///     {
///         TransitGatewayId = exampleAwsEc2TransitGateway.Id,
///         Tags =
///         {
///             { "Name", "Example Policy Table" },
///         },
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
/// 		_, err := ec2transitgateway.NewPolicyTable(ctx, "example", &ec2transitgateway.PolicyTableArgs{
/// 			TransitGatewayId: pulumi.Any(exampleAwsEc2TransitGateway.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Policy Table"),
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
/// import com.pulumi.aws.ec2transitgateway.PolicyTable;
/// import com.pulumi.aws.ec2transitgateway.PolicyTableArgs;
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
///         var example = new PolicyTable("example", PolicyTableArgs.builder()
///             .transitGatewayId(exampleAwsEc2TransitGateway.id())
///             .tags(Map.of("Name", "Example Policy Table"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:PolicyTable
///     properties:
///       transitGatewayId: ${exampleAwsEc2TransitGateway.id}
///       tags:
///         Name: Example Policy Table
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.PolicyTable` using the EC2 Transit Gateway Policy Table identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/policyTable:PolicyTable example tgw-rtb-12345678
/// ```
class PolicyTable extends pulumi.CustomResource {
  /// EC2 Transit Gateway Policy Table Amazon Resource Name (ARN).
  late final pulumi.Output<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The state of the EC2 Transit Gateway Policy Table.
  late final pulumi.Output<String> state;
  /// Key-value tags for the EC2 Transit Gateway Policy Table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// EC2 Transit Gateway identifier.
  late final pulumi.Output<String> transitGatewayId;

  /// Creates a new [PolicyTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyTable]. {@macro pulumi_ec2transitgateway_policy_table_policy_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyTable(
    String name, {
    PolicyTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/policyTable:PolicyTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    transitGatewayId = registerOutput<String>('transitGatewayId');
  }

  /// Gets an existing [PolicyTable] resource's state with the given [name] and [id].
  static PolicyTable get(
    String name,
    pulumi.Input<String> id, {
    PolicyTableState? state,
  }) {
    return PolicyTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PolicyTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/policyTable:PolicyTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    transitGatewayId = registerOutput<String>('transitGatewayId');
  }
}
