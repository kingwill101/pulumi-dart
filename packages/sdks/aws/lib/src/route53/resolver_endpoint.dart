import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_endpoint_args.dart';
import 'resolver_endpoint_state.dart';

/// Provides a Route 53 Resolver endpoint resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.route53.ResolverEndpoint("foo", {
///     name: "foo",
///     direction: "INBOUND",
///     resolverEndpointType: "IPV4",
///     securityGroupIds: [
///         sg1.id,
///         sg2.id,
///     ],
///     ipAddresses: [
///         {
///             subnetId: sn1.id,
///         },
///         {
///             subnetId: sn2.id,
///             ip: "10.0.64.4",
///         },
///     ],
///     protocols: [
///         "Do53",
///         "DoH",
///     ],
///     tags: {
///         Environment: "Prod",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.route53.ResolverEndpoint("foo",
///     name="foo",
///     direction="INBOUND",
///     resolver_endpoint_type="IPV4",
///     security_group_ids=[
///         sg1["id"],
///         sg2["id"],
///     ],
///     ip_addresses=[
///         {
///             "subnet_id": sn1["id"],
///         },
///         {
///             "subnet_id": sn2["id"],
///             "ip": "10.0.64.4",
///         },
///     ],
///     protocols=[
///         "Do53",
///         "DoH",
///     ],
///     tags={
///         "Environment": "Prod",
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
///     var foo = new Aws.Route53.ResolverEndpoint("foo", new()
///     {
///         Name = "foo",
///         Direction = "INBOUND",
///         ResolverEndpointType = "IPV4",
///         SecurityGroupIds = new[]
///         {
///             sg1.Id,
///             sg2.Id,
///         },
///         IpAddresses = new[]
///         {
///             new Aws.Route53.Inputs.ResolverEndpointIpAddressArgs
///             {
///                 SubnetId = sn1.Id,
///             },
///             new Aws.Route53.Inputs.ResolverEndpointIpAddressArgs
///             {
///                 SubnetId = sn2.Id,
///                 Ip = "10.0.64.4",
///             },
///         },
///         Protocols = new[]
///         {
///             "Do53",
///             "DoH",
///         },
///         Tags =
///         {
///             { "Environment", "Prod" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.NewResolverEndpoint(ctx, "foo", &route53.ResolverEndpointArgs{
/// 			Name:                 pulumi.String("foo"),
/// 			Direction:            pulumi.String("INBOUND"),
/// 			ResolverEndpointType: pulumi.String("IPV4"),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				sg1.Id,
/// 				sg2.Id,
/// 			},
/// 			IpAddresses: route53.ResolverEndpointIpAddressArray{
/// 				&route53.ResolverEndpointIpAddressArgs{
/// 					SubnetId: pulumi.Any(sn1.Id),
/// 				},
/// 				&route53.ResolverEndpointIpAddressArgs{
/// 					SubnetId: pulumi.Any(sn2.Id),
/// 					Ip:       pulumi.String("10.0.64.4"),
/// 				},
/// 			},
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("Do53"),
/// 				pulumi.String("DoH"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Prod"),
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
/// import com.pulumi.aws.route53.ResolverEndpoint;
/// import com.pulumi.aws.route53.ResolverEndpointArgs;
/// import com.pulumi.aws.route53.inputs.ResolverEndpointIpAddressArgs;
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
///         var foo = new ResolverEndpoint("foo", ResolverEndpointArgs.builder()
///             .name("foo")
///             .direction("INBOUND")
///             .resolverEndpointType("IPV4")
///             .securityGroupIds(
///                 sg1.id(),
///                 sg2.id())
///             .ipAddresses(
///                 ResolverEndpointIpAddressArgs.builder()
///                     .subnetId(sn1.id())
///                     .build(),
///                 ResolverEndpointIpAddressArgs.builder()
///                     .subnetId(sn2.id())
///                     .ip("10.0.64.4")
///                     .build())
///             .protocols(
///                 "Do53",
///                 "DoH")
///             .tags(Map.of("Environment", "Prod"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:route53:ResolverEndpoint
///     properties:
///       name: foo
///       direction: INBOUND
///       resolverEndpointType: IPV4
///       securityGroupIds:
///         - ${sg1.id}
///         - ${sg2.id}
///       ipAddresses:
///         - subnetId: ${sn1.id}
///         - subnetId: ${sn2.id}
///           ip: 10.0.64.4
///       protocols:
///         - Do53
///         - DoH
///       tags:
///         Environment: Prod
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import  Route 53 Resolver endpoints using the Route 53 Resolver endpoint ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverEndpoint:ResolverEndpoint foo rslvr-in-abcdef01234567890
/// ```
class ResolverEndpoint extends pulumi.CustomResource {
  /// ARN of the Route 53 Resolver endpoint.
  late final pulumi.Output<String> arn;
  /// Direction of DNS queries to or from the Route 53 Resolver endpoint.
  /// Valid values are `INBOUND` (resolver forwards DNS queries to the DNS service for a VPC from your network or another VPC), `OUTBOUND` (resolver forwards DNS queries from the DNS service for a VPC to your network or another VPC) or `INBOUND_DELEGATION` (resolver delegates queries to Route 53 private hosted zones from your network).
  late final pulumi.Output<String> direction;
  /// ID of the VPC that you want to create the resolver endpoint in.
  late final pulumi.Output<String> hostVpcId;
  /// Subnets and IP addresses in your VPC that you want DNS queries to pass through on the way from your VPCs
  /// to your network (for outbound endpoints) or on the way from your network to your VPCs (for inbound endpoints). Described below.
  late final pulumi.Output<List<Map<String, dynamic>>> ipAddresses;
  /// Friendly name of the Route 53 Resolver endpoint.
  late final pulumi.Output<String> name;
  /// Protocols you want to use for the Route 53 Resolver endpoint.
  /// Valid values are `DoH`, `Do53`, or `DoH-FIPS`.
  late final pulumi.Output<List<String>> protocols;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Endpoint IP type. This endpoint type is applied to all IP addresses.
  /// Valid values are `IPV6`,`IPV4` or `DUALSTACK` (both IPv4 and IPv6).
  late final pulumi.Output<String> resolverEndpointType;
  /// Boolean indicating whether RNI enhanced metrics are enabled for the Resolver endpoint. Defaults to `false`. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  late final pulumi.Output<bool> rniEnhancedMetricsEnabled;
  /// ID of one or more security groups that you want to use to control access to this VPC.
  late final pulumi.Output<List<String>> securityGroupIds;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Boolean indicating whether target name server metrics are enabled for the outbound Resolver endpoints. Defaults to `false`. This argument is supported only for outbound endpoints. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  late final pulumi.Output<bool> targetNameServerMetricsEnabled;

