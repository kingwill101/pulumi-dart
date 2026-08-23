import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_dns_config.dart';
import 'service_health_check_config.dart';
import 'service_health_check_custom_config.dart';
import 'service_state.dart';

/// Provides a Service Discovery Service resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {
///     cidrBlock: "10.0.0.0/16",
///     enableDnsSupport: true,
///     enableDnsHostnames: true,
/// });
/// const examplePrivateDnsNamespace = new aws.servicediscovery.PrivateDnsNamespace("example", {
///     name: "example.mydomain.local",
///     description: "example",
///     vpc: example.id,
/// });
/// const exampleService = new aws.servicediscovery.Service("example", {
///     name: "example",
///     dnsConfig: {
///         namespaceId: examplePrivateDnsNamespace.id,
///         dnsRecords: [{
///             ttl: 10,
///             type: "A",
///         }],
///         routingPolicy: "MULTIVALUE",
///     },
///     healthCheckConfig: {
///         failureThreshold: 1,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example",
///     cidr_block="10.0.0.0/16",
///     enable_dns_support=True,
///     enable_dns_hostnames=True)
/// example_private_dns_namespace = aws.servicediscovery.PrivateDnsNamespace("example",
///     name="example.mydomain.local",
///     description="example",
///     vpc=example.id)
/// example_service = aws.servicediscovery.Service("example",
///     name="example",
///     dns_config={
///         "namespace_id": example_private_dns_namespace.id,
///         "dns_records": [{
///             "ttl": 10,
///             "type": "A",
///         }],
///         "routing_policy": "MULTIVALUE",
///     },
///     health_check_config={
///         "failure_threshold": 1,
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
///     var example = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///         EnableDnsSupport = true,
///         EnableDnsHostnames = true,
///     });
///
///     var examplePrivateDnsNamespace = new Aws.ServiceDiscovery.PrivateDnsNamespace("example", new()
///     {
///         Name = "example.mydomain.local",
///         Description = "example",
///         Vpc = example.Id,
///     });
///
///     var exampleService = new Aws.ServiceDiscovery.Service("example", new()
///     {
///         Name = "example",
///         DnsConfig = new Aws.ServiceDiscovery.Inputs.ServiceDnsConfigArgs
///         {
///             NamespaceId = examplePrivateDnsNamespace.Id,
///             DnsRecords = new[]
///             {
///                 new Aws.ServiceDiscovery.Inputs.ServiceDnsConfigDnsRecordArgs
///                 {
///                     Ttl = 10,
///                     Type = "A",
///                 },
///             },
///             RoutingPolicy = "MULTIVALUE",
///         },
///         HealthCheckConfig = new Aws.ServiceDiscovery.Inputs.ServiceHealthCheckConfigArgs
///         {
///             FailureThreshold = 1,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicediscovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock:          pulumi.String("10.0.0.0/16"),
/// 			EnableDnsSupport:   pulumi.Bool(true),
/// 			EnableDnsHostnames: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePrivateDnsNamespace, err := servicediscovery.NewPrivateDnsNamespace(ctx, "example", &servicediscovery.PrivateDnsNamespaceArgs{
/// 			Name:        pulumi.String("example.mydomain.local"),
/// 			Description: pulumi.String("example"),
/// 			Vpc:         example.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicediscovery.NewService(ctx, "example", &servicediscovery.ServiceArgs{
/// 			Name: pulumi.String("example"),
/// 			DnsConfig: &servicediscovery.ServiceDnsConfigArgs{
/// 				NamespaceId: examplePrivateDnsNamespace.ID().ToIDOutput().ToStringOutput(),
/// 				DnsRecords: servicediscovery.ServiceDnsConfigDnsRecordArray{
/// 					&servicediscovery.ServiceDnsConfigDnsRecordArgs{
/// 						Ttl:  pulumi.Int(10),
/// 						Type: pulumi.String("A"),
/// 					},
/// 				},
/// 				RoutingPolicy: pulumi.String("MULTIVALUE"),
/// 			},
/// 			HealthCheckConfig: &servicediscovery.ServiceHealthCheckConfigArgs{
/// 				FailureThreshold: pulumi.Int(1),
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
/// resource "aws_ec2_vpc" "example" {
///   cidr_block           = "10.0.0.0/16"
///   enable_dns_support   = true
///   enable_dns_hostnames = true
/// }
/// resource "aws_servicediscovery_privatednsnamespace" "example" {
///   name        = "example.mydomain.local"
///   description = "example"
///   vpc         = aws_ec2_vpc.example.id
/// }
/// resource "aws_servicediscovery_service" "example" {
///   name = "example"
///   dns_config = {
///     namespace_id = aws_servicediscovery_privatednsnamespace.example.id
///     dns_records = [{
///       "ttl"  = 10
///       "type" = "A"
///     }]
///     routing_policy = "MULTIVALUE"
///   }
///   health_check_config = {
///     failure_threshold = 1
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.servicediscovery.PrivateDnsNamespace;
/// import com.pulumi.aws.servicediscovery.PrivateDnsNamespaceArgs;
/// import com.pulumi.aws.servicediscovery.Service;
/// import com.pulumi.aws.servicediscovery.ServiceArgs;
/// import com.pulumi.aws.servicediscovery.inputs.ServiceDnsConfigArgs;
/// import com.pulumi.aws.servicediscovery.inputs.ServiceDnsConfigDnsRecordArgs;
/// import com.pulumi.aws.servicediscovery.inputs.ServiceHealthCheckConfigArgs;
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
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .enableDnsSupport(true)
///             .enableDnsHostnames(true)
///             .build());
///
///         var examplePrivateDnsNamespace = new PrivateDnsNamespace("examplePrivateDnsNamespace", PrivateDnsNamespaceArgs.builder()
///             .name("example.mydomain.local")
///             .description("example")
///             .vpc(example.id())
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example")
///             .dnsConfig(ServiceDnsConfigArgs.builder()
///                 .namespaceId(examplePrivateDnsNamespace.id())
///                 .dnsRecords(ServiceDnsConfigDnsRecordArgs.builder()
///                     .ttl(10)
///                     .type("A")
///                     .build())
///                 .routingPolicy("MULTIVALUE")
///                 .build())
///             .healthCheckConfig(ServiceHealthCheckConfigArgs.builder()
///                 .failureThreshold(1)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///       enableDnsSupport: true
///       enableDnsHostnames: true
///   examplePrivateDnsNamespace:
///     type: aws:servicediscovery:PrivateDnsNamespace
///     name: example
///     properties:
///       name: example.mydomain.local
///       description: example
///       vpc: ${example.id}
///   exampleService:
///     type: aws:servicediscovery:Service
///     name: example
///     properties:
///       name: example
///       dnsConfig:
///         namespaceId: ${examplePrivateDnsNamespace.id}
///         dnsRecords:
///           - ttl: 10
///             type: A
///         routingPolicy: MULTIVALUE
///       healthCheckConfig:
///         failureThreshold: 1
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicediscovery.PublicDnsNamespace("example", {
///     name: "example.mydomain.com",
///     description: "example",
/// });
/// const exampleService = new aws.servicediscovery.Service("example", {
///     name: "example",
///     dnsConfig: {
///         namespaceId: example.id,
///         dnsRecords: [{
///             ttl: 10,
///             type: "A",
///         }],
///     },
///     healthCheckConfig: {
///         failureThreshold: 10,
///         resourcePath: "path",
///         type: "HTTP",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicediscovery.PublicDnsNamespace("example",
///     name="example.mydomain.com",
///     description="example")
/// example_service = aws.servicediscovery.Service("example",
///     name="example",
///     dns_config={
///         "namespace_id": example.id,
///         "dns_records": [{
///             "ttl": 10,
///             "type": "A",
///         }],
///     },
///     health_check_config={
///         "failure_threshold": 10,
///         "resource_path": "path",
///         "type": "HTTP",
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
///     var example = new Aws.ServiceDiscovery.PublicDnsNamespace("example", new()
///     {
///         Name = "example.mydomain.com",
///         Description = "example",
///     });
///
///     var exampleService = new Aws.ServiceDiscovery.Service("example", new()
///     {
///         Name = "example",
///         DnsConfig = new Aws.ServiceDiscovery.Inputs.ServiceDnsConfigArgs
///         {
///             NamespaceId = example.Id,
///             DnsRecords = new[]
///             {
///                 new Aws.ServiceDiscovery.Inputs.ServiceDnsConfigDnsRecordArgs
///                 {
///                     Ttl = 10,
///                     Type = "A",
///                 },
///             },
///         },
///         HealthCheckConfig = new Aws.ServiceDiscovery.Inputs.ServiceHealthCheckConfigArgs
///         {
///             FailureThreshold = 10,
///             ResourcePath = "path",
///             Type = "HTTP",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicediscovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := servicediscovery.NewPublicDnsNamespace(ctx, "example", &servicediscovery.PublicDnsNamespaceArgs{
/// 			Name:        pulumi.String("example.mydomain.com"),
/// 			Description: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicediscovery.NewService(ctx, "example", &servicediscovery.ServiceArgs{
/// 			Name: pulumi.String("example"),
/// 			DnsConfig: &servicediscovery.ServiceDnsConfigArgs{
/// 				NamespaceId: example.ID().ToIDOutput().ToStringOutput(),
/// 				DnsRecords: servicediscovery.ServiceDnsConfigDnsRecordArray{
/// 					&servicediscovery.ServiceDnsConfigDnsRecordArgs{
/// 						Ttl:  pulumi.Int(10),
/// 						Type: pulumi.String("A"),
/// 					},
/// 				},
/// 			},
/// 			HealthCheckConfig: &servicediscovery.ServiceHealthCheckConfigArgs{
/// 				FailureThreshold: pulumi.Int(10),
/// 				ResourcePath:     pulumi.String("path"),
/// 				Type:             pulumi.String("HTTP"),
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
/// resource "aws_servicediscovery_publicdnsnamespace" "example" {
///   name        = "example.mydomain.com"
///   description = "example"
/// }
/// resource "aws_servicediscovery_service" "example" {
///   name = "example"
///   dns_config = {
///     namespace_id = aws_servicediscovery_publicdnsnamespace.example.id
///     dns_records = [{
///       "ttl"  = 10
///       "type" = "A"
///     }]
///   }
///   health_check_config = {
///     failure_threshold = 10
///     resource_path     = "path"
///     type              = "HTTP"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicediscovery.PublicDnsNamespace;
/// import com.pulumi.aws.servicediscovery.PublicDnsNamespaceArgs;
/// import com.pulumi.aws.servicediscovery.Service;
/// import com.pulumi.aws.servicediscovery.ServiceArgs;
/// import com.pulumi.aws.servicediscovery.inputs.ServiceDnsConfigArgs;
/// import com.pulumi.aws.servicediscovery.inputs.ServiceDnsConfigDnsRecordArgs;
/// import com.pulumi.aws.servicediscovery.inputs.ServiceHealthCheckConfigArgs;
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
///         var example = new PublicDnsNamespace("example", PublicDnsNamespaceArgs.builder()
///             .name("example.mydomain.com")
///             .description("example")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example")
///             .dnsConfig(ServiceDnsConfigArgs.builder()
///                 .namespaceId(example.id())
///                 .dnsRecords(ServiceDnsConfigDnsRecordArgs.builder()
///                     .ttl(10)
///                     .type("A")
///                     .build())
///                 .build())
///             .healthCheckConfig(ServiceHealthCheckConfigArgs.builder()
///                 .failureThreshold(10)
///                 .resourcePath("path")
///                 .type("HTTP")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicediscovery:PublicDnsNamespace
///     properties:
///       name: example.mydomain.com
///       description: example
///   exampleService:
///     type: aws:servicediscovery:Service
///     name: example
///     properties:
///       name: example
///       dnsConfig:
///         namespaceId: ${example.id}
///         dnsRecords:
///           - ttl: 10
///             type: A
///       healthCheckConfig:
///         failureThreshold: 10
///         resourcePath: path
///         type: HTTP
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Discovery Service using the service ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicediscovery/service:Service example 0123456789
/// ```
class Service extends pulumi.CustomResource {
  /// The ARN of the service.
  late final pulumi.Output<String> arn;
  /// The description of the service.
  late final pulumi.Output<String?> description;
  /// A complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance. See `dnsConfig` Block for details.
  late final pulumi.Output<ServiceDnsConfig?> dnsConfig;
  /// A boolean that indicates all instances should be deleted from the service so that the service can be destroyed without error. These instances are not recoverable. Defaults to `false`.
  late final pulumi.Output<bool?> forceDestroy;
  /// A complex type that contains settings for an optional health check. Only for Public DNS namespaces. See `healthCheckConfig` Block for details.
  late final pulumi.Output<ServiceHealthCheckConfig?> healthCheckConfig;
  /// Please use `healthCheckConfig` instead. See `healthCheckCustomConfig` Block for details.
  late final pulumi.Output<ServiceHealthCheckCustomConfig?> healthCheckCustomConfig;
  /// The name of the service.
  late final pulumi.Output<String> name;
  /// The ID of the namespace that you want to use to create the service.
  late final pulumi.Output<String> namespaceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the service. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// If present, specifies that the service instances are only discoverable using the `DiscoverInstances` API operation. No DNS records is registered for the service instances. The only valid value is `HTTP`.
  late final pulumi.Output<String> type;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_servicediscovery_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicediscovery/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    dnsConfig = registerOutput<ServiceDnsConfig?>('dnsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceDnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceDestroy = registerOutput<bool?>('forceDestroy');
    healthCheckConfig = registerOutput<ServiceHealthCheckConfig?>('healthCheckConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceHealthCheckConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthCheckCustomConfig = registerOutput<ServiceHealthCheckCustomConfig?>('healthCheckCustomConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceHealthCheckCustomConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicediscovery/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    dnsConfig = registerOutput<ServiceDnsConfig?>('dnsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceDnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceDestroy = registerOutput<bool?>('forceDestroy');
    healthCheckConfig = registerOutput<ServiceHealthCheckConfig?>('healthCheckConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceHealthCheckConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthCheckCustomConfig = registerOutput<ServiceHealthCheckCustomConfig?>('healthCheckCustomConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceHealthCheckCustomConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
  }
}
