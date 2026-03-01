import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_args.dart';
import 'repository_encryption_configuration.dart';
import 'repository_image_scanning_configuration.dart';
import 'repository_image_tag_mutability_exclusion_filter.dart';
import 'repository_state.dart';

/// Provides an Elastic Container Registry Repository.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ecr.Repository("foo", {
///     name: "bar",
///     imageTagMutability: "MUTABLE",
///     imageScanningConfiguration: {
///         scanOnPush: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ecr.Repository("foo",
///     name="bar",
///     image_tag_mutability="MUTABLE",
///     image_scanning_configuration={
///         "scan_on_push": True,
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
///     var foo = new Aws.Ecr.Repository("foo", new()
///     {
///         Name = "bar",
///         ImageTagMutability = "MUTABLE",
///         ImageScanningConfiguration = new Aws.Ecr.Inputs.RepositoryImageScanningConfigurationArgs
///         {
///             ScanOnPush = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecr.NewRepository(ctx, "foo", &ecr.RepositoryArgs{
/// 			Name:               pulumi.String("bar"),
/// 			ImageTagMutability: pulumi.String("MUTABLE"),
/// 			ImageScanningConfiguration: &ecr.RepositoryImageScanningConfigurationArgs{
/// 				ScanOnPush: pulumi.Bool(true),
/// 			},
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
/// import com.pulumi.aws.ecr.Repository;
/// import com.pulumi.aws.ecr.RepositoryArgs;
/// import com.pulumi.aws.ecr.inputs.RepositoryImageScanningConfigurationArgs;
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
///         var foo = new Repository("foo", RepositoryArgs.builder()
///             .name("bar")
///             .imageTagMutability("MUTABLE")
///             .imageScanningConfiguration(RepositoryImageScanningConfigurationArgs.builder()
///                 .scanOnPush(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ecr:Repository
///     properties:
///       name: bar
///       imageTagMutability: MUTABLE
///       imageScanningConfiguration:
///         scanOnPush: true
/// ```
///
///
/// ### With Image Tag Mutability Exclusion
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecr.Repository("example", {
///     name: "example-repo",
///     imageTagMutability: "IMMUTABLE_WITH_EXCLUSION",
///     imageTagMutabilityExclusionFilters: [
///         {
///             filter: "latest*",
///             filterType: "WILDCARD",
///         },
///         {
///             filter: "dev-*",
///             filterType: "WILDCARD",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.Repository("example",
///     name="example-repo",
///     image_tag_mutability="IMMUTABLE_WITH_EXCLUSION",
///     image_tag_mutability_exclusion_filters=[
///         {
///             "filter": "latest*",
///             "filter_type": "WILDCARD",
///         },
///         {
///             "filter": "dev-*",
///             "filter_type": "WILDCARD",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecr.Repository("example", new()
///     {
///         Name = "example-repo",
///         ImageTagMutability = "IMMUTABLE_WITH_EXCLUSION",
///         ImageTagMutabilityExclusionFilters = new[]
///         {
///             new Aws.Ecr.Inputs.RepositoryImageTagMutabilityExclusionFilterArgs
///             {
///                 Filter = "latest*",
///                 FilterType = "WILDCARD",
///             },
///             new Aws.Ecr.Inputs.RepositoryImageTagMutabilityExclusionFilterArgs
///             {
///                 Filter = "dev-*",
///                 FilterType = "WILDCARD",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecr.NewRepository(ctx, "example", &ecr.RepositoryArgs{
/// 			Name:               pulumi.String("example-repo"),
/// 			ImageTagMutability: pulumi.String("IMMUTABLE_WITH_EXCLUSION"),
/// 			ImageTagMutabilityExclusionFilters: ecr.RepositoryImageTagMutabilityExclusionFilterArray{
/// 				&ecr.RepositoryImageTagMutabilityExclusionFilterArgs{
/// 					Filter:     pulumi.String("latest*"),
/// 					FilterType: pulumi.String("WILDCARD"),
/// 				},
/// 				&ecr.RepositoryImageTagMutabilityExclusionFilterArgs{
/// 					Filter:     pulumi.String("dev-*"),
/// 					FilterType: pulumi.String("WILDCARD"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecr.Repository;
/// import com.pulumi.aws.ecr.RepositoryArgs;
/// import com.pulumi.aws.ecr.inputs.RepositoryImageTagMutabilityExclusionFilterArgs;
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
///         var example = new Repository("example", RepositoryArgs.builder()
///             .name("example-repo")
///             .imageTagMutability("IMMUTABLE_WITH_EXCLUSION")
///             .imageTagMutabilityExclusionFilters(
///                 RepositoryImageTagMutabilityExclusionFilterArgs.builder()
///                     .filter("latest*")
///                     .filterType("WILDCARD")
///                     .build(),
///                 RepositoryImageTagMutabilityExclusionFilterArgs.builder()
///                     .filter("dev-*")
///                     .filterType("WILDCARD")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecr:Repository
///     properties:
///       name: example-repo
///       imageTagMutability: IMMUTABLE_WITH_EXCLUSION
///       imageTagMutabilityExclusionFilters:
///         - filter: latest*
///           filterType: WILDCARD
///         - filter: dev-*
///           filterType: WILDCARD
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` - (String) Name of the ECR repository.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ECR Repositories using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/repository:Repository service test-service
/// ```
class Repository extends pulumi.CustomResource {
  /// Full ARN of the repository.
  late final pulumi.Output<String> arn;
  /// Encryption configuration for the repository. See below for schema.
  late final pulumi.Output<List<RepositoryEncryptionConfiguration>?> encryptionConfigurations;
  /// If `true`, will delete the repository even if it contains images.
  /// Defaults to `false`.
  late final pulumi.Output<bool?> forceDelete;
  /// Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the [ECR User Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html) for more information about image scanning.
  late final pulumi.Output<RepositoryImageScanningConfiguration?> imageScanningConfiguration;
  /// The tag mutability setting for the repository. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  late final pulumi.Output<String?> imageTagMutability;
  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `image_tag_mutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  late final pulumi.Output<List<RepositoryImageTagMutabilityExclusionFilter>?> imageTagMutabilityExclusionFilters;
  /// Name of the repository.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The registry ID where the repository was created.
  late final pulumi.Output<String> registryId;
  /// The URL of the repository (in the form `aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName`).
  late final pulumi.Output<String> repositoryUrl;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Repository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repository]. {@macro pulumi_ecr_repository_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/repository:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.encryptionConfigurations = registerOutput<List<RepositoryEncryptionConfiguration>?>('encryptionConfigurations');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.imageScanningConfiguration = registerOutput<RepositoryImageScanningConfiguration?>('imageScanningConfiguration');
    this.imageTagMutability = registerOutput<String?>('imageTagMutability');
    this.imageTagMutabilityExclusionFilters = registerOutput<List<RepositoryImageTagMutabilityExclusionFilter>?>('imageTagMutabilityExclusionFilters');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.repositoryUrl = registerOutput<String>('repositoryUrl');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Repository] resource's state with the given [name] and [id].
  static Repository get(
    String name,
    pulumi.Input<String> id, {
    RepositoryState? state,
  }) {
    return Repository._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Repository._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/repository:Repository',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.encryptionConfigurations = registerOutput<List<RepositoryEncryptionConfiguration>?>('encryptionConfigurations');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.imageScanningConfiguration = registerOutput<RepositoryImageScanningConfiguration?>('imageScanningConfiguration');
    this.imageTagMutability = registerOutput<String?>('imageTagMutability');
    this.imageTagMutabilityExclusionFilters = registerOutput<List<RepositoryImageTagMutabilityExclusionFilter>?>('imageTagMutabilityExclusionFilters');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.repositoryUrl = registerOutput<String>('repositoryUrl');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
