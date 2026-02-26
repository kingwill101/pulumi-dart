import 'package:pulumi/pulumi.dart';
import '../vpc_endpoint_service_private_dns_name_configuration/vpc_endpoint_service_private_dns_name_configuration.dart';
import 'vpc_endpoint_service_args.dart';

/// Provides a VPC Endpoint Service resource.
/// Service consumers can create an _Interface_ VPC Endpoint to connect to the service.
///
/// > **NOTE on VPC Endpoint Services and VPC Endpoint Service Allowed Principals:** This provider provides
/// both a standalone VPC Endpoint Service Allowed Principal resource
/// and a VPC Endpoint Service resource with an <span pulumi-lang-nodejs="`allowedPrincipals`" pulumi-lang-dotnet="`AllowedPrincipals`" pulumi-lang-go="`allowedPrincipals`" pulumi-lang-python="`allowed_principals`" pulumi-lang-yaml="`allowedPrincipals`" pulumi-lang-java="`allowedPrincipals`">`allowed_principals`</span> attribute. Do not use the same principal ARN in both
/// a VPC Endpoint Service resource and a VPC Endpoint Service Allowed Principal resource. Doing so will cause a conflict
/// and will overwrite the association.
///
/// ## Example Usage
///
/// ### Network Load Balancers
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcEndpointService("example",
/// acceptance_required=False,
/// network_load_balancer_arns=[example_aws_lb["arn"]])
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
/// _, err := ec2.NewVpcEndpointService(ctx, "example", &ec2.VpcEndpointServiceArgs{
/// AcceptanceRequired: pulumi.Bool(false),
/// NetworkLoadBalancerArns: pulumi.StringArray{
/// exampleAwsLb.Arn,
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
/// import com.pulumi.aws.ec2.VpcEndpointService;
/// import com.pulumi.aws.ec2.VpcEndpointServiceArgs;
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
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Gateway Load Balancers
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcEndpointService("example", {
/// acceptanceRequired: false,
/// gatewayLoadBalancerArns: [exampleAwsLb.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcEndpointService("example",
/// acceptance_required=False,
/// gateway_load_balancer_arns=[example_aws_lb["arn"]])
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
/// GatewayLoadBalancerArns = new[]
/// {
/// exampleAwsLb.Arn,
/// },
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
/// _, err := ec2.NewVpcEndpointService(ctx, "example", &ec2.VpcEndpointServiceArgs{
/// AcceptanceRequired: pulumi.Bool(false),
/// GatewayLoadBalancerArns: pulumi.StringArray{
/// exampleAwsLb.Arn,
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
/// import com.pulumi.aws.ec2.VpcEndpointService;
/// import com.pulumi.aws.ec2.VpcEndpointServiceArgs;
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
/// .gatewayLoadBalancerArns(exampleAwsLb.arn())
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
/// gatewayLoadBalancerArns:
/// - ${exampleAwsLb.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Services using the VPC endpoint service <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointService:VpcEndpointService foo vpce-svc-0f97a19d3fa8220bc
/// ```
class VpcEndpointService extends CustomResource {
  /// Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> acceptanceRequired;

  /// The ARNs of one or more principals allowed to discover the endpoint service.
  late final Output<List<String>> allowedPrincipals;

  /// The Amazon Resource Name (ARN) of the VPC endpoint service.
  late final Output<String> arn;

  /// A set of Availability Zones in which the service is available.
  late final Output<List<String>> availabilityZones;

  /// A set of DNS names for the service.
  late final Output<List<String>> baseEndpointDnsNames;

  /// Amazon Resource Names (ARNs) of one or more Gateway Load Balancers for the endpoint service.
  late final Output<List<String>?> gatewayLoadBalancerArns;

  /// Whether or not the service manages its VPC endpoints - <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> managesVpcEndpoints;

  /// Amazon Resource Names (ARNs) of one or more Network Load Balancers for the endpoint service.
  late final Output<List<String>?> networkLoadBalancerArns;

  /// The private DNS name for the service.
  late final Output<String> privateDnsName;

  /// List of objects containing information about the endpoint service private DNS name configuration.
  late final Output<List<VpcEndpointServicePrivateDnsNameConfiguration>>
      privateDnsNameConfigurations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The service name.
  late final Output<String> serviceName;

  /// The service type, `Gateway` or `Interface`.
  late final Output<String> serviceType;

  /// Verification state of the VPC endpoint service. Consumers of the endpoint service can use the private name only when the state is <span pulumi-lang-nodejs="`verified`" pulumi-lang-dotnet="`Verified`" pulumi-lang-go="`verified`" pulumi-lang-python="`verified`" pulumi-lang-yaml="`verified`" pulumi-lang-java="`verified`">`verified`</span>.
  late final Output<String> state;

  /// The supported IP address types. The possible values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span> and <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>.
  late final Output<List<String>> supportedIpAddressTypes;

  /// The set of regions from which service consumers can access the service.
  late final Output<List<String>> supportedRegions;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  VpcEndpointService(
    String name, {
    VpcEndpointServiceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointService:VpcEndpointService',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptanceRequired = Output.createUnknown<bool>();
    this.allowedPrincipals = Output.createUnknown<List<String>>();
    this.arn = Output.createUnknown<String>();
    this.availabilityZones = Output.createUnknown<List<String>>();
    this.baseEndpointDnsNames = Output.createUnknown<List<String>>();
    this.gatewayLoadBalancerArns = Output.createUnknown<List<String>?>();
    this.managesVpcEndpoints = Output.createUnknown<bool>();
    this.networkLoadBalancerArns = Output.createUnknown<List<String>?>();
    this.privateDnsName = Output.createUnknown<String>();
    this.privateDnsNameConfigurations = Output.createUnknown<
        List<VpcEndpointServicePrivateDnsNameConfiguration>>();
    this.region = Output.createUnknown<String>();
    this.serviceName = Output.createUnknown<String>();
    this.serviceType = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.supportedIpAddressTypes = Output.createUnknown<List<String>>();
    this.supportedRegions = Output.createUnknown<List<String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
