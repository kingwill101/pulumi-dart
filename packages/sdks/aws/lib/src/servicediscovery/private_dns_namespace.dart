import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_dns_namespace_args.dart';
import 'private_dns_namespace_state.dart';

/// Provides a Service Discovery Private DNS Namespace resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const examplePrivateDnsNamespace = new aws.servicediscovery.PrivateDnsNamespace("example", {
///     name: "hoge.example.local",
///     description: "example",
///     vpc: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_private_dns_namespace = aws.servicediscovery.PrivateDnsNamespace("example",
///     name="hoge.example.local",
///     description="example",
///     vpc=example.id)
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
///     });
///
///     var examplePrivateDnsNamespace = new Aws.ServiceDiscovery.PrivateDnsNamespace("example", new()
///     {
///         Name = "hoge.example.local",
///         Description = "example",
///         Vpc = example.Id,
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
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicediscovery.NewPrivateDnsNamespace(ctx, "example", &servicediscovery.PrivateDnsNamespaceArgs{
/// 			Name:        pulumi.String("hoge.example.local"),
/// 			Description: pulumi.String("example"),
/// 			Vpc:         example.ID().ToIDOutput().ToStringOutput(),
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
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_servicediscovery_privatednsnamespace" "example" {
///   name        = "hoge.example.local"
///   description = "example"
///   vpc         = aws_ec2_vpc.example.id
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
///             .build());
///
///         var examplePrivateDnsNamespace = new PrivateDnsNamespace("examplePrivateDnsNamespace", PrivateDnsNamespaceArgs.builder()
///             .name("hoge.example.local")
///             .description("example")
///             .vpc(example.id())
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
///   examplePrivateDnsNamespace:
///     type: aws:servicediscovery:PrivateDnsNamespace
///     name: example
///     properties:
///       name: hoge.example.local
///       description: example
///       vpc: ${example.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Discovery Private DNS Namespace using the namespace ID and VPC ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicediscovery/privateDnsNamespace:PrivateDnsNamespace example 0123456789:vpc-123345
/// ```
class PrivateDnsNamespace extends pulumi.CustomResource {
  /// The ARN that Amazon Route 53 assigns to the namespace when you create it.
  late final pulumi.Output<String> arn;
  /// The description that you specify for the namespace when you create it.
  late final pulumi.Output<String?> description;
  /// The ID for the hosted zone that Amazon Route 53 creates when you create a namespace.
  late final pulumi.Output<String> hostedZone;
  /// The name of the namespace.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the namespace. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The ID of VPC that you want to associate the namespace with.
  late final pulumi.Output<String> vpc;

  /// Creates a new [PrivateDnsNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateDnsNamespace]. {@macro pulumi_servicediscovery_private_dns_namespace_private_dns_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateDnsNamespace(
    String name, {
    PrivateDnsNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicediscovery/privateDnsNamespace:PrivateDnsNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    hostedZone = registerOutput<String>('hostedZone');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpc = registerOutput<String>('vpc');
  }

  /// Gets an existing [PrivateDnsNamespace] resource's state with the given [name] and [id].
  static PrivateDnsNamespace get(
    String name,
    pulumi.Input<String> id, {
    PrivateDnsNamespaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PrivateDnsNamespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PrivateDnsNamespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicediscovery/privateDnsNamespace:PrivateDnsNamespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    hostedZone = registerOutput<String>('hostedZone');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpc = registerOutput<String>('vpc');
  }

  /// Creates a typed reference to an existing [PrivateDnsNamespace] resource.
  PrivateDnsNamespace.reference(String urn)
    : super(
        'aws:servicediscovery/privateDnsNamespace:PrivateDnsNamespace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    hostedZone = registerOutput<String>('hostedZone');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpc = registerOutput<String>('vpc');
  }
}
