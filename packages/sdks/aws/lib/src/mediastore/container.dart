import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_args.dart';
import 'container_state.dart';

/// Provides a MediaStore Container.
///
/// !> **WARNING:** _This resource is deprecated and will be removed in a future version._ AWS has [announced](https://aws.amazon.com/blogs/media/support-for-aws-elemental-mediastore-ending-soon/) the discontinuation of AWS Elemental MediaStore, effective **November 13, 2025**. Users should begin transitioning to alternative solutions as soon as possible. For **simple live streaming workflows**, AWS recommends migrating to **Amazon S3**. For **advanced use cases** that require features such as packaging, DRM, or cross-region redundancy, consider using **AWS Elemental MediaPackage**.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mediastore.Container("example", {name: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mediastore.Container("example", name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MediaStore.Container("example", new()
///     {
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mediastore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mediastore.NewContainer(ctx, "example", &mediastore.ContainerArgs{
/// 			Name: pulumi.String("example"),
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
/// import com.pulumi.aws.mediastore.Container;
/// import com.pulumi.aws.mediastore.ContainerArgs;
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
///         var example = new Container("example", ContainerArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mediastore:Container
///     properties:
///       name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import MediaStore Container using the MediaStore Container Name. For example:
///
/// ```sh
/// $ pulumi import aws:mediastore/container:Container example example
/// ```
class Container extends pulumi.CustomResource {
  /// The ARN of the container.
  late final pulumi.Output<String> arn;
  /// The DNS endpoint of the container.
  late final pulumi.Output<String> endpoint;
  /// The name of the container. Must contain alphanumeric characters or underscores.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Container].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Container]. {@macro pulumi_mediastore_container_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Container(
    String name, {
    ContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mediastore/container:Container',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.endpoint = registerOutput<String>('endpoint');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Container] resource's state with the given [name] and [id].
  static Container get(
    String name,
    pulumi.Input<String> id, {
    ContainerState? state,
  }) {
    return Container._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Container._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mediastore/container:Container',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.endpoint = registerOutput<String>('endpoint');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
