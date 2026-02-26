import 'package:pulumi/pulumi.dart';
import 'endpoint_private_dns_args.dart';

/// Resource for enabling private DNS on an AWS VPC (Virtual Private Cloud) Endpoint.
///
/// > When using this resource, the <span pulumi-lang-nodejs="`privateDnsEnabled`" pulumi-lang-dotnet="`PrivateDnsEnabled`" pulumi-lang-go="`privateDnsEnabled`" pulumi-lang-python="`private_dns_enabled`" pulumi-lang-yaml="`privateDnsEnabled`" pulumi-lang-java="`privateDnsEnabled`">`private_dns_enabled`</span> argument should be omitted on the parent <span pulumi-lang-nodejs="`aws.ec2.VpcEndpoint`" pulumi-lang-dotnet="`aws.ec2.VpcEndpoint`" pulumi-lang-go="`ec2.VpcEndpoint`" pulumi-lang-python="`ec2.VpcEndpoint`" pulumi-lang-yaml="`aws.ec2.VpcEndpoint`" pulumi-lang-java="`aws.ec2.VpcEndpoint`">`aws.ec2.VpcEndpoint`</span> resource.
/// Setting the value both places can lead to unintended behavior and persistent differences.
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
/// const example = new aws.vpc.EndpointPrivateDns("example", {
/// vpcEndpointId: exampleAwsVpcEndpoint.id,
/// privateDnsEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpc.EndpointPrivateDns("example",
/// vpc_endpoint_id=example_aws_vpc_endpoint["id"],
/// private_dns_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Vpc.EndpointPrivateDns("example", new()
/// {
/// VpcEndpointId = exampleAwsVpcEndpoint.Id,
/// PrivateDnsEnabled = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpc.NewEndpointPrivateDns(ctx, "example", &vpc.EndpointPrivateDnsArgs{
/// VpcEndpointId:     pulumi.Any(exampleAwsVpcEndpoint.Id),
/// PrivateDnsEnabled: pulumi.Bool(true),
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
/// import com.pulumi.aws.vpc.EndpointPrivateDns;
/// import com.pulumi.aws.vpc.EndpointPrivateDnsArgs;
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
/// var example = new EndpointPrivateDns("example", EndpointPrivateDnsArgs.builder()
/// .vpcEndpointId(exampleAwsVpcEndpoint.id())
/// .privateDnsEnabled(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:vpc:EndpointPrivateDns
/// properties:
/// vpcEndpointId: ${exampleAwsVpcEndpoint.id}
/// privateDnsEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a VPC (Virtual Private Cloud) Endpoint Private DNS using the <span pulumi-lang-nodejs="`vpcEndpointId`" pulumi-lang-dotnet="`VpcEndpointId`" pulumi-lang-go="`vpcEndpointId`" pulumi-lang-python="`vpc_endpoint_id`" pulumi-lang-yaml="`vpcEndpointId`" pulumi-lang-java="`vpcEndpointId`">`vpc_endpoint_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/endpointPrivateDns:EndpointPrivateDns example vpce-abcd-1234
/// ```
class EndpointPrivateDns extends CustomResource {
  /// Indicates whether a private hosted zone is associated with the VPC. Only applicable for `Interface` endpoints.
  late final Output<bool> privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// VPC endpoint identifier.
  late final Output<String> vpcEndpointId;

  EndpointPrivateDns(
    String name, {
    EndpointPrivateDnsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpc/endpointPrivateDns:EndpointPrivateDns',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.privateDnsEnabled = registerOutput<bool>('privateDnsEnabled');
    this.region = registerOutput<String>('region');
    this.vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }
}
