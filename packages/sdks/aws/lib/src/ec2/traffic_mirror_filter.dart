import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_mirror_filter_args.dart';
import 'traffic_mirror_filter_state.dart';

/// Provides an Traffic mirror filter.
/// Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring
///
/// ## Example Usage
///
/// To create a basic traffic mirror filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ec2.TrafficMirrorFilter("foo", {
///     description: "traffic mirror filter - example",
///     networkServices: ["amazon-dns"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.TrafficMirrorFilter("foo",
///     description="traffic mirror filter - example",
///     network_services=["amazon-dns"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.Ec2.TrafficMirrorFilter("foo", new()
///     {
///         Description = "traffic mirror filter - example",
///         NetworkServices = new[]
///         {
///             "amazon-dns",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewTrafficMirrorFilter(ctx, "foo", &ec2.TrafficMirrorFilterArgs{
/// 			Description: pulumi.String("traffic mirror filter - example"),
/// 			NetworkServices: pulumi.StringArray{
/// 				pulumi.String("amazon-dns"),
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
/// resource "aws_ec2_trafficmirrorfilter" "foo" {
///   description      = "traffic mirror filter - example"
///   network_services = ["amazon-dns"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.TrafficMirrorFilter;
/// import com.pulumi.aws.ec2.TrafficMirrorFilterArgs;
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
///         var foo = new TrafficMirrorFilter("foo", TrafficMirrorFilterArgs.builder()
///             .description("traffic mirror filter - example")
///             .networkServices("amazon-dns")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ec2:TrafficMirrorFilter
///     properties:
///       description: traffic mirror filter - example
///       networkServices:
///         - amazon-dns
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import traffic mirror filter using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/trafficMirrorFilter:TrafficMirrorFilter foo tmf-0fbb93ddf38198f64
/// ```
class TrafficMirrorFilter extends pulumi.CustomResource {
  /// The ARN of the traffic mirror filter.
  late final pulumi.Output<String> arn;
  /// A description of the filter.
  late final pulumi.Output<String?> description;
  /// List of amazon network services that should be mirrored. Valid values: `amazon-dns`.
  late final pulumi.Output<List<String>?> networkServices;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [TrafficMirrorFilter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficMirrorFilter]. {@macro pulumi_ec2_traffic_mirror_filter_traffic_mirror_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficMirrorFilter(
    String name, {
    TrafficMirrorFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/trafficMirrorFilter:TrafficMirrorFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    networkServices = registerOutput<List<String>?>('networkServices');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [TrafficMirrorFilter] resource's state with the given [name] and [id].
  static TrafficMirrorFilter get(
    String name,
    pulumi.Input<String> id, {
    TrafficMirrorFilterState? state,
  }) {
    return TrafficMirrorFilter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrafficMirrorFilter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/trafficMirrorFilter:TrafficMirrorFilter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    networkServices = registerOutput<List<String>?>('networkServices');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