  /// Creates a new [ResolverEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResolverEndpoint]. {@macro pulumi_route53_resolver_endpoint_resolver_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResolverEndpoint(
    String name, {
    ResolverEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverEndpoint:ResolverEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    direction = registerOutput<String>('direction');
    hostVpcId = registerOutput<String>('hostVpcId');
    ipAddresses = registerOutput<List<Map<String, dynamic>>>('ipAddresses');
    this.name = registerOutput<String>('name');
    protocols = registerOutput<List<String>>('protocols');
    region = registerOutput<String>('region');
    resolverEndpointType = registerOutput<String>('resolverEndpointType');
    rniEnhancedMetricsEnabled = registerOutput<bool>('rniEnhancedMetricsEnabled');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetNameServerMetricsEnabled = registerOutput<bool>('targetNameServerMetricsEnabled');
  }

  /// Gets an existing [ResolverEndpoint] resource's state with the given [name] and [id].
  static ResolverEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ResolverEndpointState? state,
  }) {
    return ResolverEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResolverEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverEndpoint:ResolverEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    direction = registerOutput<String>('direction');
    hostVpcId = registerOutput<String>('hostVpcId');
    ipAddresses = registerOutput<List<Map<String, dynamic>>>('ipAddresses');
    this.name = registerOutput<String>('name');
    protocols = registerOutput<List<String>>('protocols');
    region = registerOutput<String>('region');
    resolverEndpointType = registerOutput<String>('resolverEndpointType');
    rniEnhancedMetricsEnabled = registerOutput<bool>('rniEnhancedMetricsEnabled');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetNameServerMetricsEnabled = registerOutput<bool>('targetNameServerMetricsEnabled');
  }
}
