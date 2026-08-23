import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_set_args.dart';
import 'resource_set_state.dart';
import 'resource_set_timeouts.dart';

/// Resource for managing an AWS FMS (Firewall Manager) Resource Set.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fms.ResourceSet("example", {resourceSets: [{
///     name: "testing",
///     resourceTypeLists: ["AWS::NetworkFirewall::Firewall"],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fms.ResourceSet("example", resource_sets=[{
///     "name": "testing",
///     "resource_type_lists": ["AWS::NetworkFirewall::Firewall"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Fms.ResourceSet("example", new()
///     {
///         ResourceSets = new[]
///         {
///             new Aws.Fms.Inputs.ResourceSetResourceSetArgs
///             {
///                 Name = "testing",
///                 ResourceTypeLists = new[]
///                 {
///                     "AWS::NetworkFirewall::Firewall",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fms.NewResourceSet(ctx, "example", &fms.ResourceSetArgs{
/// 			ResourceSets: fms.ResourceSetResourceSetArray{
/// 				&fms.ResourceSetResourceSetArgs{
/// 					Name: pulumi.String("testing"),
/// 					ResourceTypeLists: pulumi.StringArray{
/// 						pulumi.String("AWS::NetworkFirewall::Firewall"),
/// 					},
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
/// resource "aws_fms_resourceset" "example" {
///   resource_sets {
///     name                = "testing"
///     resource_type_lists = ["AWS::NetworkFirewall::Firewall"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fms.ResourceSet;
/// import com.pulumi.aws.fms.ResourceSetArgs;
/// import com.pulumi.aws.fms.inputs.ResourceSetResourceSetArgs;
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
///         var example = new ResourceSet("example", ResourceSetArgs.builder()
///             .resourceSets(ResourceSetResourceSetArgs.builder()
///                 .name("testing")
///                 .resourceTypeLists("AWS::NetworkFirewall::Firewall")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fms:ResourceSet
///     properties:
///       resourceSets:
///         - name: testing
///           resourceTypeLists:
///             - AWS::NetworkFirewall::Firewall
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import FMS (Firewall Manager) Resource Set using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fms/resourceSet:ResourceSet example resource_set-id-12345678
/// ```
class ResourceSet extends pulumi.CustomResource {
  /// ARN of the Resource Set.
  late final pulumi.Output<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Details about the resource set to be created or updated. See `resourceSet` Block below.
  late final pulumi.Output<List<Map<String, dynamic>>?> resourceSets;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ResourceSetTimeouts?> timeouts;

  /// Creates a new [ResourceSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceSet]. {@macro pulumi_fms_resource_set_resource_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceSet(
    String name, {
    ResourceSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fms/resourceSet:ResourceSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    resourceSets = registerOutput<List<Map<String, dynamic>>?>('resourceSets');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ResourceSetTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ResourceSet] resource's state with the given [name] and [id].
  static ResourceSet get(
    String name,
    pulumi.Input<String> id, {
    ResourceSetState? state,
  }) {
    return ResourceSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fms/resourceSet:ResourceSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    resourceSets = registerOutput<List<Map<String, dynamic>>?>('resourceSets');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ResourceSetTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
