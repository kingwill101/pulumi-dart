import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_access_logs.dart';
import 'load_balancer_args.dart';
import 'load_balancer_connection_logs.dart';
import 'load_balancer_health_check_logs.dart';
import 'load_balancer_ipam_pools.dart';
import 'load_balancer_minimum_load_balancer_capacity.dart';
import 'load_balancer_state.dart';
import 'load_balancer_type.dart';

/// Provides a Load Balancer resource.
///
/// &gt; **Note:** `aws.alb.LoadBalancer` is known as `aws.lb.LoadBalancer`. The functionality is identical.
///
/// ## Example Usage
///
/// ### Application Load Balancer
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.lb.LoadBalancer("test", {
///     name: "test-lb-tf",
///     internal: false,
///     loadBalancerType: "application",
///     securityGroups: [lbSg.id],
///     subnets: .map(subnet => (subnet.id)),
///     enableDeletionProtection: true,
///     accessLogs: {
///         bucket: lbLogs.id,
///         prefix: "test-lb",
///         enabled: true,
///     },
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lb.LoadBalancer("test",
///     name="test-lb-tf",
///     internal=False,
///     load_balancer_type="application",
///     security_groups=[lb_sg["id"]],
///     subnets=[subnet["id"] for subnet in public],
///     enable_deletion_protection=True,
///     access_logs={
///         "bucket": lb_logs["id"],
///         "prefix": "test-lb",
///         "enabled": True,
///     },
///     tags={
///         "Environment": "production",
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
///     var test = new Aws.LB.LoadBalancer("test", new()
///     {
///         Name = "test-lb-tf",
///         Internal = false,
///         LoadBalancerType = "application",
///         SecurityGroups = new[]
///         {
///             lbSg.Id,
///         },
///         Subnets = .Select(subnet =>
///         {
///             return subnet.Id;
///         }).ToList(),
///         EnableDeletionProtection = true,
///         AccessLogs = new Aws.LB.Inputs.LoadBalancerAccessLogsArgs
///         {
///             Bucket = lbLogs.Id,
///             Prefix = "test-lb",
///             Enabled = true,
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
/// });
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
/// resource "aws_lb_loadbalancer" "test" {
///   name                       = "test-lb-tf"
///   internal                   = false
///   load_balancer_type         = "application"
///   security_groups            = [lbSg.id]
///   subnets                    = [for subnet in public : subnet.id]
///   enable_deletion_protection = true
///   access_logs = {
///     bucket  = lbLogs.id
///     prefix  = "test-lb"
///     enabled = true
///   }
///   tags = {
///     "Environment" = "production"
///   }
/// }
/// ```
///
///
/// ### Network Load Balancer
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.lb.LoadBalancer("test", {
///     name: "test-lb-tf",
///     internal: false,
///     loadBalancerType: "network",
///     subnets: .map(subnet => (subnet.id)),
///     enableDeletionProtection: true,
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lb.LoadBalancer("test",
///     name="test-lb-tf",
///     internal=False,
///     load_balancer_type="network",
///     subnets=[subnet["id"] for subnet in public],
///     enable_deletion_protection=True,
///     tags={
///         "Environment": "production",
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
///     var test = new Aws.LB.LoadBalancer("test", new()
///     {
///         Name = "test-lb-tf",
///         Internal = false,
///         LoadBalancerType = "network",
///         Subnets = .Select(subnet =>
///         {
///             return subnet.Id;
///         }).ToList(),
///         EnableDeletionProtection = true,
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
/// });
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
/// resource "aws_lb_loadbalancer" "test" {
///   name                       = "test-lb-tf"
///   internal                   = false
///   load_balancer_type         = "network"
///   subnets                    = [for subnet in public : subnet.id]
///   enable_deletion_protection = true
///   tags = {
///     "Environment" = "production"
///   }
/// }
/// ```
///
///
/// ### Specifying Elastic IPs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lb.LoadBalancer("example", {
///     name: "example",
///     loadBalancerType: "network",
///     subnetMappings: [
///         {
///             subnetId: example1AwsSubnet.id,
///             allocationId: example1.id,
///         },
///         {
///             subnetId: example2AwsSubnet.id,
///             allocationId: example2.id,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lb.LoadBalancer("example",
///     name="example",
///     load_balancer_type="network",
///     subnet_mappings=[
///         {
///             "subnet_id": example1_aws_subnet["id"],
///             "allocation_id": example1["id"],
///         },
///         {
///             "subnet_id": example2_aws_subnet["id"],
///             "allocation_id": example2["id"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LB.LoadBalancer("example", new()
///     {
///         Name = "example",
///         LoadBalancerType = "network",
///         SubnetMappings = new[]
///         {
///             new Aws.LB.Inputs.LoadBalancerSubnetMappingArgs
///             {
///                 SubnetId = example1AwsSubnet.Id,
///                 AllocationId = example1.Id,
///             },
///             new Aws.LB.Inputs.LoadBalancerSubnetMappingArgs
///             {
///                 SubnetId = example2AwsSubnet.Id,
///                 AllocationId = example2.Id,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:             pulumi.String("example"),
/// 			LoadBalancerType: pulumi.String("network"),
/// 			SubnetMappings: lb.LoadBalancerSubnetMappingArray{
/// 				&lb.LoadBalancerSubnetMappingArgs{
/// 					SubnetId:     pulumi.Any(example1AwsSubnet.Id),
/// 					AllocationId: pulumi.Any(example1.Id),
/// 				},
/// 				&lb.LoadBalancerSubnetMappingArgs{
/// 					SubnetId:     pulumi.Any(example2AwsSubnet.Id),
/// 					AllocationId: pulumi.Any(example2.Id),
/// 				},
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
/// resource "aws_lb_loadbalancer" "example" {
///   name               = "example"
///   load_balancer_type = "network"
///   subnet_mappings {
///     subnet_id     = example1AwsSubnet.id
///     allocation_id = example1.id
///   }
///   subnet_mappings {
///     subnet_id     = example2AwsSubnet.id
///     allocation_id = example2.id
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.LoadBalancerArgs;
/// import com.pulumi.aws.lb.inputs.LoadBalancerSubnetMappingArgs;
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
///         var example = new LoadBalancer("example", LoadBalancerArgs.builder()
///             .name("example")
///             .loadBalancerType("network")
///             .subnetMappings(
///                 LoadBalancerSubnetMappingArgs.builder()
///                     .subnetId(example1AwsSubnet.id())
///                     .allocationId(example1.id())
///                     .build(),
///                 LoadBalancerSubnetMappingArgs.builder()
///                     .subnetId(example2AwsSubnet.id())
///                     .allocationId(example2.id())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lb:LoadBalancer
///     properties:
///       name: example
///       loadBalancerType: network
///       subnetMappings:
///         - subnetId: ${example1AwsSubnet.id}
///           allocationId: ${example1.id}
///         - subnetId: ${example2AwsSubnet.id}
///           allocationId: ${example2.id}
/// ```
///
///
/// ### Specifying private IP addresses for an internal-facing load balancer
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lb.LoadBalancer("example", {
///     name: "example",
///     loadBalancerType: "network",
///     subnetMappings: [
///         {
///             subnetId: example1.id,
///             privateIpv4Address: "10.0.1.15",
///         },
///         {
///             subnetId: example2.id,
///             privateIpv4Address: "10.0.2.15",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lb.LoadBalancer("example",
///     name="example",
///     load_balancer_type="network",
///     subnet_mappings=[
///         {
///             "subnet_id": example1["id"],
///             "private_ipv4_address": "10.0.1.15",
///         },
///         {
///             "subnet_id": example2["id"],
///             "private_ipv4_address": "10.0.2.15",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LB.LoadBalancer("example", new()
///     {
///         Name = "example",
///         LoadBalancerType = "network",
///         SubnetMappings = new[]
///         {
///             new Aws.LB.Inputs.LoadBalancerSubnetMappingArgs
///             {
///                 SubnetId = example1.Id,
///                 PrivateIpv4Address = "10.0.1.15",
///             },
///             new Aws.LB.Inputs.LoadBalancerSubnetMappingArgs
///             {
///                 SubnetId = example2.Id,
///                 PrivateIpv4Address = "10.0.2.15",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:             pulumi.String("example"),
/// 			LoadBalancerType: pulumi.String("network"),
/// 			SubnetMappings: lb.LoadBalancerSubnetMappingArray{
/// 				&lb.LoadBalancerSubnetMappingArgs{
/// 					SubnetId:           pulumi.Any(example1.Id),
/// 					PrivateIpv4Address: pulumi.String("10.0.1.15"),
/// 				},
/// 				&lb.LoadBalancerSubnetMappingArgs{
/// 					SubnetId:           pulumi.Any(example2.Id),
/// 					PrivateIpv4Address: pulumi.String("10.0.2.15"),
/// 				},
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
/// resource "aws_lb_loadbalancer" "example" {
///   name               = "example"
///   load_balancer_type = "network"
///   subnet_mappings {
///     subnet_id            = example1.id
///     private_ipv4_address = "10.0.1.15"
///   }
///   subnet_mappings {
///     subnet_id            = example2.id
///     private_ipv4_address = "10.0.2.15"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.LoadBalancerArgs;
/// import com.pulumi.aws.lb.inputs.LoadBalancerSubnetMappingArgs;
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
///         var example = new LoadBalancer("example", LoadBalancerArgs.builder()
///             .name("example")
///             .loadBalancerType("network")
///             .subnetMappings(
///                 LoadBalancerSubnetMappingArgs.builder()
///                     .subnetId(example1.id())
///                     .privateIpv4Address("10.0.1.15")
///                     .build(),
///                 LoadBalancerSubnetMappingArgs.builder()
///                     .subnetId(example2.id())
///                     .privateIpv4Address("10.0.2.15")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lb:LoadBalancer
///     properties:
///       name: example
///       loadBalancerType: network
///       subnetMappings:
///         - subnetId: ${example1.id}
///           privateIpv4Address: 10.0.1.15
///         - subnetId: ${example2.id}
///           privateIpv4Address: 10.0.2.15
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the load balancer.
///
///
/// Using `pulumi import`, import LBs using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:alb/loadBalancer:LoadBalancer bar arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// Access Logs block. See below.
  late final pulumi.Output<LoadBalancerAccessLogs?> accessLogs;
  /// ARN of the load balancer.
  late final pulumi.Output<String> arn;
  /// ARN suffix for use with CloudWatch Metrics.
  late final pulumi.Output<String> arnSuffix;
  /// Client keep alive value in seconds. The valid range is 60-604800 seconds. The default is 3600 seconds.
  late final pulumi.Output<int?> clientKeepAlive;
  /// Connection Logs block. See below. Only valid for Load Balancers of type `application`.
  late final pulumi.Output<LoadBalancerConnectionLogs?> connectionLogs;
  /// ID of the customer owned ipv4 pool to use for this load balancer.
  late final pulumi.Output<String?> customerOwnedIpv4Pool;
  /// How the load balancer handles requests that might pose a security risk to an application due to HTTP desync. Valid values are `monitor`, `defensive` (default), `strictest`.
  late final pulumi.Output<String?> desyncMitigationMode;
  /// DNS name of the load balancer.
  /// * `subnet_mapping.*.outpost_id` - ID of the Outpost containing the load balancer.
  late final pulumi.Output<String> dnsName;
  /// How traffic is distributed among the load balancer Availability Zones. Possible values are `anyAvailabilityZone` (default), `availabilityZoneAffinity`, or `partialAvailabilityZoneAffinity`. See   [Availability Zone DNS affinity](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#zonal-dns-affinity) for additional details. Only valid for `network` type load balancers.
  late final pulumi.Output<String?> dnsRecordClientRoutingPolicy;
  /// Whether HTTP headers with header fields that are not valid are removed by the load balancer (true) or routed to targets (false). The default is false. Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens. Only valid for Load Balancers of type `application`.
  late final pulumi.Output<bool?> dropInvalidHeaderFields;
  /// If true, cross-zone load balancing of the load balancer will be enabled. For `network` and `gateway` type load balancers, this feature is disabled by default (`false`). For `application` load balancer this feature is always enabled (`true`) and cannot be disabled. Defaults to `false`.
  late final pulumi.Output<bool?> enableCrossZoneLoadBalancing;
  /// If true, deletion of the load balancer will be disabled via the AWS API. This will prevent this provider from deleting the load balancer. Defaults to `false`.
  late final pulumi.Output<bool?> enableDeletionProtection;
  /// Whether HTTP/2 is enabled in `application` load balancers. Defaults to `true`.
  late final pulumi.Output<bool?> enableHttp2;
  /// Whether to use an IPv6 prefix from each subnet for source NAT. `ipAddressType` must be `dualstack`. Valid values: `on`, `off`.
  late final pulumi.Output<String> enablePrefixForIpv6SourceNat;
  /// Whether the two headers (`x-amzn-tls-version` and `x-amzn-tls-cipher-suite`), which contain information about the negotiated TLS version and cipher suite, are added to the client request before sending it to the target. Only valid for Load Balancers of type `application`. Defaults to `false`
  late final pulumi.Output<bool?> enableTlsVersionAndCipherSuiteHeaders;
  /// Whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF. Defaults to `false`.
  late final pulumi.Output<bool?> enableWafFailOpen;
  /// Whether the X-Forwarded-For header should preserve the source port that the client used to connect to the load balancer in `application` load balancers. Defaults to `false`.
  late final pulumi.Output<bool?> enableXffClientPort;
  /// Whether zonal shift is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> enableZonalShift;
  /// Whether inbound security group rules are enforced for traffic originating from a PrivateLink. Only valid for Load Balancers of type `network`. The possible values are `on` and `off`.
  late final pulumi.Output<String> enforceSecurityGroupInboundRulesOnPrivateLinkTraffic;
  /// Health Check Logs block. See below. Only valid for Load Balancers of type `application`.
  late final pulumi.Output<LoadBalancerHealthCheckLogs?> healthCheckLogs;
  /// Time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type `application`. Default: 60.
  late final pulumi.Output<int?> idleTimeout;
  /// If true, the LB will be internal. Defaults to `false`.
  late final pulumi.Output<bool> internal;
  /// Type of IP addresses used by the subnets for your load balancer. The possible values depend upon the load balancer type: `ipv4` (all load balancer types), `dualstack` (all load balancer types), and `dualstack-without-public-ipv4` (type `application` only).
  late final pulumi.Output<String> ipAddressType;
  /// . The IPAM pools to use with the load balancer.  Only valid for Load Balancers of type `application`. See ipamPools for more information.
  late final pulumi.Output<LoadBalancerIpamPools?> ipamPools;
  /// Type of load balancer to create. Possible values are `application`, `gateway`, or `network`. The default value is `application`.
  late final pulumi.Output<LoadBalancerType?> loadBalancerType;
  /// Minimum capacity for a load balancer. Only valid for Load Balancers of type `application` or `network`.
  late final pulumi.Output<LoadBalancerMinimumLoadBalancerCapacity?> minimumLoadBalancerCapacity;
  /// Name of the LB. This name must be unique within your AWS account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen. If not specified, this provider will autogenerate a name beginning with `tf-lb`.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Whether the Application Load Balancer should preserve the Host header in the HTTP request and send it to the target without any change. Defaults to `false`.
  late final pulumi.Output<bool?> preserveHostHeader;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The number of secondary IP addresses to configure for your load balancer nodes. Only valid for Load Balancers of type `network`. The valid range is 0-7. When decreased, this will force a recreation of the resource. Default: `0`.
  late final pulumi.Output<int> secondaryIpsAutoAssignedPerSubnet;
  /// List of security group IDs to assign to the LB. Only valid for Load Balancers of type `application` or `network`. For load balancers of type `network` security groups cannot be added if none are currently present, and cannot all be removed once added. If either of these conditions are met, this will force a recreation of the resource.
  late final pulumi.Output<List<String>> securityGroups;
  /// Subnet mapping block. See below. For Load Balancers of type `network` subnet mappings can only be added.
  late final pulumi.Output<List<Map<String, dynamic>>> subnetMappings;
  /// List of subnet IDs to attach to the LB. For Load Balancers of type `network` subnets can only be added (see [Availability Zones](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#availability-zones)), deleting a subnet for load balancers of type `network` will force a recreation of the resource.
  late final pulumi.Output<List<String>> subnets;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> vpcId;
  /// Determines how the load balancer modifies the `X-Forwarded-For` header in the HTTP request before sending the request to the target. The possible values are `append`, `preserve`, and `remove`. Only valid for Load Balancers of type `application`. The default is `append`.
  ///
  /// &gt; **NOTE:** Please note that internal LBs can only use `ipv4` as the `ipAddressType`. You can only change to `dualstack` `ipAddressType` if the selected subnets are IPv6 enabled.
  ///
  /// &gt; **NOTE:** Please note that one of either `subnets` or `subnetMapping` is required.
  late final pulumi.Output<String?> xffHeaderProcessingMode;
  /// Canonical hosted zone ID of the load balancer (to be used in a Route 53 Alias record).
  late final pulumi.Output<String> zoneId;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_alb_load_balancer_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:alb/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessLogs = registerOutput<LoadBalancerAccessLogs?>('accessLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerAccessLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    arnSuffix = registerOutput<String>('arnSuffix');
    clientKeepAlive = registerOutput<int?>('clientKeepAlive');
    connectionLogs = registerOutput<LoadBalancerConnectionLogs?>('connectionLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerConnectionLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customerOwnedIpv4Pool = registerOutput<String?>('customerOwnedIpv4Pool');
    desyncMitigationMode = registerOutput<String?>('desyncMitigationMode');
    dnsName = registerOutput<String>('dnsName');
    dnsRecordClientRoutingPolicy = registerOutput<String?>('dnsRecordClientRoutingPolicy');
    dropInvalidHeaderFields = registerOutput<bool?>('dropInvalidHeaderFields');
    enableCrossZoneLoadBalancing = registerOutput<bool?>('enableCrossZoneLoadBalancing');
    enableDeletionProtection = registerOutput<bool?>('enableDeletionProtection');
    enableHttp2 = registerOutput<bool?>('enableHttp2');
    enablePrefixForIpv6SourceNat = registerOutput<String>('enablePrefixForIpv6SourceNat');
    enableTlsVersionAndCipherSuiteHeaders = registerOutput<bool?>('enableTlsVersionAndCipherSuiteHeaders');
    enableWafFailOpen = registerOutput<bool?>('enableWafFailOpen');
    enableXffClientPort = registerOutput<bool?>('enableXffClientPort');
    enableZonalShift = registerOutput<bool?>('enableZonalShift');
    enforceSecurityGroupInboundRulesOnPrivateLinkTraffic = registerOutput<String>('enforceSecurityGroupInboundRulesOnPrivateLinkTraffic');
    healthCheckLogs = registerOutput<LoadBalancerHealthCheckLogs?>('healthCheckLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerHealthCheckLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    idleTimeout = registerOutput<int?>('idleTimeout');
    internal = registerOutput<bool>('internal');
    ipAddressType = registerOutput<String>('ipAddressType');
    ipamPools = registerOutput<LoadBalancerIpamPools?>('ipamPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerIpamPools.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loadBalancerType = registerOutput<LoadBalancerType?>('loadBalancerType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerType.fromValue(guardedValue as String); });
    minimumLoadBalancerCapacity = registerOutput<LoadBalancerMinimumLoadBalancerCapacity?>('minimumLoadBalancerCapacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerMinimumLoadBalancerCapacity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    preserveHostHeader = registerOutput<bool?>('preserveHostHeader');
    region = registerOutput<String>('region');
    secondaryIpsAutoAssignedPerSubnet = registerOutput<int>('secondaryIpsAutoAssignedPerSubnet');
    securityGroups = registerOutput<List<String>>('securityGroups');
    subnetMappings = registerOutput<List<Map<String, dynamic>>>('subnetMappings');
    subnets = registerOutput<List<String>>('subnets');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
    xffHeaderProcessingMode = registerOutput<String?>('xffHeaderProcessingMode');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [LoadBalancer] resource's state with the given [name] and [id].
  static LoadBalancer get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerState? state,
  }) {
    return LoadBalancer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadBalancer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:alb/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessLogs = registerOutput<LoadBalancerAccessLogs?>('accessLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerAccessLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    arnSuffix = registerOutput<String>('arnSuffix');
    clientKeepAlive = registerOutput<int?>('clientKeepAlive');
    connectionLogs = registerOutput<LoadBalancerConnectionLogs?>('connectionLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerConnectionLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customerOwnedIpv4Pool = registerOutput<String?>('customerOwnedIpv4Pool');
    desyncMitigationMode = registerOutput<String?>('desyncMitigationMode');
    dnsName = registerOutput<String>('dnsName');
    dnsRecordClientRoutingPolicy = registerOutput<String?>('dnsRecordClientRoutingPolicy');
    dropInvalidHeaderFields = registerOutput<bool?>('dropInvalidHeaderFields');
    enableCrossZoneLoadBalancing = registerOutput<bool?>('enableCrossZoneLoadBalancing');
    enableDeletionProtection = registerOutput<bool?>('enableDeletionProtection');
    enableHttp2 = registerOutput<bool?>('enableHttp2');
    enablePrefixForIpv6SourceNat = registerOutput<String>('enablePrefixForIpv6SourceNat');
    enableTlsVersionAndCipherSuiteHeaders = registerOutput<bool?>('enableTlsVersionAndCipherSuiteHeaders');
    enableWafFailOpen = registerOutput<bool?>('enableWafFailOpen');
    enableXffClientPort = registerOutput<bool?>('enableXffClientPort');
    enableZonalShift = registerOutput<bool?>('enableZonalShift');
    enforceSecurityGroupInboundRulesOnPrivateLinkTraffic = registerOutput<String>('enforceSecurityGroupInboundRulesOnPrivateLinkTraffic');
    healthCheckLogs = registerOutput<LoadBalancerHealthCheckLogs?>('healthCheckLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerHealthCheckLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    idleTimeout = registerOutput<int?>('idleTimeout');
    internal = registerOutput<bool>('internal');
    ipAddressType = registerOutput<String>('ipAddressType');
    ipamPools = registerOutput<LoadBalancerIpamPools?>('ipamPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerIpamPools.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loadBalancerType = registerOutput<LoadBalancerType?>('loadBalancerType', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerType.fromValue(guardedValue as String); });
    minimumLoadBalancerCapacity = registerOutput<LoadBalancerMinimumLoadBalancerCapacity?>('minimumLoadBalancerCapacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerMinimumLoadBalancerCapacity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    preserveHostHeader = registerOutput<bool?>('preserveHostHeader');
    region = registerOutput<String>('region');
    secondaryIpsAutoAssignedPerSubnet = registerOutput<int>('secondaryIpsAutoAssignedPerSubnet');
    securityGroups = registerOutput<List<String>>('securityGroups');
    subnetMappings = registerOutput<List<Map<String, dynamic>>>('subnetMappings');
    subnets = registerOutput<List<String>>('subnets');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
    xffHeaderProcessingMode = registerOutput<String?>('xffHeaderProcessingMode');
    zoneId = registerOutput<String>('zoneId');
  }
}
