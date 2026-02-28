import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_service_args.dart';
import 'vpc_endpoint_service_private_dns_name_configuration.dart';

/// Provides a VPC Endpoint Service resource.
/// Service consumers can create an _Interface_ VPC Endpoint to connect to the service.
///
/// > **NOTE on VPC Endpoint Services and VPC Endpoint Service Allowed Principals:** This provider provides
/// both a standalone VPC Endpoint Service Allowed Principal resource
/// and a VPC Endpoint Service resource with an `allowed_principals` attribute. Do not use the same principal ARN in both
/// a VPC Endpoint Service resource and a VPC Endpoint Service Allowed Principal resource. Doing so will cause a conflict
/// and will overwrite the association.
///
/// ## Example Usage
///
/// ### Network Load Balancers
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcEndpointService("example",
///     acceptance_required=False,
///     network_load_balancer_arns=[example_aws_lb["arn"]])
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
/// 		_, err := ec2.NewVpcEndpointService(ctx, "example", &ec2.VpcEndpointServiceArgs{
/// 			AcceptanceRequired: pulumi.Bool(false),
/// 			NetworkLoadBalancerArns: pulumi.StringArray{
/// 				exampleAwsLb.Arn,
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
/// ```
///
///
/// ### Gateway Load Balancers
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcEndpointService("example", {
///     acceptanceRequired: false,
///     gatewayLoadBalancerArns: [exampleAwsLb.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcEndpointService("example",
///     acceptance_required=False,
///     gateway_load_balancer_arns=[example_aws_lb["arn"]])
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
///         GatewayLoadBalancerArns = new[]
///         {
///             exampleAwsLb.Arn,
///         },
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
/// 		_, err := ec2.NewVpcEndpointService(ctx, "example", &ec2.VpcEndpointServiceArgs{
/// 			AcceptanceRequired: pulumi.Bool(false),
/// 			GatewayLoadBalancerArns: pulumi.StringArray{
/// 				exampleAwsLb.Arn,
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new VpcEndpointService("example", VpcEndpointServiceArgs.builder()
///             .acceptanceRequired(false)
///             .gatewayLoadBalancerArns(exampleAwsLb.arn())
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
///       gatewayLoadBalancerArns:
///         - ${exampleAwsLb.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Services using the VPC endpoint service `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointService:VpcEndpointService foo vpce-svc-0f97a19d3fa8220bc
/// ```
class VpcEndpointService extends pulumi.CustomResource {
  /// Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - `true` or `false`.
  late final pulumi.Output<bool> acceptanceRequired;
  /// The ARNs of one or more principals allowed to discover the endpoint service.
  late final pulumi.Output<List<String>> allowedPrincipals;
  /// The Amazon Resource Name (ARN) of the VPC endpoint service.
  late final pulumi.Output<String> arn;
  /// A set of Availability Zones in which the service is available.
  late final pulumi.Output<List<String>> availabilityZones;
  /// A set of DNS names for the service.
  late final pulumi.Output<List<String>> baseEndpointDnsNames;
  /// Amazon Resource Names (ARNs) of one or more Gateway Load Balancers for the endpoint service.
  late final pulumi.Output<List<String>?> gatewayLoadBalancerArns;
  /// Whether or not the service manages its VPC endpoints - `true` or `false`.
  late final pulumi.Output<bool> managesVpcEndpoints;
  /// Amazon Resource Names (ARNs) of one or more Network Load Balancers for the endpoint service.
  late final pulumi.Output<List<String>?> networkLoadBalancerArns;
  /// The private DNS name for the service.
  late final pulumi.Output<String> privateDnsName;
  /// List of objects containing information about the endpoint service private DNS name configuration.
  late final pulumi.Output<List<VpcEndpointServicePrivateDnsNameConfiguration>> privateDnsNameConfigurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The service name.
  late final pulumi.Output<String> serviceName;
  /// The service type, `Gateway` or `Interface`.
  late final pulumi.Output<String> serviceType;
  /// Verification state of the VPC endpoint service. Consumers of the endpoint service can use the private name only when the state is `verified`.
  late final pulumi.Output<String> state;
  /// The supported IP address types. The possible values are `ipv4` and `ipv6`.
  late final pulumi.Output<List<String>> supportedIpAddressTypes;
  /// The set of regions from which service consumers can access the service.
  late final pulumi.Output<List<String>> supportedRegions;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [VpcEndpointService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEndpointService]. {@macro pulumi_ec2_vpc_endpoint_service_vpc_endpoint_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEndpointService(
    String name, {
    VpcEndpointServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointService:VpcEndpointService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceptanceRequired = registerOutput<bool>('acceptanceRequired');
    this.allowedPrincipals = registerOutput<List<String>>('allowedPrincipals');
    this.arn = registerOutput<String>('arn');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.baseEndpointDnsNames = registerOutput<List<String>>('baseEndpointDnsNames');
    this.gatewayLoadBalancerArns = registerOutput<List<String>?>('gatewayLoadBalancerArns');
    this.managesVpcEndpoints = registerOutput<bool>('managesVpcEndpoints');
    this.networkLoadBalancerArns = registerOutput<List<String>?>('networkLoadBalancerArns');
    this.privateDnsName = registerOutput<String>('privateDnsName');
    this.privateDnsNameConfigurations = registerOutput<List<VpcEndpointServicePrivateDnsNameConfiguration>>('privateDnsNameConfigurations');
    this.region = registerOutput<String>('region');
    this.serviceName = registerOutput<String>('serviceName');
    this.serviceType = registerOutput<String>('serviceType');
    this.state = registerOutput<String>('state');
    this.supportedIpAddressTypes = registerOutput<List<String>>('supportedIpAddressTypes');
    this.supportedRegions = registerOutput<List<String>>('supportedRegions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
