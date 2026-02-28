import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'namespace_timeouts.dart';

/// Resource for managing an AWS QuickSight Namespace.
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
/// const example = new aws.quicksight.Namespace("example", {namespace: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Namespace("example", namespace="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.Namespace("example", new()
///     {
///         NameSpace = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewNamespace(ctx, "example", &quicksight.NamespaceArgs{
/// 			Namespace: pulumi.String("example"),
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
/// import com.pulumi.aws.quicksight.Namespace;
/// import com.pulumi.aws.quicksight.NamespaceArgs;
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
///         var example = new Namespace("example", NamespaceArgs.builder()
///             .namespace("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:Namespace
///     properties:
///       namespace: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Namespace using the AWS account ID and namespace separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/namespace:Namespace example 123456789012,example
/// ```
class Namespace extends pulumi.CustomResource {
  /// ARN of the Namespace.
  late final pulumi.Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Namespace AWS Region.
  late final pulumi.Output<String> capacityRegion;

  /// Creation status of the namespace.
  late final pulumi.Output<String> creationStatus;

  /// User identity directory type. Defaults to `QUICKSIGHT`, the only current valid value.
  late final pulumi.Output<String> identityStore;

  /// Name of the namespace.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<NamespaceTimeouts?> timeouts;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_quicksight_namespace_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.capacityRegion = registerOutput<String>('capacityRegion');
    this.creationStatus = registerOutput<String>('creationStatus');
    this.identityStore = registerOutput<String>('identityStore');
    this.namespace = registerOutput<String>('namespace');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<NamespaceTimeouts?>('timeouts');
  }
}
