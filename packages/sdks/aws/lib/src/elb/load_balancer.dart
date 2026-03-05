import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_access_logs.dart';
import 'load_balancer_args.dart';
import 'load_balancer_health_check.dart';
import 'load_balancer_state.dart';

/// Provides an Elastic Load Balancer resource, also known as a "Classic
/// Load Balancer" after the release of
/// Application/Network Load Balancers.
///
/// &gt; **NOTE on ELB Instances and ELB Attachments:** This provider currently
/// provides both a standalone ELB Attachment resource
/// (describing an instance attached to an ELB), and an ELB resource with
/// `instances` defined in-line. At this time you cannot use an ELB with in-line
/// instances in conjunction with a ELB Attachment resources. Doing so will cause a
/// conflict and will overwrite attachments.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a new load balancer
/// const bar = new aws.elb.LoadBalancer("bar", {
///     name: "foobar-elb",
///     availabilityZones: [
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     accessLogs: {
///         bucket: "foo",
///         bucketPrefix: "bar",
///         interval: 60,
///     },
///     listeners: [
///         {
///             instancePort: 8000,
///             instanceProtocol: "http",
///             lbPort: 80,
///             lbProtocol: "http",
///         },
///         {
///             instancePort: 8000,
///             instanceProtocol: "http",
///             lbPort: 443,
///             lbProtocol: "https",
///             sslCertificateId: "arn:aws:iam::123456789012:server-certificate/certName",
///         },
///     ],
///     healthCheck: {
///         healthyThreshold: 2,
///         unhealthyThreshold: 2,
///         timeout: 3,
///         target: "HTTP:8000/",
///         interval: 30,
///     },
///     instances: [foo.id],
///     crossZoneLoadBalancing: true,
///     idleTimeout: 400,
///     connectionDraining: true,
///     connectionDrainingTimeout: 400,
///     tags: {
///         Name: "foobar-elb",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create a new load balancer
/// bar = aws.elb.LoadBalancer("bar",
///     name="foobar-elb",
///     availability_zones=[
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     access_logs={
///         "bucket": "foo",
///         "bucket_prefix": "bar",
///         "interval": 60,
///     },
///     listeners=[
///         {
///             "instance_port": 8000,
///             "instance_protocol": "http",
///             "lb_port": 80,
///             "lb_protocol": "http",
///         },
///         {
///             "instance_port": 8000,
///             "instance_protocol": "http",
///             "lb_port": 443,
///             "lb_protocol": "https",
///             "ssl_certificate_id": "arn:aws:iam::123456789012:server-certificate/certName",
///         },
///     ],
///     health_check={
///         "healthy_threshold": 2,
///         "unhealthy_threshold": 2,
///         "timeout": 3,
///         "target": "HTTP:8000/",
///         "interval": 30,
///     },
///     instances=[foo["id"]],
///     cross_zone_load_balancing=True,
///     idle_timeout=400,
///     connection_draining=True,
///     connection_draining_timeout=400,
///     tags={
///         "Name": "foobar-elb",
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
///     // Create a new load balancer
///     var bar = new Aws.Elb.LoadBalancer("bar", new()
///     {
///         Name = "foobar-elb",
///         AvailabilityZones = new[]
///         {
///             "us-west-2a",
///             "us-west-2b",
///             "us-west-2c",
///         },
///         AccessLogs = new Aws.Elb.Inputs.LoadBalancerAccessLogsArgs
///         {
///             Bucket = "foo",
///             BucketPrefix = "bar",
///             Interval = 60,
///         },
///         Listeners = new[]
///         {
///             new Aws.Elb.Inputs.LoadBalancerListenerArgs
///             {
///                 InstancePort = 8000,
///                 InstanceProtocol = "http",
///                 LbPort = 80,
///                 LbProtocol = "http",
///             },
///             new Aws.Elb.Inputs.LoadBalancerListenerArgs
///             {
///                 InstancePort = 8000,
///                 InstanceProtocol = "http",
///                 LbPort = 443,
///                 LbProtocol = "https",
///                 SslCertificateId = "arn:aws:iam::123456789012:server-certificate/certName",
///             },
///         },
///         HealthCheck = new Aws.Elb.Inputs.LoadBalancerHealthCheckArgs
///         {
///             HealthyThreshold = 2,
///             UnhealthyThreshold = 2,
///             Timeout = 3,
///             Target = "HTTP:8000/",
///             Interval = 30,
///         },
///         Instances = new[]
///         {
///             foo.Id,
///         },
///         CrossZoneLoadBalancing = true,
///         IdleTimeout = 400,
///         ConnectionDraining = true,
///         ConnectionDrainingTimeout = 400,
///         Tags =
///         {
///             { "Name", "foobar-elb" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new load balancer
/// 		_, err := elb.NewLoadBalancer(ctx, "bar", &elb.LoadBalancerArgs{
/// 			Name: pulumi.String("foobar-elb"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-west-2a"),
/// 				pulumi.String("us-west-2b"),
/// 				pulumi.String("us-west-2c"),
/// 			},
/// 			AccessLogs: &elb.LoadBalancerAccessLogsArgs{
/// 				Bucket:       pulumi.String("foo"),
/// 				BucketPrefix: pulumi.String("bar"),
/// 				Interval:     pulumi.Int(60),
/// 			},
/// 			Listeners: elb.LoadBalancerListenerArray{
/// 				&elb.LoadBalancerListenerArgs{
/// 					InstancePort:     pulumi.Int(8000),
/// 					InstanceProtocol: pulumi.String("http"),
/// 					LbPort:           pulumi.Int(80),
/// 					LbProtocol:       pulumi.String("http"),
/// 				},
/// 				&elb.LoadBalancerListenerArgs{
/// 					InstancePort:     pulumi.Int(8000),
/// 					InstanceProtocol: pulumi.String("http"),
/// 					LbPort:           pulumi.Int(443),
/// 					LbProtocol:       pulumi.String("https"),
/// 					SslCertificateId: pulumi.String("arn:aws:iam::123456789012:server-certificate/certName"),
/// 				},
/// 			},
/// 			HealthCheck: &elb.LoadBalancerHealthCheckArgs{
/// 				HealthyThreshold:   pulumi.Int(2),
/// 				UnhealthyThreshold: pulumi.Int(2),
/// 				Timeout:            pulumi.Int(3),
/// 				Target:             pulumi.String("HTTP:8000/"),
/// 				Interval:           pulumi.Int(30),
/// 			},
/// 			Instances: pulumi.StringArray{
/// 				foo.Id,
/// 			},
/// 			CrossZoneLoadBalancing:    pulumi.Bool(true),
/// 			IdleTimeout:               pulumi.Int(400),
/// 			ConnectionDraining:        pulumi.Bool(true),
/// 			ConnectionDrainingTimeout: pulumi.Int(400),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("foobar-elb"),
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
/// import com.pulumi.aws.elb.LoadBalancer;
/// import com.pulumi.aws.elb.LoadBalancerArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerAccessLogsArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerListenerArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerHealthCheckArgs;
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
///         // Create a new load balancer
///         var bar = new LoadBalancer("bar", LoadBalancerArgs.builder()
///             .name("foobar-elb")
///             .availabilityZones(
///                 "us-west-2a",
///                 "us-west-2b",
///                 "us-west-2c")
///             .accessLogs(LoadBalancerAccessLogsArgs.builder()
///                 .bucket("foo")
///                 .bucketPrefix("bar")
///                 .interval(60)
///                 .build())
///             .listeners(
///                 LoadBalancerListenerArgs.builder()
///                     .instancePort(8000)
///                     .instanceProtocol("http")
///                     .lbPort(80)
///                     .lbProtocol("http")
///                     .build(),
///                 LoadBalancerListenerArgs.builder()
///                     .instancePort(8000)
///                     .instanceProtocol("http")
///                     .lbPort(443)
///                     .lbProtocol("https")
///                     .sslCertificateId("arn:aws:iam::123456789012:server-certificate/certName")
///                     .build())
///             .healthCheck(LoadBalancerHealthCheckArgs.builder()
///                 .healthyThreshold(2)
///                 .unhealthyThreshold(2)
///                 .timeout(3)
///                 .target("HTTP:8000/")
///                 .interval(30)
///                 .build())
///             .instances(foo.id())
///             .crossZoneLoadBalancing(true)
///             .idleTimeout(400)
///             .connectionDraining(true)
///             .connectionDrainingTimeout(400)
///             .tags(Map.of("Name", "foobar-elb"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new load balancer
///   bar:
///     type: aws:elb:LoadBalancer
///     properties:
///       name: foobar-elb
///       availabilityZones:
///         - us-west-2a
///         - us-west-2b
///         - us-west-2c
///       accessLogs:
///         bucket: foo
///         bucketPrefix: bar
///         interval: 60
///       listeners:
///         - instancePort: 8000
///           instanceProtocol: http
///           lbPort: 80
///           lbProtocol: http
///         - instancePort: 8000
///           instanceProtocol: http
///           lbPort: 443
///           lbProtocol: https
///           sslCertificateId: arn:aws:iam::123456789012:server-certificate/certName
///       healthCheck:
///         healthyThreshold: 2
///         unhealthyThreshold: 2
///         timeout: 3
///         target: HTTP:8000/
///         interval: 30
///       instances:
///         - ${foo.id}
///       crossZoneLoadBalancing: true
///       idleTimeout: 400
///       connectionDraining: true
///       connectionDrainingTimeout: 400
///       tags:
///         Name: foobar-elb
/// ```
///
///
/// ## Note on ECDSA Key Algorithm
///
/// If the ARN of the `ssl_certificate_id` that is pointed to references a
/// certificate that was signed by an ECDSA key, note that ELB only supports the
/// P256 and P384 curves.  Using a certificate signed by a key using a different
/// curve could produce the error `ERR_SSL_VERSION_OR_CIPHER_MISMATCH` in your
/// browser.
///
/// ## Import
///
/// Using `pulumi import`, import ELBs using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:elb/loadBalancer:LoadBalancer bar elb-production-12345
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// An Access Logs block. Access Logs documented below.
  late final pulumi.Output<LoadBalancerAccessLogs?> accessLogs;

  /// The ARN of the ELB
  late final pulumi.Output<String> arn;

  /// The AZ's to serve traffic in.
  late final pulumi.Output<List<String>> availabilityZones;

  /// Boolean to enable connection draining. Default: `false`
  late final pulumi.Output<bool?> connectionDraining;

  /// The time in seconds to allow for connections to drain. Default: `300`
  late final pulumi.Output<int?> connectionDrainingTimeout;

  /// Enable cross-zone load balancing. Default: `true`
  late final pulumi.Output<bool?> crossZoneLoadBalancing;

  /// Determines how the load balancer handles requests that might pose a security risk to an application due to HTTP desync. Valid values are `monitor`, `defensive` (default), `strictest`.
  late final pulumi.Output<String?> desyncMitigationMode;

  /// The DNS name of the ELB
  late final pulumi.Output<String> dnsName;

  /// A health_check block. Health Check documented below.
  late final pulumi.Output<LoadBalancerHealthCheck> healthCheck;

  /// The time in seconds that the connection is allowed to be idle. Default: `60`
  late final pulumi.Output<int?> idleTimeout;

  /// A list of instance ids to place in the ELB pool.
  late final pulumi.Output<List<String>> instances;

  /// If true, ELB will be an internal ELB.
  late final pulumi.Output<bool> internal;

  /// A list of listener blocks. Listeners documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> listeners;

  /// The name of the ELB. By default generated by this provider.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A list of security group IDs to assign to the ELB.
  /// Only valid if creating an ELB within a VPC
  late final pulumi.Output<List<String>> securityGroups;

  /// The name of the security group that you can use as
  /// part of your inbound rules for your load balancer's back-end application
  /// instances. Use this for Classic or Default VPC only.
  late final pulumi.Output<String> sourceSecurityGroup;

  /// The ID of the security group that you can use as
  /// part of your inbound rules for your load balancer's back-end application
  /// instances. Only available on ELBs launched in a VPC.
  late final pulumi.Output<String> sourceSecurityGroupId;

  /// A list of subnet IDs to attach to the ELB. When an update to subnets will remove all current subnets, this will force a new resource.
  late final pulumi.Output<List<String>> subnets;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// Exactly one of `availability_zones` or `subnets` must be specified: this
  /// determines if the ELB exists in a VPC or in EC2-classic.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record)
  late final pulumi.Output<String> zoneId;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_elb_load_balancer_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:elb/loadBalancer:LoadBalancer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessLogs = registerOutput<LoadBalancerAccessLogs?>(
      'accessLogs',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerAccessLogs.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>>('availabilityZones');
    connectionDraining = registerOutput<bool?>('connectionDraining');
    connectionDrainingTimeout = registerOutput<int?>(
      'connectionDrainingTimeout',
    );
    crossZoneLoadBalancing = registerOutput<bool?>('crossZoneLoadBalancing');
    desyncMitigationMode = registerOutput<String?>('desyncMitigationMode');
    dnsName = registerOutput<String>('dnsName');
    healthCheck = registerOutput<LoadBalancerHealthCheck>(
      'healthCheck',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerHealthCheck.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    idleTimeout = registerOutput<int?>('idleTimeout');
    instances = registerOutput<List<String>>('instances');
    internal = registerOutput<bool>('internal');
    listeners = registerOutput<List<Map<String, dynamic>>>('listeners');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    securityGroups = registerOutput<List<String>>('securityGroups');
    sourceSecurityGroup = registerOutput<String>('sourceSecurityGroup');
    sourceSecurityGroupId = registerOutput<String>('sourceSecurityGroupId');
    subnets = registerOutput<List<String>>('subnets');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
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
         'aws:elb/loadBalancer:LoadBalancer',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessLogs = registerOutput<LoadBalancerAccessLogs?>(
      'accessLogs',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerAccessLogs.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>>('availabilityZones');
    connectionDraining = registerOutput<bool?>('connectionDraining');
    connectionDrainingTimeout = registerOutput<int?>(
      'connectionDrainingTimeout',
    );
    crossZoneLoadBalancing = registerOutput<bool?>('crossZoneLoadBalancing');
    desyncMitigationMode = registerOutput<String?>('desyncMitigationMode');
    dnsName = registerOutput<String>('dnsName');
    healthCheck = registerOutput<LoadBalancerHealthCheck>(
      'healthCheck',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerHealthCheck.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    idleTimeout = registerOutput<int?>('idleTimeout');
    instances = registerOutput<List<String>>('instances');
    internal = registerOutput<bool>('internal');
    listeners = registerOutput<List<Map<String, dynamic>>>('listeners');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    securityGroups = registerOutput<List<String>>('securityGroups');
    sourceSecurityGroup = registerOutput<String>('sourceSecurityGroup');
    sourceSecurityGroupId = registerOutput<String>('sourceSecurityGroupId');
    subnets = registerOutput<List<String>>('subnets');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    zoneId = registerOutput<String>('zoneId');
  }
}
