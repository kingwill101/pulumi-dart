import 'package:pulumi/pulumi.dart' as pulumi;
import 'metering_policy_args.dart';
import 'metering_policy_state.dart';
import 'metering_policy_timeouts.dart';

/// Manages an EC2 Transit Gateway Metering Policy for Flexible Cost Allocation (FCA). A metering policy defines how traffic is metered for cost allocation purposes on a Transit Gateway.
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
/// const example = new aws.ec2transitgateway.TransitGateway("example", {tags: {
///     Name: "example",
/// }});
/// const exampleMeteringPolicy = new aws.ec2transitgateway.MeteringPolicy("example", {
///     transitGatewayId: example.id,
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.TransitGateway("example", tags={
///     "Name": "example",
/// })
/// example_metering_policy = aws.ec2transitgateway.MeteringPolicy("example",
///     transit_gateway_id=example.id,
///     tags={
///         "Name": "example",
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
///     var example = new Aws.Ec2TransitGateway.TransitGateway("example", new()
///     {
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
///     var exampleMeteringPolicy = new Aws.Ec2TransitGateway.MeteringPolicy("example", new()
///     {
///         TransitGatewayId = example.Id,
///         Tags =
///         {
///             { "Name", "example" },
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
/// 		example, err := ec2transitgateway.NewTransitGateway(ctx, "example", &ec2transitgateway.TransitGatewayArgs{
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2transitgateway.NewMeteringPolicy(ctx, "example", &ec2transitgateway.MeteringPolicyArgs{
/// 			TransitGatewayId: example.ID().ToIDOutput().ToStringOutput(),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
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
/// resource "aws_ec2transitgateway_transitgateway" "example" {
///   tags = {
///     "Name" = "example"
///   }
/// }
/// resource "aws_ec2transitgateway_meteringpolicy" "example" {
///   transit_gateway_id = aws_ec2transitgateway_transitgateway.example.id
///   tags = {
///     "Name" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.TransitGateway;
/// import com.pulumi.aws.ec2transitgateway.TransitGatewayArgs;
/// import com.pulumi.aws.ec2transitgateway.MeteringPolicy;
/// import com.pulumi.aws.ec2transitgateway.MeteringPolicyArgs;
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
///         var example = new TransitGateway("example", TransitGatewayArgs.builder()
///             .tags(Map.of("Name", "example"))
///             .build());
///
///         var exampleMeteringPolicy = new MeteringPolicy("exampleMeteringPolicy", MeteringPolicyArgs.builder()
///             .transitGatewayId(example.id())
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:TransitGateway
///     properties:
///       tags:
///         Name: example
///   exampleMeteringPolicy:
///     type: aws:ec2transitgateway:MeteringPolicy
///     name: example
///     properties:
///       transitGatewayId: ${example.id}
///       tags:
///         Name: example
/// ```
///
///
/// ### With Middlebox Attachments
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.MeteringPolicy("example", {
///     transitGatewayId: exampleAwsEc2TransitGateway.id,
///     middleboxAttachmentIds: [exampleAwsEc2TransitGatewayVpcAttachment.id],
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.MeteringPolicy("example",
///     transit_gateway_id=example_aws_ec2_transit_gateway["id"],
///     middlebox_attachment_ids=[example_aws_ec2_transit_gateway_vpc_attachment["id"]],
///     tags={
///         "Name": "example",
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
///     var example = new Aws.Ec2TransitGateway.MeteringPolicy("example", new()
///     {
///         TransitGatewayId = exampleAwsEc2TransitGateway.Id,
///         MiddleboxAttachmentIds = new[]
///         {
///             exampleAwsEc2TransitGatewayVpcAttachment.Id,
///         },
///         Tags =
///         {
///             { "Name", "example" },
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
/// 		_, err := ec2transitgateway.NewMeteringPolicy(ctx, "example", &ec2transitgateway.MeteringPolicyArgs{
/// 			TransitGatewayId: pulumi.Any(exampleAwsEc2TransitGateway.Id),
/// 			MiddleboxAttachmentIds: pulumi.StringArray{
/// 				exampleAwsEc2TransitGatewayVpcAttachment.Id,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
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
/// resource "aws_ec2transitgateway_meteringpolicy" "example" {
///   transit_gateway_id       = exampleAwsEc2TransitGateway.id
///   middlebox_attachment_ids = [exampleAwsEc2TransitGatewayVpcAttachment.id]
///   tags = {
///     "Name" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.MeteringPolicy;
/// import com.pulumi.aws.ec2transitgateway.MeteringPolicyArgs;
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
///         var example = new MeteringPolicy("example", MeteringPolicyArgs.builder()
///             .transitGatewayId(exampleAwsEc2TransitGateway.id())
///             .middleboxAttachmentIds(exampleAwsEc2TransitGatewayVpcAttachment.id())
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:MeteringPolicy
///     properties:
///       transitGatewayId: ${exampleAwsEc2TransitGateway.id}
///       middleboxAttachmentIds:
///         - ${exampleAwsEc2TransitGatewayVpcAttachment.id}
///       tags:
///         Name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `transitGatewayMeteringPolicyId` (String) ID of the EC2 Transit Gateway Metering Policy.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EC2 Transit Gateway Metering Policies using the `transitGatewayMeteringPolicyId`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/meteringPolicy:MeteringPolicy example tgw-mp-12345678
/// ```
class MeteringPolicy extends pulumi.CustomResource {
  /// EC2 Transit Gateway Metering Policy ARN.
  late final pulumi.Output<String> arn;
  /// Set of Transit Gateway attachment IDs to designate as middlebox attachments for this metering policy.
  late final pulumi.Output<List<String>?> middleboxAttachmentIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value tags for the EC2 Transit Gateway Metering Policy. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<MeteringPolicyTimeouts?> timeouts;
  /// EC2 Transit Gateway identifier.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> transitGatewayId;
  /// EC2 Transit Gateway Metering Policy identifier.
  late final pulumi.Output<String> transitGatewayMeteringPolicyId;

  /// Creates a new [MeteringPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MeteringPolicy]. {@macro pulumi_ec2transitgateway_metering_policy_metering_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MeteringPolicy(
    String name, {
    MeteringPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/meteringPolicy:MeteringPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    middleboxAttachmentIds = registerOutput<List<String>?>('middleboxAttachmentIds');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<MeteringPolicyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MeteringPolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transitGatewayId = registerOutput<String>('transitGatewayId');
    transitGatewayMeteringPolicyId = registerOutput<String>('transitGatewayMeteringPolicyId');
  }

  /// Gets an existing [MeteringPolicy] resource's state with the given [name] and [id].
  static MeteringPolicy get(
    String name,
    pulumi.Input<String> id, {
    MeteringPolicyState? state,
  }) {
    return MeteringPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MeteringPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/meteringPolicy:MeteringPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    middleboxAttachmentIds = registerOutput<List<String>?>('middleboxAttachmentIds');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<MeteringPolicyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MeteringPolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transitGatewayId = registerOutput<String>('transitGatewayId');
    transitGatewayMeteringPolicyId = registerOutput<String>('transitGatewayMeteringPolicyId');
  }
}
