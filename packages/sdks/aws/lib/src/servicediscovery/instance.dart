import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Provides a Service Discovery Instance resource.
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
///     name: "example.domain.local",
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
///     healthCheckCustomConfig: {
///         failureThreshold: 1,
///     },
/// });
/// const exampleInstance = new aws.servicediscovery.Instance("example", {
///     instanceId: "example-instance-id",
///     serviceId: exampleService.id,
///     attributes: {
///         AWS_INSTANCE_IPV4: "172.18.0.1",
///         custom_attribute: "custom",
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
///     name="example.domain.local",
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
///     health_check_custom_config={
///         "failure_threshold": 1,
///     })
/// example_instance = aws.servicediscovery.Instance("example",
///     instance_id="example-instance-id",
///     service_id=example_service.id,
///     attributes={
///         "AWS_INSTANCE_IPV4": "172.18.0.1",
///         "custom_attribute": "custom",
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
///         Name = "example.domain.local",
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
///         HealthCheckCustomConfig = new Aws.ServiceDiscovery.Inputs.ServiceHealthCheckCustomConfigArgs
///         {
///             FailureThreshold = 1,
///         },
///     });
///
///     var exampleInstance = new Aws.ServiceDiscovery.Instance("example", new()
///     {
///         InstanceId = "example-instance-id",
///         ServiceId = exampleService.Id,
///         Attributes =
///         {
///             { "AWS_INSTANCE_IPV4", "172.18.0.1" },
///             { "custom_attribute", "custom" },
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
/// 			Name:        pulumi.String("example.domain.local"),
/// 			Description: pulumi.String("example"),
/// 			Vpc:         example.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := servicediscovery.NewService(ctx, "example", &servicediscovery.ServiceArgs{
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
/// 			HealthCheckCustomConfig: &servicediscovery.ServiceHealthCheckCustomConfigArgs{
/// 				FailureThreshold: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicediscovery.NewInstance(ctx, "example", &servicediscovery.InstanceArgs{
/// 			InstanceId: pulumi.String("example-instance-id"),
/// 			ServiceId:  exampleService.ID().ToIDOutput().ToStringOutput(),
/// 			Attributes: pulumi.StringMap{
/// 				"AWS_INSTANCE_IPV4": pulumi.String("172.18.0.1"),
/// 				"custom_attribute":  pulumi.String("custom"),
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
///   name        = "example.domain.local"
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
///   health_check_custom_config = {
///     failure_threshold = 1
///   }
/// }
/// resource "aws_servicediscovery_instance" "example" {
///   instance_id = "example-instance-id"
///   service_id  = aws_servicediscovery_service.example.id
///   attributes = {
///     "AWS_INSTANCE_IPV4" = "172.18.0.1"
///     "custom_attribute"  = "custom"
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
/// import com.pulumi.aws.servicediscovery.inputs.ServiceHealthCheckCustomConfigArgs;
/// import com.pulumi.aws.servicediscovery.Instance;
/// import com.pulumi.aws.servicediscovery.InstanceArgs;
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
///             .name("example.domain.local")
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
///             .healthCheckCustomConfig(ServiceHealthCheckCustomConfigArgs.builder()
///                 .failureThreshold(1)
///                 .build())
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .instanceId("example-instance-id")
///             .serviceId(exampleService.id())
///             .attributes(Map.ofEntries(
///                 Map.entry("AWS_INSTANCE_IPV4", "172.18.0.1"),
///                 Map.entry("custom_attribute", "custom")
///             ))
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
///       name: example.domain.local
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
///       healthCheckCustomConfig:
///         failureThreshold: 1
///   exampleInstance:
///     type: aws:servicediscovery:Instance
///     name: example
///     properties:
///       instanceId: example-instance-id
///       serviceId: ${exampleService.id}
///       attributes:
///         AWS_INSTANCE_IPV4: 172.18.0.1
///         custom_attribute: custom
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicediscovery.HttpNamespace("example", {
///     name: "example.domain.test",
///     description: "example",
/// });
/// const exampleService = new aws.servicediscovery.Service("example", {
///     name: "example",
///     namespaceId: example.id,
/// });
/// const exampleInstance = new aws.servicediscovery.Instance("example", {
///     instanceId: "example-instance-id",
///     serviceId: exampleService.id,
///     attributes: {
///         AWS_EC2_INSTANCE_ID: "i-0abdg374kd892cj6dl",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicediscovery.HttpNamespace("example",
///     name="example.domain.test",
///     description="example")
/// example_service = aws.servicediscovery.Service("example",
///     name="example",
///     namespace_id=example.id)
/// example_instance = aws.servicediscovery.Instance("example",
///     instance_id="example-instance-id",
///     service_id=example_service.id,
///     attributes={
///         "AWS_EC2_INSTANCE_ID": "i-0abdg374kd892cj6dl",
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
///     var example = new Aws.ServiceDiscovery.HttpNamespace("example", new()
///     {
///         Name = "example.domain.test",
///         Description = "example",
///     });
///
///     var exampleService = new Aws.ServiceDiscovery.Service("example", new()
///     {
///         Name = "example",
///         NamespaceId = example.Id,
///     });
///
///     var exampleInstance = new Aws.ServiceDiscovery.Instance("example", new()
///     {
///         InstanceId = "example-instance-id",
///         ServiceId = exampleService.Id,
///         Attributes =
///         {
///             { "AWS_EC2_INSTANCE_ID", "i-0abdg374kd892cj6dl" },
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
/// 		example, err := servicediscovery.NewHttpNamespace(ctx, "example", &servicediscovery.HttpNamespaceArgs{
/// 			Name:        pulumi.String("example.domain.test"),
/// 			Description: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := servicediscovery.NewService(ctx, "example", &servicediscovery.ServiceArgs{
/// 			Name:        pulumi.String("example"),
/// 			NamespaceId: example.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicediscovery.NewInstance(ctx, "example", &servicediscovery.InstanceArgs{
/// 			InstanceId: pulumi.String("example-instance-id"),
/// 			ServiceId:  exampleService.ID().ToIDOutput().ToStringOutput(),
/// 			Attributes: pulumi.StringMap{
/// 				"AWS_EC2_INSTANCE_ID": pulumi.String("i-0abdg374kd892cj6dl"),
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
/// resource "aws_servicediscovery_httpnamespace" "example" {
///   name        = "example.domain.test"
///   description = "example"
/// }
/// resource "aws_servicediscovery_service" "example" {
///   name         = "example"
///   namespace_id = aws_servicediscovery_httpnamespace.example.id
/// }
/// resource "aws_servicediscovery_instance" "example" {
///   instance_id = "example-instance-id"
///   service_id  = aws_servicediscovery_service.example.id
///   attributes = {
///     "AWS_EC2_INSTANCE_ID" = "i-0abdg374kd892cj6dl"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicediscovery.HttpNamespace;
/// import com.pulumi.aws.servicediscovery.HttpNamespaceArgs;
/// import com.pulumi.aws.servicediscovery.Service;
/// import com.pulumi.aws.servicediscovery.ServiceArgs;
/// import com.pulumi.aws.servicediscovery.Instance;
/// import com.pulumi.aws.servicediscovery.InstanceArgs;
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
///         var example = new HttpNamespace("example", HttpNamespaceArgs.builder()
///             .name("example.domain.test")
///             .description("example")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example")
///             .namespaceId(example.id())
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .instanceId("example-instance-id")
///             .serviceId(exampleService.id())
///             .attributes(Map.of("AWS_EC2_INSTANCE_ID", "i-0abdg374kd892cj6dl"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicediscovery:HttpNamespace
///     properties:
///       name: example.domain.test
///       description: example
///   exampleService:
///     type: aws:servicediscovery:Service
///     name: example
///     properties:
///       name: example
///       namespaceId: ${example.id}
///   exampleInstance:
///     type: aws:servicediscovery:Instance
///     name: example
///     properties:
///       instanceId: example-instance-id
///       serviceId: ${exampleService.id}
///       attributes:
///         AWS_EC2_INSTANCE_ID: i-0abdg374kd892cj6dl
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Discovery Instance using the service ID and instance ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicediscovery/instance:Instance example 0123456789/i-0123
/// ```
class Instance extends pulumi.CustomResource {
  /// A map contains the attributes of the instance. Check the [doc](https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html#API_RegisterInstance_RequestSyntax) for the supported attributes and syntax.
  late final pulumi.Output<Map<String, String>> attributes;
  /// The ID of the service instance.
  late final pulumi.Output<String> instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the service that you want to use to create the instance.
  late final pulumi.Output<String> serviceId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_servicediscovery_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicediscovery/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attributes = registerOutput<Map<String, String>>('attributes');
    instanceId = registerOutput<String>('instanceId');
    region = registerOutput<String>('region');
    serviceId = registerOutput<String>('serviceId');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicediscovery/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attributes = registerOutput<Map<String, String>>('attributes');
    instanceId = registerOutput<String>('instanceId');
    region = registerOutput<String>('region');
    serviceId = registerOutput<String>('serviceId');
  }
}
