import 'package:pulumi/pulumi.dart';
import '../vpc_endpoint_vpc_options/vpc_endpoint_vpc_options.dart';
import 'vpc_endpoint_args2.dart';

/// Manages an [AWS Elasticsearch VPC Endpoint](https://docs.aws.amazon.com/elasticsearch-service/latest/APIReference/API_CreateVpcEndpoint.html). Creates an Amazon elasticsearch Service-managed VPC endpoint.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.elasticsearch.VpcEndpoint("foo", {
/// domainArn: domain1.arn,
/// vpcOptions: {
/// securityGroupIds: [
/// test.id,
/// test2.id,
/// ],
/// subnetIds: [
/// testAwsSubnet.id,
/// test2AwsSubnet.id,
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.elasticsearch.VpcEndpoint("foo",
/// domain_arn=domain1["arn"],
/// vpc_options={
/// "security_group_ids": [
/// test["id"],
/// test2["id"],
/// ],
/// "subnet_ids": [
/// test_aws_subnet["id"],
/// test2_aws_subnet["id"],
/// ],
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
/// var foo = new Aws.ElasticSearch.VpcEndpoint("foo", new()
/// {
/// DomainArn = domain1.Arn,
/// VpcOptions = new Aws.ElasticSearch.Inputs.VpcEndpointVpcOptionsArgs
/// {
/// SecurityGroupIds = new[]
/// {
/// test.Id,
/// test2.Id,
/// },
/// SubnetIds = new[]
/// {
/// testAwsSubnet.Id,
/// test2AwsSubnet.Id,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticsearch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := elasticsearch.NewVpcEndpoint(ctx, "foo", &elasticsearch.VpcEndpointArgs{
/// DomainArn: pulumi.Any(domain1.Arn),
/// VpcOptions: &elasticsearch.VpcEndpointVpcOptionsArgs{
/// SecurityGroupIds: pulumi.StringArray{
/// test.Id,
/// test2.Id,
/// },
/// SubnetIds: pulumi.StringArray{
/// testAwsSubnet.Id,
/// test2AwsSubnet.Id,
/// },
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
/// import com.pulumi.aws.elasticsearch.VpcEndpoint;
/// import com.pulumi.aws.elasticsearch.VpcEndpointArgs;
/// import com.pulumi.aws.elasticsearch.inputs.VpcEndpointVpcOptionsArgs;
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
/// var foo = new VpcEndpoint("foo", VpcEndpointArgs.builder()
/// .domainArn(domain1.arn())
/// .vpcOptions(VpcEndpointVpcOptionsArgs.builder()
/// .securityGroupIds(
/// test.id(),
/// test2.id())
/// .subnetIds(
/// testAwsSubnet.id(),
/// test2AwsSubnet.id())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:elasticsearch:VpcEndpoint
/// properties:
/// domainArn: ${domain1.arn}
/// vpcOptions:
/// securityGroupIds:
/// - ${test.id}
/// - ${test2.id}
/// subnetIds:
/// - ${testAwsSubnet.id}
/// - ${test2AwsSubnet.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import elasticsearch VPC endpoint connections using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:elasticsearch/vpcEndpoint:VpcEndpoint example endpoint-id
/// ```
class VpcEndpoint2 extends CustomResource {
  /// Specifies the Amazon Resource Name (ARN) of the domain to create the endpoint for
  late final Output<String> domainArn;

  /// The connection endpoint ID for connecting to the domain.
  late final Output<String> endpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Options to specify the subnets and security groups for the endpoint.
  late final Output<VpcEndpointVpcOptions> vpcOptions;

  VpcEndpoint2(
    String name, {
    VpcEndpointArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticsearch/vpcEndpoint:VpcEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.domainArn = Output.createUnknown<String>();
    this.endpoint = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.vpcOptions = Output.createUnknown<VpcEndpointVpcOptions>();
  }
}
