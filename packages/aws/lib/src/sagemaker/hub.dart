import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_args.dart';
import 'hub_s3_storage_config.dart';

/// Provides a SageMaker AI Hub resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Hub("example", {
///     hubName: "example",
///     hubDescription: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Hub("example",
///     hub_name="example",
///     hub_description="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.Hub("example", new()
///     {
///         HubName = "example",
///         HubDescription = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewHub(ctx, "example", &sagemaker.HubArgs{
/// 			HubName:        pulumi.String("example"),
/// 			HubDescription: pulumi.String("example"),
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
/// import com.pulumi.aws.sagemaker.Hub;
/// import com.pulumi.aws.sagemaker.HubArgs;
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
///         var example = new Hub("example", HubArgs.builder()
///             .hubName("example")
///             .hubDescription("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:Hub
///     properties:
///       hubName: example
///       hubDescription: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Hubs using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/hub:Hub test_hub my-code-repo
/// ```
class Hub extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Hub.
  late final pulumi.Output<String> arn;

  /// A description of the hub.
  late final pulumi.Output<String> hubDescription;

  /// The display name of the hub.
  late final pulumi.Output<String?> hubDisplayName;

  /// The name of the hub.
  late final pulumi.Output<String> hubName;

  /// The searchable keywords for the hub.
  late final pulumi.Output<List<String>?> hubSearchKeywords;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon S3 storage configuration for the hub. See S3 Storage Config details below.
  late final pulumi.Output<HubS3StorageConfig?> s3StorageConfig;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Hub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Hub]. {@macro pulumi_sagemaker_hub_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Hub(
    String name, {
    HubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/hub:Hub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.hubDescription = registerOutput<String>('hubDescription');
    this.hubDisplayName = registerOutput<String?>('hubDisplayName');
    this.hubName = registerOutput<String>('hubName');
    this.hubSearchKeywords = registerOutput<List<String>?>('hubSearchKeywords');
    this.region = registerOutput<String>('region');
    this.s3StorageConfig =
        registerOutput<HubS3StorageConfig?>('s3StorageConfig');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
