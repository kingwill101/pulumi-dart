import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_args.dart';
import 'space_ownership_settings.dart';
import 'space_space_settings.dart';
import 'space_space_sharing_settings.dart';

/// Provides a SageMaker AI Space resource.
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
/// const example = new aws.sagemaker.Space("example", {
///     domainId: test.id,
///     spaceName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Space("example",
///     domain_id=test["id"],
///     space_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.Space("example", new()
///     {
///         DomainId = test.Id,
///         SpaceName = "example",
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
/// 		_, err := sagemaker.NewSpace(ctx, "example", &sagemaker.SpaceArgs{
/// 			DomainId:  pulumi.Any(test.Id),
/// 			SpaceName: pulumi.String("example"),
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
/// import com.pulumi.aws.sagemaker.Space;
/// import com.pulumi.aws.sagemaker.SpaceArgs;
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
///         var example = new Space("example", SpaceArgs.builder()
///             .domainId(test.id())
///             .spaceName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:Space
///     properties:
///       domainId: ${test.id}
///       spaceName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Spaces using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/space:Space test_space arn:aws:sagemaker:us-west-2:123456789012:space/domain-id/space-name
/// ```
class Space extends pulumi.CustomResource {
  /// The space's Amazon Resource Name (ARN).
  late final pulumi.Output<String> arn;

  /// The ID of the associated Domain.
  late final pulumi.Output<String> domainId;

  /// The ID of the space's profile in the Amazon Elastic File System volume.
  late final pulumi.Output<String> homeEfsFileSystemUid;

  /// A collection of ownership settings. Required if `space_sharing_settings` is set. See `ownership_settings` Block below.
  late final pulumi.Output<SpaceOwnershipSettings?> ownershipSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the space that appears in the SageMaker AI Studio UI.
  late final pulumi.Output<String?> spaceDisplayName;

  /// The name of the space.
  late final pulumi.Output<String> spaceName;

  /// A collection of space settings. See `space_settings` Block below.
  late final pulumi.Output<SpaceSpaceSettings?> spaceSettings;

  /// A collection of space sharing settings. Required if `ownership_settings` is set. See `space_sharing_settings` Block below.
  late final pulumi.Output<SpaceSpaceSharingSettings?> spaceSharingSettings;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Returns the URL of the space. If the space is created with Amazon Web Services IAM Identity Center (Successor to Amazon Web Services Single Sign-On) authentication, users can navigate to the URL after appending the respective redirect parameter for the application type to be federated through Amazon Web Services IAM Identity Center.
  late final pulumi.Output<String> url;

  /// Creates a new [Space].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Space]. {@macro pulumi_sagemaker_space_space_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Space(
    String name, {
    SpaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/space:Space',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainId = registerOutput<String>('domainId');
    this.homeEfsFileSystemUid = registerOutput<String>('homeEfsFileSystemUid');
    this.ownershipSettings =
        registerOutput<SpaceOwnershipSettings?>('ownershipSettings');
    this.region = registerOutput<String>('region');
    this.spaceDisplayName = registerOutput<String?>('spaceDisplayName');
    this.spaceName = registerOutput<String>('spaceName');
    this.spaceSettings = registerOutput<SpaceSpaceSettings?>('spaceSettings');
    this.spaceSharingSettings =
        registerOutput<SpaceSpaceSharingSettings?>('spaceSharingSettings');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String>('url');
  }
}
