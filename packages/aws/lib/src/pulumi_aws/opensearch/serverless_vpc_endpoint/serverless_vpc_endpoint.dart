import 'package:pulumi/pulumi.dart';
import '../serverless_vpc_endpoint_timeouts/serverless_vpc_endpoint_timeouts.dart';
import 'serverless_vpc_endpoint_args.dart';

/// Resource for managing an AWS OpenSearchServerless VPC Endpoint.
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
/// const example = new aws.opensearch.ServerlessVpcEndpoint("example", {
/// name: "myendpoint",
/// subnetIds: [exampleAwsSubnet.id],
/// vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.ServerlessVpcEndpoint("example",
/// name="myendpoint",
/// subnet_ids=[example_aws_subnet["id"]],
/// vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.OpenSearch.ServerlessVpcEndpoint("example", new()
/// {
/// Name = "myendpoint",
/// SubnetIds = new[]
/// {
/// exampleAwsSubnet.Id,
/// },
/// VpcId = exampleAwsVpc.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := opensearch.NewServerlessVpcEndpoint(ctx, "example", &opensearch.ServerlessVpcEndpointArgs{
/// Name: pulumi.String("myendpoint"),
/// SubnetIds: pulumi.StringArray{
/// exampleAwsSubnet.Id,
/// },
/// VpcId: pulumi.Any(exampleAwsVpc.Id),
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
/// import com.pulumi.aws.opensearch.ServerlessVpcEndpoint;
/// import com.pulumi.aws.opensearch.ServerlessVpcEndpointArgs;
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
/// var example = new ServerlessVpcEndpoint("example", ServerlessVpcEndpointArgs.builder()
/// .name("myendpoint")
/// .subnetIds(exampleAwsSubnet.id())
/// .vpcId(exampleAwsVpc.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:opensearch:ServerlessVpcEndpoint
/// properties:
/// name: myendpoint
/// subnetIds:
/// - ${exampleAwsSubnet.id}
/// vpcId: ${exampleAwsVpc.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearchServerless Vpc Endpointa using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessVpcEndpoint:ServerlessVpcEndpoint example vpce-8012925589
/// ```
class ServerlessVpcEndpoint extends CustomResource {
  /// Name of the interface endpoint.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// One or more security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint. Up to 5 security groups can be provided.
  late final Output<List<String>> securityGroupIds;

  /// One or more subnet IDs from which you'll access OpenSearch Serverless. Up to 6 subnets can be provided.
  late final Output<List<String>> subnetIds;
  late final Output<ServerlessVpcEndpointTimeouts?> timeouts;

  /// ID of the VPC from which you'll access OpenSearch Serverless.
  ///
  /// The following arguments are optional:
  late final Output<String> vpcId;

  ServerlessVpcEndpoint(
    String name, {
    ServerlessVpcEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessVpcEndpoint:ServerlessVpcEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.timeouts = registerOutput<ServerlessVpcEndpointTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
