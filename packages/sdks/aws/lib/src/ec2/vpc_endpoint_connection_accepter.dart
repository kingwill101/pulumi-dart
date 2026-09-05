import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_connection_accepter_args.dart';
import 'vpc_endpoint_connection_accepter_state.dart';

/// Provides a resource to accept a pending VPC Endpoint Connection accept request to VPC Endpoint Service.
///
/// ## Example Usage
///
/// ### Accept cross-account request
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcEndpointService("example", {
///     acceptanceRequired: false,
///     networkLoadBalancerArns: [exampleAwsLb.arn],
/// });
/// const exampleVpcEndpoint = new aws.ec2.VpcEndpoint("example", {
///     vpcId: testAlternate.id,
///     serviceName: test.serviceName,
///     vpcEndpointType: "Interface",
///     privateDnsEnabled: false,
///     securityGroupIds: [testAwsSecurityGroup.id],
/// });
/// const exampleVpcEndpointConnectionAccepter = new aws.ec2.VpcEndpointConnectionAccepter("example", {
///     vpcEndpointServiceId: example.id,
///     vpcEndpointId: exampleVpcEndpoint.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcEndpointService("example",
///     acceptance_required=False,
///     network_load_balancer_arns=[example_aws_lb["arn"]])
/// example_vpc_endpoint = aws.ec2.VpcEndpoint("example",
///     vpc_id=test_alternate["id"],
///     service_name=test["serviceName"],
///     vpc_endpoint_type="Interface",
///     private_dns_enabled=False,
///     security_group_ids=[test_aws_security_group["id"]])
/// example_vpc_endpoint_connection_accepter = aws.ec2.VpcEndpointConnectionAccepter("example",
///     vpc_endpoint_service_id=example.id,
///     vpc_endpoint_id=example_vpc_endpoint.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.VpcEndpointService("example", new()
///     {
///         AcceptanceRequired = false,
///         NetworkLoadBalancerArns = new[]
///         {
///             exampleAwsLb.Arn,
///         },
///     });
///
///     var exampleVpcEndpoint = new Aws.Ec2.VpcEndpoint("example", new()
///     {
///         VpcId = testAlternate.Id,
///         ServiceName = test.ServiceName,
///         VpcEndpointType = "Interface",
///         PrivateDnsEnabled = false,
///         SecurityGroupIds = new[]
///         {
///             testAwsSecurityGroup.Id,
///         },
///     });
///
///     var exampleVpcEndpointConnectionAccepter = new Aws.Ec2.VpcEndpointConnectionAccepter("example", new()
///     {
///         VpcEndpointServiceId = example.Id,
///         VpcEndpointId = exampleVpcEndpoint.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.NewVpcEndpointService(ctx, "example", &ec2.VpcEndpointServiceArgs{
/// 			AcceptanceRequired: pulumi.Bool(false),
/// 			NetworkLoadBalancerArns: pulumi.StringArray{
/// 				exampleAwsLb.Arn,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpcEndpoint, err := ec2.NewVpcEndpoint(ctx, "example", &ec2.VpcEndpointArgs{
/// 			VpcId:             pulumi.Any(testAlternate.Id),
/// 			ServiceName:       pulumi.Any(test.ServiceName),
/// 			VpcEndpointType:   pulumi.String("Interface"),
/// 			PrivateDnsEnabled: pulumi.Bool(false),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				testAwsSecurityGroup.Id,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcEndpointConnectionAccepter(ctx, "example", &ec2.VpcEndpointConnectionAccepterArgs{
/// 			VpcEndpointServiceId: example.ID().ToIDOutput().ToStringOutput(),
/// 			VpcEndpointId:        exampleVpcEndpoint.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_ec2_vpcendpointservice" "example" {
///   acceptance_required        = false
///   network_load_balancer_arns = [exampleAwsLb.arn]
/// }
/// resource "aws_ec2_vpcendpoint" "example" {
///   vpc_id              = testAlternate.id
///   service_name        = test.serviceName
///   vpc_endpoint_type   = "Interface"
///   private_dns_enabled = false
///   security_group_ids  = [testAwsSecurityGroup.id]
/// }
/// resource "aws_ec2_vpcendpointconnectionaccepter" "example" {
///   vpc_endpoint_service_id = aws_ec2_vpcendpointservice.example.id
///   vpc_endpoint_id         = aws_ec2_vpcendpoint.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.VpcEndpointService;
/// import com.pulumi.aws.ec2.VpcEndpointServiceArgs;
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
/// import com.pulumi.aws.ec2.VpcEndpointConnectionAccepter;
/// import com.pulumi.aws.ec2.VpcEndpointConnectionAccepterArgs;
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
///         var example = new VpcEndpointService("example", VpcEndpointServiceArgs.builder()
///             .acceptanceRequired(false)
///             .networkLoadBalancerArns(exampleAwsLb.arn())
///             .build());
///
///         var exampleVpcEndpoint = new VpcEndpoint("exampleVpcEndpoint", VpcEndpointArgs.builder()
///             .vpcId(testAlternate.id())
///             .serviceName(test.serviceName())
///             .vpcEndpointType("Interface")
///             .privateDnsEnabled(false)
///             .securityGroupIds(testAwsSecurityGroup.id())
///             .build());
///
///         var exampleVpcEndpointConnectionAccepter = new VpcEndpointConnectionAccepter("exampleVpcEndpointConnectionAccepter", VpcEndpointConnectionAccepterArgs.builder()
///             .vpcEndpointServiceId(example.id())
///             .vpcEndpointId(exampleVpcEndpoint.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcEndpointService
///     properties:
///       acceptanceRequired: false
///       networkLoadBalancerArns:
///         - ${exampleAwsLb.arn}
///   exampleVpcEndpoint:
///     type: aws:ec2:VpcEndpoint
///     name: example
///     properties:
///       vpcId: ${testAlternate.id}
///       serviceName: ${test.serviceName}
///       vpcEndpointType: Interface
///       privateDnsEnabled: false
///       securityGroupIds:
///         - ${testAwsSecurityGroup.id}
///   exampleVpcEndpointConnectionAccepter:
///     type: aws:ec2:VpcEndpointConnectionAccepter
///     name: example
///     properties:
///       vpcEndpointServiceId: ${example.id}
///       vpcEndpointId: ${exampleVpcEndpoint.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Services using ID of the connection, which is the `VPC Endpoint Service ID` and `VPC Endpoint ID` separated by underscore (`_`).. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointConnectionAccepter:VpcEndpointConnectionAccepter foo vpce-svc-0f97a19d3fa8220bc_vpce-010601a6db371e263
/// ```
class VpcEndpointConnectionAccepter extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// AWS VPC Endpoint ID.
  late final pulumi.Output<String> vpcEndpointId;
  /// AWS VPC Endpoint Service ID.
  late final pulumi.Output<String> vpcEndpointServiceId;
  /// State of the VPC Endpoint.
  late final pulumi.Output<String> vpcEndpointState;

  /// Creates a new [VpcEndpointConnectionAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEndpointConnectionAccepter]. {@macro pulumi_ec2_vpc_endpoint_connection_accepter_vpc_endpoint_connection_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEndpointConnectionAccepter(
    String name, {
    VpcEndpointConnectionAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointConnectionAccepter:VpcEndpointConnectionAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    vpcEndpointId = registerOutput<String>('vpcEndpointId');
    vpcEndpointServiceId = registerOutput<String>('vpcEndpointServiceId');
    vpcEndpointState = registerOutput<String>('vpcEndpointState');
  }

  /// Gets an existing [VpcEndpointConnectionAccepter] resource's state with the given [name] and [id].
  static VpcEndpointConnectionAccepter get(
    String name,
    pulumi.Input<String> id, {
    VpcEndpointConnectionAccepterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VpcEndpointConnectionAccepter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VpcEndpointConnectionAccepter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointConnectionAccepter:VpcEndpointConnectionAccepter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    vpcEndpointId = registerOutput<String>('vpcEndpointId');
    vpcEndpointServiceId = registerOutput<String>('vpcEndpointServiceId');
    vpcEndpointState = registerOutput<String>('vpcEndpointState');
  }

  /// Creates a typed reference to an existing [VpcEndpointConnectionAccepter] resource.
  VpcEndpointConnectionAccepter.reference(String urn)
    : super(
        'aws:ec2/vpcEndpointConnectionAccepter:VpcEndpointConnectionAccepter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    vpcEndpointId = registerOutput<String>('vpcEndpointId');
    vpcEndpointServiceId = registerOutput<String>('vpcEndpointServiceId');
    vpcEndpointState = registerOutput<String>('vpcEndpointState');
  }
}
