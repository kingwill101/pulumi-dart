import 'package:pulumi/pulumi.dart';
import 'vpc_endpoint_connection_accepter_args.dart';

/// Provides a resource to accept a pending VPC Endpoint Connection accept request to VPC Endpoint Service.
///
/// ## Example Usage
///
/// ### Accept cross-account request
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcEndpointService("example", {
/// acceptanceRequired: false,
/// networkLoadBalancerArns: [exampleAwsLb.arn],
/// });
/// const exampleVpcEndpoint = new aws.ec2.VpcEndpoint("example", {
/// vpcId: testAlternate.id,
/// serviceName: testAwsVpcEndpointService.serviceName,
/// vpcEndpointType: "Interface",
/// privateDnsEnabled: false,
/// securityGroupIds: [test.id],
/// });
/// const exampleVpcEndpointConnectionAccepter = new aws.ec2.VpcEndpointConnectionAccepter("example", {
/// vpcEndpointServiceId: example.id,
/// vpcEndpointId: exampleVpcEndpoint.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcEndpointService("example",
/// acceptance_required=False,
/// network_load_balancer_arns=[example_aws_lb["arn"]])
/// example_vpc_endpoint = aws.ec2.VpcEndpoint("example",
/// vpc_id=test_alternate["id"],
/// service_name=test_aws_vpc_endpoint_service["serviceName"],
/// vpc_endpoint_type="Interface",
/// private_dns_enabled=False,
/// security_group_ids=[test["id"]])
/// example_vpc_endpoint_connection_accepter = aws.ec2.VpcEndpointConnectionAccepter("example",
/// vpc_endpoint_service_id=example.id,
/// vpc_endpoint_id=example_vpc_endpoint.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.VpcEndpointService("example", new()
/// {
/// AcceptanceRequired = false,
/// NetworkLoadBalancerArns = new[]
/// {
/// exampleAwsLb.Arn,
/// },
/// });
///
/// var exampleVpcEndpoint = new Aws.Ec2.VpcEndpoint("example", new()
/// {
/// VpcId = testAlternate.Id,
/// ServiceName = testAwsVpcEndpointService.ServiceName,
/// VpcEndpointType = "Interface",
/// PrivateDnsEnabled = false,
/// SecurityGroupIds = new[]
/// {
/// test.Id,
/// },
/// });
///
/// var exampleVpcEndpointConnectionAccepter = new Aws.Ec2.VpcEndpointConnectionAccepter("example", new()
/// {
/// VpcEndpointServiceId = example.Id,
/// VpcEndpointId = exampleVpcEndpoint.Id,
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
/// example, err := ec2.NewVpcEndpointService(ctx, "example", &ec2.VpcEndpointServiceArgs{
/// AcceptanceRequired: pulumi.Bool(false),
/// NetworkLoadBalancerArns: pulumi.StringArray{
/// exampleAwsLb.Arn,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleVpcEndpoint, err := ec2.NewVpcEndpoint(ctx, "example", &ec2.VpcEndpointArgs{
/// VpcId:             pulumi.Any(testAlternate.Id),
/// ServiceName:       pulumi.Any(testAwsVpcEndpointService.ServiceName),
/// VpcEndpointType:   pulumi.String("Interface"),
/// PrivateDnsEnabled: pulumi.Bool(false),
/// SecurityGroupIds: pulumi.StringArray{
/// test.Id,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcEndpointConnectionAccepter(ctx, "example", &ec2.VpcEndpointConnectionAccepterArgs{
/// VpcEndpointServiceId: example.ID(),
/// VpcEndpointId:        exampleVpcEndpoint.ID(),
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
/// import com.pulumi.aws.ec2.VpcEndpointService;
/// import com.pulumi.aws.ec2.VpcEndpointServiceArgs;
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
/// import com.pulumi.aws.ec2.VpcEndpointConnectionAccepter;
/// import com.pulumi.aws.ec2.VpcEndpointConnectionAccepterArgs;
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
/// var example = new VpcEndpointService("example", VpcEndpointServiceArgs.builder()
/// .acceptanceRequired(false)
/// .networkLoadBalancerArns(exampleAwsLb.arn())
/// .build());
///
/// var exampleVpcEndpoint = new VpcEndpoint("exampleVpcEndpoint", VpcEndpointArgs.builder()
/// .vpcId(testAlternate.id())
/// .serviceName(testAwsVpcEndpointService.serviceName())
/// .vpcEndpointType("Interface")
/// .privateDnsEnabled(false)
/// .securityGroupIds(test.id())
/// .build());
///
/// var exampleVpcEndpointConnectionAccepter = new VpcEndpointConnectionAccepter("exampleVpcEndpointConnectionAccepter", VpcEndpointConnectionAccepterArgs.builder()
/// .vpcEndpointServiceId(example.id())
/// .vpcEndpointId(exampleVpcEndpoint.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:VpcEndpointService
/// properties:
/// acceptanceRequired: false
/// networkLoadBalancerArns:
/// - ${exampleAwsLb.arn}
/// exampleVpcEndpoint:
/// type: aws:ec2:VpcEndpoint
/// name: example
/// properties:
/// vpcId: ${testAlternate.id}
/// serviceName: ${testAwsVpcEndpointService.serviceName}
/// vpcEndpointType: Interface
/// privateDnsEnabled: false
/// securityGroupIds:
/// - ${test.id}
/// exampleVpcEndpointConnectionAccepter:
/// type: aws:ec2:VpcEndpointConnectionAccepter
/// name: example
/// properties:
/// vpcEndpointServiceId: ${example.id}
/// vpcEndpointId: ${exampleVpcEndpoint.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Services using ID of the connection, which is the `VPC Endpoint Service ID` and `VPC Endpoint ID` separated by underscore (`_`).. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointConnectionAccepter:VpcEndpointConnectionAccepter foo vpce-svc-0f97a19d3fa8220bc_vpce-010601a6db371e263
/// ```
class VpcEndpointConnectionAccepter extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// AWS VPC Endpoint ID.
  late final Output<String> vpcEndpointId;

  /// AWS VPC Endpoint Service ID.
  late final Output<String> vpcEndpointServiceId;

  /// State of the VPC Endpoint.
  late final Output<String> vpcEndpointState;

  VpcEndpointConnectionAccepter(
    String name, {
    VpcEndpointConnectionAccepterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointConnectionAccepter:VpcEndpointConnectionAccepter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.vpcEndpointId = registerOutput<String>('vpcEndpointId');
    this.vpcEndpointServiceId = registerOutput<String>('vpcEndpointServiceId');
    this.vpcEndpointState = registerOutput<String>('vpcEndpointState');
  }
}
