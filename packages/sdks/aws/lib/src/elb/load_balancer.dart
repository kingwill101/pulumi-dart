import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_access_logs.dart';
import 'load_balancer_args.dart';
import 'load_balancer_health_check.dart';
import 'load_balancer_listener.dart';
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
///     accessLogs: {
///         bucket: "foo",
///         bucketPrefix: "bar",
///         interval: 60,
///     },
///     healthCheck: {
///         healthyThreshold: 2,
///         unhealthyThreshold: 2,
///         timeout: 3,
///         target: "HTTP:8000/",
///         interval: 30,
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
///     name: "foobar-elb",
///     availabilityZones: [
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
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
///     access_logs={
///         "bucket": "foo",
///         "bucket_prefix": "bar",
///         "interval": 60,
///     },
///     health_check={
///         "healthy_threshold": 2,
///         "unhealthy_threshold": 2,
///         "timeout": 3,
///         "target": "HTTP:8000/",
///         "interval": 30,
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
///     name="foobar-elb",
///     availability_zones=[
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
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
///         AccessLogs = new Aws.Elb.Inputs.LoadBalancerAccessLogsArgs
///         {
///             Bucket = "foo",
///             BucketPrefix = "bar",
///             Interval = 60,
///         },
///         HealthCheck = new Aws.Elb.Inputs.LoadBalancerHealthCheckArgs
///         {
///             HealthyThreshold = 2,
///             UnhealthyThreshold = 2,
///             Timeout = 3,
///             Target = "HTTP:8000/",
///             Interval = 30,
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
///         Name = "foobar-elb",
///         AvailabilityZones = new[]
///         {
///             "us-west-2a",
///             "us-west-2b",
///             "us-west-2c",
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
/// 			AccessLogs: &elb.LoadBalancerAccessLogsArgs{
/// 				Bucket:       pulumi.String("foo"),
/// 				BucketPrefix: pulumi.String("bar"),
/// 				Interval:     pulumi.Int(60),
/// 			},
/// 			HealthCheck: &elb.LoadBalancerHealthCheckArgs{
/// 				HealthyThreshold:   pulumi.Int(2),
/// 				UnhealthyThreshold: pulumi.Int(2),
/// 				Timeout:            pulumi.Int(3),
/// 				Target:             pulumi.String("HTTP:8000/"),
/// 				Interval:           pulumi.Int(30),
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
/// 			Name: pulumi.String("foobar-elb"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-west-2a"),
/// 				pulumi.String("us-west-2b"),
/// 				pulumi.String("us-west-2c"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// # Create a new load balancer
/// resource "aws_elb_loadbalancer" "bar" {
///   access_logs = {
///     bucket        = "foo"
///     bucket_prefix = "bar"
///     interval      = 60
///   }
///   health_check = {
///     healthy_threshold   = 2
///     unhealthy_threshold = 2
///     timeout             = 3
///     target              = "HTTP:8000/"
///     interval            = 30
///   }
///   listeners {
///     instance_port     = 8000
///     instance_protocol = "http"
///     lb_port           = 80
///     lb_protocol       = "http"
///   }
///   listeners {
///     instance_port      = 8000
///     instance_protocol  = "http"
///     lb_port            = 443
///     lb_protocol        = "https"
///     ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"
///   }
///   name                        = "foobar-elb"
///   availability_zones          = ["us-west-2a", "us-west-2b", "us-west-2c"]
///   instances                   = [foo.id]
///   cross_zone_load_balancing   = true
///   idle_timeout                = 400
///   connection_draining         = true
///   connection_draining_timeout = 400
///   tags = {
///     "Name" = "foobar-elb"
///   }
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
/// import com.pulumi.aws.elb.inputs.LoadBalancerHealthCheckArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerListenerArgs;
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
///         // Create a new load balancer
///         var bar = new LoadBalancer("bar", LoadBalancerArgs.builder()
///             .accessLogs(LoadBalancerAccessLogsArgs.builder()
///                 .bucket("foo")
///                 .bucketPrefix("bar")
///                 .interval(60)
///                 .build())
///             .healthCheck(LoadBalancerHealthCheckArgs.builder()
///                 .healthyThreshold(2)
///                 .unhealthyThreshold(2)
///                 .timeout(3)
///                 .target("HTTP:8000/")
///                 .interval(30)
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
///             .name("foobar-elb")
///             .availabilityZones(
///                 "us-west-2a",
///                 "us-west-2b",
///                 "us-west-2c")
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
///       accessLogs:
///         bucket: foo
///         bucketPrefix: bar
///         interval: 60
///       healthCheck:
///         healthyThreshold: 2
///         unhealthyThreshold: 2
///         timeout: 3
///         target: HTTP:8000/
///         interval: 30
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
///       name: foobar-elb
///       availabilityZones:
///         - us-west-2a
///         - us-west-2b
///         - us-west-2c
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
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the ELB.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ELBs using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:elb/loadBalancer:LoadBalancer example elb-production-12345
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
  /// A healthCheck block. Health Check documented below.
  late final pulumi.Output<LoadBalancerHealthCheck> healthCheck;
  /// The time in seconds that the connection is allowed to be idle. Default: `60`
  late final pulumi.Output<int?> idleTimeout;
  /// A list of instance ids to place in the ELB pool.
  late final pulumi.Output<List<String>> instances;
  /// If true, ELB will be an internal ELB.
  late final pulumi.Output<bool> internal;
  /// A list of listener blocks. Listeners documented below.
  late final pulumi.Output<List<LoadBalancerListener>> listeners;
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
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// Exactly one of `availabilityZones` or `subnets` must be specified: this
  /// determines if the ELB exists in a VPC or in EC2-classic.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accessLogs = registerOutput<LoadBalancerAccessLogs?>('accessLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerAccessLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>>('availabilityZones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectionDraining = registerOutput<bool?>('connectionDraining');
    connectionDrainingTimeout = registerOutput<int?>('connectionDrainingTimeout');
    crossZoneLoadBalancing = registerOutput<bool?>('crossZoneLoadBalancing');
    desyncMitigationMode = registerOutput<String?>('desyncMitigationMode');
    dnsName = registerOutput<String>('dnsName');
    healthCheck = registerOutput<LoadBalancerHealthCheck>('healthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    idleTimeout = registerOutput<int?>('idleTimeout');
    instances = registerOutput<List<String>>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    internal = registerOutput<bool>('internal');
    listeners = registerOutput<List<LoadBalancerListener>>('listeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerListener>(guardedValue, (value) => LoadBalancerListener.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    securityGroups = registerOutput<List<String>>('securityGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sourceSecurityGroup = registerOutput<String>('sourceSecurityGroup');
    sourceSecurityGroupId = registerOutput<String>('sourceSecurityGroupId');
    subnets = registerOutput<List<String>>('subnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [LoadBalancer] resource's state with the given [name] and [id].
  static LoadBalancer get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LoadBalancer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    accessLogs = registerOutput<LoadBalancerAccessLogs?>('accessLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerAccessLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>>('availabilityZones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectionDraining = registerOutput<bool?>('connectionDraining');
    connectionDrainingTimeout = registerOutput<int?>('connectionDrainingTimeout');
    crossZoneLoadBalancing = registerOutput<bool?>('crossZoneLoadBalancing');
    desyncMitigationMode = registerOutput<String?>('desyncMitigationMode');
    dnsName = registerOutput<String>('dnsName');
    healthCheck = registerOutput<LoadBalancerHealthCheck>('healthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    idleTimeout = registerOutput<int?>('idleTimeout');
    instances = registerOutput<List<String>>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    internal = registerOutput<bool>('internal');
    listeners = registerOutput<List<LoadBalancerListener>>('listeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerListener>(guardedValue, (value) => LoadBalancerListener.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    securityGroups = registerOutput<List<String>>('securityGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sourceSecurityGroup = registerOutput<String>('sourceSecurityGroup');
    sourceSecurityGroupId = registerOutput<String>('sourceSecurityGroupId');
    subnets = registerOutput<List<String>>('subnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [LoadBalancer] resource.
  LoadBalancer.reference(String urn)
    : super(
        'aws:elb/loadBalancer:LoadBalancer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessLogs = registerOutput<LoadBalancerAccessLogs?>('accessLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerAccessLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>>('availabilityZones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectionDraining = registerOutput<bool?>('connectionDraining');
    connectionDrainingTimeout = registerOutput<int?>('connectionDrainingTimeout');
    crossZoneLoadBalancing = registerOutput<bool?>('crossZoneLoadBalancing');
    desyncMitigationMode = registerOutput<String?>('desyncMitigationMode');
    dnsName = registerOutput<String>('dnsName');
    healthCheck = registerOutput<LoadBalancerHealthCheck>('healthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    idleTimeout = registerOutput<int?>('idleTimeout');
    instances = registerOutput<List<String>>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    internal = registerOutput<bool>('internal');
    listeners = registerOutput<List<LoadBalancerListener>>('listeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerListener>(guardedValue, (value) => LoadBalancerListener.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    securityGroups = registerOutput<List<String>>('securityGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sourceSecurityGroup = registerOutput<String>('sourceSecurityGroup');
    sourceSecurityGroupId = registerOutput<String>('sourceSecurityGroupId');
    subnets = registerOutput<List<String>>('subnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    zoneId = registerOutput<String>('zoneId');
  }
}
