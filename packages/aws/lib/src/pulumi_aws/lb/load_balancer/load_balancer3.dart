import 'package:pulumi/pulumi.dart';
import '../load_balancer_access_logs/load_balancer_access_logs3.dart';
import '../load_balancer_connection_logs/load_balancer_connection_logs2.dart';
import '../load_balancer_health_check_logs/load_balancer_health_check_logs2.dart';
import '../load_balancer_ipam_pools/load_balancer_ipam_pools2.dart';
import '../load_balancer_minimum_load_balancer_capacity/load_balancer_minimum_load_balancer_capacity2.dart';
import '../load_balancer_subnet_mapping/load_balancer_subnet_mapping2.dart';
import 'load_balancer_args3.dart';

/// Provides a Load Balancer resource.
///
/// > **Note:** <span pulumi-lang-nodejs="`aws.alb.LoadBalancer`" pulumi-lang-dotnet="`aws.alb.LoadBalancer`" pulumi-lang-go="`alb.LoadBalancer`" pulumi-lang-python="`alb.LoadBalancer`" pulumi-lang-yaml="`aws.alb.LoadBalancer`" pulumi-lang-java="`aws.alb.LoadBalancer`">`aws.alb.LoadBalancer`</span> is known as <span pulumi-lang-nodejs="`aws.lb.LoadBalancer`" pulumi-lang-dotnet="`aws.lb.LoadBalancer`" pulumi-lang-go="`lb.LoadBalancer`" pulumi-lang-python="`lb.LoadBalancer`" pulumi-lang-yaml="`aws.lb.LoadBalancer`" pulumi-lang-java="`aws.lb.LoadBalancer`">`aws.lb.LoadBalancer`</span>. The functionality is identical.
///
/// ## Example Usage
///
/// ### Application Load Balancer
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.lb.LoadBalancer("test", {
/// name: "test-lb-tf",
/// internal: false,
/// loadBalancerType: "application",
/// securityGroups: [lbSg.id],
/// subnets: .map(subnet => (subnet.id)),
/// enableDeletionProtection: true,
/// accessLogs: {
/// bucket: lbLogs.id,
/// prefix: "test-lb",
/// enabled: true,
/// },
/// tags: {
/// Environment: "production",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lb.LoadBalancer("test",
/// name="test-lb-tf",
/// internal=False,
/// load_balancer_type="application",
/// security_groups=[lb_sg["id"]],
/// subnets=[subnet["id"] for subnet in public],
/// enable_deletion_protection=True,
/// access_logs={
/// "bucket": lb_logs["id"],
/// "prefix": "test-lb",
/// "enabled": True,
/// },
/// tags={
/// "Environment": "production",
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
/// var test = new Aws.LB.LoadBalancer("test", new()
/// {
/// Name = "test-lb-tf",
/// Internal = false,
/// LoadBalancerType = "application",
/// SecurityGroups = new[]
/// {
/// lbSg.Id,
/// },
/// Subnets = .Select(subnet =>
/// {
/// return subnet.Id;
/// }).ToList(),
/// EnableDeletionProtection = true,
/// AccessLogs = new Aws.LB.Inputs.LoadBalancerAccessLogsArgs
/// {
/// Bucket = lbLogs.Id,
/// Prefix = "test-lb",
/// Enabled = true,
/// },
/// Tags =
/// {
/// { "Environment", "production" },
/// },
/// });
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Network Load Balancer
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.lb.LoadBalancer("test", {
/// name: "test-lb-tf",
/// internal: false,
/// loadBalancerType: "network",
/// subnets: .map(subnet => (subnet.id)),
/// enableDeletionProtection: true,
/// tags: {
/// Environment: "production",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lb.LoadBalancer("test",
/// name="test-lb-tf",
/// internal=False,
/// load_balancer_type="network",
/// subnets=[subnet["id"] for subnet in public],
/// enable_deletion_protection=True,
/// tags={
/// "Environment": "production",
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
/// var test = new Aws.LB.LoadBalancer("test", new()
/// {
/// Name = "test-lb-tf",
/// Internal = false,
/// LoadBalancerType = "network",
/// Subnets = .Select(subnet =>
/// {
/// return subnet.Id;
/// }).ToList(),
/// EnableDeletionProtection = true,
/// Tags =
/// {
/// { "Environment", "production" },
/// },
/// });
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Specifying Elastic IPs
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lb.LoadBalancer("example", {
/// name: "example",
/// loadBalancerType: "network",
/// subnetMappings: [
/// {
/// subnetId: example1AwsSubnet.id,
/// allocationId: example1.id,
/// },
/// {
/// subnetId: example2AwsSubnet.id,
/// allocationId: example2.id,
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lb.LoadBalancer("example",
/// name="example",
/// load_balancer_type="network",
/// subnet_mappings=[
/// {
/// "subnet_id": example1_aws_subnet["id"],
/// "allocation_id": example1["id"],
/// },
/// {
/// "subnet_id": example2_aws_subnet["id"],
/// "allocation_id": example2["id"],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LB.LoadBalancer("example", new()
/// {
/// Name = "example",
/// LoadBalancerType = "network",
/// SubnetMappings = new[]
/// {
/// new Aws.LB.Inputs.LoadBalancerSubnetMappingArgs
/// {
/// SubnetId = example1AwsSubnet.Id,
/// AllocationId = example1.Id,
/// },
/// new Aws.LB.Inputs.LoadBalancerSubnetMappingArgs
/// {
/// SubnetId = example2AwsSubnet.Id,
/// AllocationId = example2.Id,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// Name:             pulumi.String("example"),
/// LoadBalancerType: pulumi.String("network"),
/// SubnetMappings: lb.LoadBalancerSubnetMappingArray{
/// &lb.LoadBalancerSubnetMappingArgs{
/// SubnetId:     pulumi.Any(example1AwsSubnet.Id),
/// AllocationId: pulumi.Any(example1.Id),
/// },
/// &lb.LoadBalancerSubnetMappingArgs{
/// SubnetId:     pulumi.Any(example2AwsSubnet.Id),
/// AllocationId: pulumi.Any(example2.Id),
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
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.LoadBalancerArgs;
/// import com.pulumi.aws.lb.inputs.LoadBalancerSubnetMappingArgs;
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
/// var example = new LoadBalancer("example", LoadBalancerArgs.builder()
/// .name("example")
/// .loadBalancerType("network")
/// .subnetMappings(
/// LoadBalancerSubnetMappingArgs.builder()
/// .subnetId(example1AwsSubnet.id())
/// .allocationId(example1.id())
/// .build(),
/// LoadBalancerSubnetMappingArgs.builder()
/// .subnetId(example2AwsSubnet.id())
/// .allocationId(example2.id())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lb:LoadBalancer
/// properties:
/// name: example
/// loadBalancerType: network
/// subnetMappings:
/// - subnetId: ${example1AwsSubnet.id}
/// allocationId: ${example1.id}
/// - subnetId: ${example2AwsSubnet.id}
/// allocationId: ${example2.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Specifying private IP addresses for an internal-facing load balancer
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lb.LoadBalancer("example", {
/// name: "example",
/// loadBalancerType: "network",
/// subnetMappings: [
/// {
/// subnetId: example1.id,
/// privateIpv4Address: "10.0.1.15",
/// },
/// {
/// subnetId: example2.id,
/// privateIpv4Address: "10.0.2.15",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lb.LoadBalancer("example",
/// name="example",
/// load_balancer_type="network",
/// subnet_mappings=[
/// {
/// "subnet_id": example1["id"],
/// "private_ipv4_address": "10.0.1.15",
/// },
/// {
/// "subnet_id": example2["id"],
/// "private_ipv4_address": "10.0.2.15",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LB.LoadBalancer("example", new()
/// {
/// Name = "example",
/// LoadBalancerType = "network",
/// SubnetMappings = new[]
/// {
/// new Aws.LB.Inputs.LoadBalancerSubnetMappingArgs
/// {
/// SubnetId = example1.Id,
/// PrivateIpv4Address = "10.0.1.15",
/// },
/// new Aws.LB.Inputs.LoadBalancerSubnetMappingArgs
/// {
/// SubnetId = example2.Id,
/// PrivateIpv4Address = "10.0.2.15",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// Name:             pulumi.String("example"),
/// LoadBalancerType: pulumi.String("network"),
/// SubnetMappings: lb.LoadBalancerSubnetMappingArray{
/// &lb.LoadBalancerSubnetMappingArgs{
/// SubnetId:           pulumi.Any(example1.Id),
/// PrivateIpv4Address: pulumi.String("10.0.1.15"),
/// },
/// &lb.LoadBalancerSubnetMappingArgs{
/// SubnetId:           pulumi.Any(example2.Id),
/// PrivateIpv4Address: pulumi.String("10.0.2.15"),
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
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.LoadBalancerArgs;
/// import com.pulumi.aws.lb.inputs.LoadBalancerSubnetMappingArgs;
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
/// var example = new LoadBalancer("example", LoadBalancerArgs.builder()
/// .name("example")
/// .loadBalancerType("network")
/// .subnetMappings(
/// LoadBalancerSubnetMappingArgs.builder()
/// .subnetId(example1.id())
/// .privateIpv4Address("10.0.1.15")
/// .build(),
/// LoadBalancerSubnetMappingArgs.builder()
/// .subnetId(example2.id())
/// .privateIpv4Address("10.0.2.15")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lb:LoadBalancer
/// properties:
/// name: example
/// loadBalancerType: network
/// subnetMappings:
/// - subnetId: ${example1.id}
/// privateIpv4Address: 10.0.1.15
/// - subnetId: ${example2.id}
/// privateIpv4Address: 10.0.2.15
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the load balancer.
///
///
/// Using `pulumi import`, import LBs using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:lb/loadBalancer:LoadBalancer bar arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188
/// ```
class LoadBalancer3 extends CustomResource {
  /// Access Logs block. See below.
  late final Output<LoadBalancerAccessLogs3?> accessLogs;

  /// ARN of the load balancer.
  late final Output<String> arn;

  /// ARN suffix for use with CloudWatch Metrics.
  late final Output<String> arnSuffix;

  /// Client keep alive value in seconds. The valid range is 60-604800 seconds. The default is 3600 seconds.
  late final Output<int?> clientKeepAlive;

  /// Connection Logs block. See below. Only valid for Load Balancers of type <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span>.
  late final Output<LoadBalancerConnectionLogs2?> connectionLogs;

  /// ID of the customer owned ipv4 pool to use for this load balancer.
  late final Output<String?> customerOwnedIpv4Pool;

  /// How the load balancer handles requests that might pose a security risk to an application due to HTTP desync. Valid values are <span pulumi-lang-nodejs="`monitor`" pulumi-lang-dotnet="`Monitor`" pulumi-lang-go="`monitor`" pulumi-lang-python="`monitor`" pulumi-lang-yaml="`monitor`" pulumi-lang-java="`monitor`">`monitor`</span>, <span pulumi-lang-nodejs="`defensive`" pulumi-lang-dotnet="`Defensive`" pulumi-lang-go="`defensive`" pulumi-lang-python="`defensive`" pulumi-lang-yaml="`defensive`" pulumi-lang-java="`defensive`">`defensive`</span> (default), <span pulumi-lang-nodejs="`strictest`" pulumi-lang-dotnet="`Strictest`" pulumi-lang-go="`strictest`" pulumi-lang-python="`strictest`" pulumi-lang-yaml="`strictest`" pulumi-lang-java="`strictest`">`strictest`</span>.
  late final Output<String?> desyncMitigationMode;

  /// DNS name of the load balancer.
  /// * `subnet_mapping.*.outpost_id` - ID of the Outpost containing the load balancer.
  late final Output<String> dnsName;

  /// How traffic is distributed among the load balancer Availability Zones. Possible values are <span pulumi-lang-nodejs="`anyAvailabilityZone`" pulumi-lang-dotnet="`AnyAvailabilityZone`" pulumi-lang-go="`anyAvailabilityZone`" pulumi-lang-python="`any_availability_zone`" pulumi-lang-yaml="`anyAvailabilityZone`" pulumi-lang-java="`anyAvailabilityZone`">`any_availability_zone`</span> (default), <span pulumi-lang-nodejs="`availabilityZoneAffinity`" pulumi-lang-dotnet="`AvailabilityZoneAffinity`" pulumi-lang-go="`availabilityZoneAffinity`" pulumi-lang-python="`availability_zone_affinity`" pulumi-lang-yaml="`availabilityZoneAffinity`" pulumi-lang-java="`availabilityZoneAffinity`">`availability_zone_affinity`</span>, or <span pulumi-lang-nodejs="`partialAvailabilityZoneAffinity`" pulumi-lang-dotnet="`PartialAvailabilityZoneAffinity`" pulumi-lang-go="`partialAvailabilityZoneAffinity`" pulumi-lang-python="`partial_availability_zone_affinity`" pulumi-lang-yaml="`partialAvailabilityZoneAffinity`" pulumi-lang-java="`partialAvailabilityZoneAffinity`">`partial_availability_zone_affinity`</span>. See   [Availability Zone DNS affinity](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#zonal-dns-affinity) for additional details. Only valid for <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> type load balancers.
  late final Output<String?> dnsRecordClientRoutingPolicy;

  /// Whether HTTP headers with header fields that are not valid are removed by the load balancer (true) or routed to targets (false). The default is false. Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens. Only valid for Load Balancers of type <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span>.
  late final Output<bool?> dropInvalidHeaderFields;

  /// If true, cross-zone load balancing of the load balancer will be enabled. For <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> and <span pulumi-lang-nodejs="`gateway`" pulumi-lang-dotnet="`Gateway`" pulumi-lang-go="`gateway`" pulumi-lang-python="`gateway`" pulumi-lang-yaml="`gateway`" pulumi-lang-java="`gateway`">`gateway`</span> type load balancers, this feature is disabled by default (<span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>). For <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span> load balancer this feature is always enabled (<span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>) and cannot be disabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> enableCrossZoneLoadBalancing;

  /// If true, deletion of the load balancer will be disabled via the AWS API. This will prevent this provider from deleting the load balancer. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> enableDeletionProtection;

  /// Whether HTTP/2 is enabled in <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span> load balancers. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enableHttp2;

  /// Whether the two headers (`x-amzn-tls-version` and `x-amzn-tls-cipher-suite`), which contain information about the negotiated TLS version and cipher suite, are added to the client request before sending it to the target. Only valid for Load Balancers of type <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  late final Output<bool?> enableTlsVersionAndCipherSuiteHeaders;

  /// Whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> enableWafFailOpen;

  /// Whether the X-Forwarded-For header should preserve the source port that the client used to connect to the load balancer in <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span> load balancers. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> enableXffClientPort;

  /// Whether zonal shift is enabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> enableZonalShift;

  /// Whether inbound security group rules are enforced for traffic originating from a PrivateLink. Only valid for Load Balancers of type <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span>. The possible values are <span pulumi-lang-nodejs="`on`" pulumi-lang-dotnet="`On`" pulumi-lang-go="`on`" pulumi-lang-python="`on`" pulumi-lang-yaml="`on`" pulumi-lang-java="`on`">`on`</span> and <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span>.
  late final Output<String>
      enforceSecurityGroupInboundRulesOnPrivateLinkTraffic;

  /// Health Check Logs block. See below. Only valid for Load Balancers of type <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span>.
  late final Output<LoadBalancerHealthCheckLogs2?> healthCheckLogs;

  /// Time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span>. Default: 60.
  late final Output<int?> idleTimeout;

  /// If true, the LB will be internal. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> internal;

  /// Type of IP addresses used by the subnets for your load balancer. The possible values depend upon the load balancer type: <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span> (all load balancer types), <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span> (all load balancer types), and `dualstack-without-public-ipv4` (type <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span> only).
  late final Output<String> ipAddressType;

  /// . The IPAM pools to use with the load balancer.  Only valid for Load Balancers of type <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span>. See<span pulumi-lang-nodejs=" ipamPools " pulumi-lang-dotnet=" IpamPools " pulumi-lang-go=" ipamPools " pulumi-lang-python=" ipam_pools " pulumi-lang-yaml=" ipamPools " pulumi-lang-java=" ipamPools "> ipam_pools </span>for more information.
  late final Output<LoadBalancerIpamPools2?> ipamPools;

  /// Type of load balancer to create. Possible values are <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span>, <span pulumi-lang-nodejs="`gateway`" pulumi-lang-dotnet="`Gateway`" pulumi-lang-go="`gateway`" pulumi-lang-python="`gateway`" pulumi-lang-yaml="`gateway`" pulumi-lang-java="`gateway`">`gateway`</span>, or <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span>. The default value is <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span>.
  late final Output<String?> loadBalancerType;

  /// Minimum capacity for a load balancer. Only valid for Load Balancers of type <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span> or <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span>.
  late final Output<LoadBalancerMinimumLoadBalancerCapacity2?>
      minimumLoadBalancerCapacity;

  /// Name of the LB. This name must be unique within your AWS account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen. If not specified, this provider will autogenerate a name beginning with `tf-lb`.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Whether the Application Load Balancer should preserve the Host header in the HTTP request and send it to the target without any change. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> preserveHostHeader;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The number of secondary IP addresses to configure for your load balancer nodes. Only valid for Load Balancers of type <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span>. The valid range is 0-7. When decreased, this will force a recreation of the resource. Default: <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  late final Output<int> secondaryIpsAutoAssignedPerSubnet;

  /// List of security group IDs to assign to the LB. Only valid for Load Balancers of type <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span> or <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span>. For load balancers of type <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> security groups cannot be added if none are currently present, and cannot all be removed once added. If either of these conditions are met, this will force a recreation of the resource.
  late final Output<List<String>> securityGroups;

  /// Subnet mapping block. See below. For Load Balancers of type <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> subnet mappings can only be added.
  late final Output<List<LoadBalancerSubnetMapping2>> subnetMappings;

  /// List of subnet IDs to attach to the LB. For Load Balancers of type <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> subnets can only be added (see [Availability Zones](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#availability-zones)), deleting a subnet for load balancers of type <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> will force a recreation of the resource.
  late final Output<List<String>> subnets;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<String> vpcId;

  /// Determines how the load balancer modifies the `X-Forwarded-For` header in the HTTP request before sending the request to the target. The possible values are <span pulumi-lang-nodejs="`append`" pulumi-lang-dotnet="`Append`" pulumi-lang-go="`append`" pulumi-lang-python="`append`" pulumi-lang-yaml="`append`" pulumi-lang-java="`append`">`append`</span>, <span pulumi-lang-nodejs="`preserve`" pulumi-lang-dotnet="`Preserve`" pulumi-lang-go="`preserve`" pulumi-lang-python="`preserve`" pulumi-lang-yaml="`preserve`" pulumi-lang-java="`preserve`">`preserve`</span>, and <span pulumi-lang-nodejs="`remove`" pulumi-lang-dotnet="`Remove`" pulumi-lang-go="`remove`" pulumi-lang-python="`remove`" pulumi-lang-yaml="`remove`" pulumi-lang-java="`remove`">`remove`</span>. Only valid for Load Balancers of type <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span>. The default is <span pulumi-lang-nodejs="`append`" pulumi-lang-dotnet="`Append`" pulumi-lang-go="`append`" pulumi-lang-python="`append`" pulumi-lang-yaml="`append`" pulumi-lang-java="`append`">`append`</span>.
  ///
  /// > **NOTE:** Please note that internal LBs can only use <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span> as the <span pulumi-lang-nodejs="`ipAddressType`" pulumi-lang-dotnet="`IpAddressType`" pulumi-lang-go="`ipAddressType`" pulumi-lang-python="`ip_address_type`" pulumi-lang-yaml="`ipAddressType`" pulumi-lang-java="`ipAddressType`">`ip_address_type`</span>. You can only change to <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span> <span pulumi-lang-nodejs="`ipAddressType`" pulumi-lang-dotnet="`IpAddressType`" pulumi-lang-go="`ipAddressType`" pulumi-lang-python="`ip_address_type`" pulumi-lang-yaml="`ipAddressType`" pulumi-lang-java="`ipAddressType`">`ip_address_type`</span> if the selected subnets are IPv6 enabled.
  ///
  /// > **NOTE:** Please note that one of either <span pulumi-lang-nodejs="`subnets`" pulumi-lang-dotnet="`Subnets`" pulumi-lang-go="`subnets`" pulumi-lang-python="`subnets`" pulumi-lang-yaml="`subnets`" pulumi-lang-java="`subnets`">`subnets`</span> or <span pulumi-lang-nodejs="`subnetMapping`" pulumi-lang-dotnet="`SubnetMapping`" pulumi-lang-go="`subnetMapping`" pulumi-lang-python="`subnet_mapping`" pulumi-lang-yaml="`subnetMapping`" pulumi-lang-java="`subnetMapping`">`subnet_mapping`</span> is required.
  late final Output<String?> xffHeaderProcessingMode;

  /// Canonical hosted zone ID of the load balancer (to be used in a Route 53 Alias record).
  late final Output<String> zoneId;

  LoadBalancer3(
    String name, {
    LoadBalancerArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lb/loadBalancer:LoadBalancer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessLogs = registerOutput<LoadBalancerAccessLogs3?>('accessLogs');
    this.arn = registerOutput<String>('arn');
    this.arnSuffix = registerOutput<String>('arnSuffix');
    this.clientKeepAlive = registerOutput<int?>('clientKeepAlive');
    this.connectionLogs =
        registerOutput<LoadBalancerConnectionLogs2?>('connectionLogs');
    this.customerOwnedIpv4Pool =
        registerOutput<String?>('customerOwnedIpv4Pool');
    this.desyncMitigationMode = registerOutput<String?>('desyncMitigationMode');
    this.dnsName = registerOutput<String>('dnsName');
    this.dnsRecordClientRoutingPolicy =
        registerOutput<String?>('dnsRecordClientRoutingPolicy');
    this.dropInvalidHeaderFields =
        registerOutput<bool?>('dropInvalidHeaderFields');
    this.enableCrossZoneLoadBalancing =
        registerOutput<bool?>('enableCrossZoneLoadBalancing');
    this.enableDeletionProtection =
        registerOutput<bool?>('enableDeletionProtection');
    this.enableHttp2 = registerOutput<bool?>('enableHttp2');
    this.enableTlsVersionAndCipherSuiteHeaders =
        registerOutput<bool?>('enableTlsVersionAndCipherSuiteHeaders');
    this.enableWafFailOpen = registerOutput<bool?>('enableWafFailOpen');
    this.enableXffClientPort = registerOutput<bool?>('enableXffClientPort');
    this.enableZonalShift = registerOutput<bool?>('enableZonalShift');
    this.enforceSecurityGroupInboundRulesOnPrivateLinkTraffic =
        registerOutput<String>(
            'enforceSecurityGroupInboundRulesOnPrivateLinkTraffic');
    this.healthCheckLogs =
        registerOutput<LoadBalancerHealthCheckLogs2?>('healthCheckLogs');
    this.idleTimeout = registerOutput<int?>('idleTimeout');
    this.internal = registerOutput<bool>('internal');
    this.ipAddressType = registerOutput<String>('ipAddressType');
    this.ipamPools = registerOutput<LoadBalancerIpamPools2?>('ipamPools');
    this.loadBalancerType = registerOutput<String?>('loadBalancerType');
    this.minimumLoadBalancerCapacity =
        registerOutput<LoadBalancerMinimumLoadBalancerCapacity2?>(
            'minimumLoadBalancerCapacity');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.preserveHostHeader = registerOutput<bool?>('preserveHostHeader');
    this.region = registerOutput<String>('region');
    this.secondaryIpsAutoAssignedPerSubnet =
        registerOutput<int>('secondaryIpsAutoAssignedPerSubnet');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.subnetMappings =
        registerOutput<List<LoadBalancerSubnetMapping2>>('subnetMappings');
    this.subnets = registerOutput<List<String>>('subnets');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
    this.xffHeaderProcessingMode =
        registerOutput<String?>('xffHeaderProcessingMode');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
