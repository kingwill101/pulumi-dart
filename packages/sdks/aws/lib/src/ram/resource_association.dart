import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_association_args.dart';
import 'resource_association_state.dart';

/// Manages a Resource Access Manager (RAM) Resource Association.
///
/// &gt; *NOTE:* Certain AWS resources (e.g., EC2 Subnets) can only be shared in an AWS account that is a member of an AWS Organizations organization with organization-wide Resource Access Manager functionality enabled. See the [Resource Access Manager User Guide](https://docs.aws.amazon.com/ram/latest/userguide/what-is.html) and AWS service specific documentation for additional information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ram.ResourceAssociation("example", {
///     resourceArn: exampleAwsSubnet.arn,
///     resourceShareArn: exampleAwsRamResourceShare.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ram.ResourceAssociation("example",
///     resource_arn=example_aws_subnet["arn"],
///     resource_share_arn=example_aws_ram_resource_share["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ram.ResourceAssociation("example", new()
///     {
///         ResourceArn = exampleAwsSubnet.Arn,
///         ResourceShareArn = exampleAwsRamResourceShare.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ram.NewResourceAssociation(ctx, "example", &ram.ResourceAssociationArgs{
/// 			ResourceArn:      pulumi.Any(exampleAwsSubnet.Arn),
/// 			ResourceShareArn: pulumi.Any(exampleAwsRamResourceShare.Arn),
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
/// resource "aws_ram_resourceassociation" "example" {
///   resource_arn       = exampleAwsSubnet.arn
///   resource_share_arn = exampleAwsRamResourceShare.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ram.ResourceAssociation;
/// import com.pulumi.aws.ram.ResourceAssociationArgs;
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
///         var example = new ResourceAssociation("example", ResourceAssociationArgs.builder()
///             .resourceArn(exampleAwsSubnet.arn())
///             .resourceShareArn(exampleAwsRamResourceShare.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ram:ResourceAssociation
///     properties:
///       resourceArn: ${exampleAwsSubnet.arn}
///       resourceShareArn: ${exampleAwsRamResourceShare.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import RAM Resource Associations using their Resource Share ARN and Resource ARN separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:ram/resourceAssociation:ResourceAssociation example arn:aws:ram:eu-west-1:123456789012:resource-share/73da1ab9-b94a-4ba3-8eb4-45917f7f4b12,arn:aws:ec2:eu-west-1:123456789012:subnet/subnet-12345678
/// ```
class ResourceAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the resource to associate with the RAM Resource Share.
  late final pulumi.Output<String> resourceArn;
  /// ARN of the RAM Resource Share.
  late final pulumi.Output<String> resourceShareArn;

  /// Creates a new [ResourceAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceAssociation]. {@macro pulumi_ram_resource_association_resource_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceAssociation(
    String name, {
    ResourceAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ram/resourceAssociation:ResourceAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    resourceShareArn = registerOutput<String>('resourceShareArn');
  }

  /// Gets an existing [ResourceAssociation] resource's state with the given [name] and [id].
  static ResourceAssociation get(
    String name,
    pulumi.Input<String> id, {
    ResourceAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourceAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourceAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ram/resourceAssociation:ResourceAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    resourceShareArn = registerOutput<String>('resourceShareArn');
  }

  /// Creates a typed reference to an existing [ResourceAssociation] resource.
  ResourceAssociation.reference(String urn)
    : super(
        'aws:ram/resourceAssociation:ResourceAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    resourceShareArn = registerOutput<String>('resourceShareArn');
  }
}
