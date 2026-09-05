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
///     imageScanningConfiguration: {
///         scanOnPush: true,
///     },
///     name: "bar",
///     imageTagMutability: "MUTABLE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ecr.Repository("foo",
///     image_scanning_configuration={
///         "scan_on_push": True,
///     },
///     name="bar",
///     image_tag_mutability="MUTABLE")
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
///         ImageScanningConfiguration = new Aws.Ecr.Inputs.RepositoryImageScanningConfigurationArgs
///         {
///             ScanOnPush = true,
///         },
///         Name = "bar",
///         ImageTagMutability = "MUTABLE",
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
/// 			ImageScanningConfiguration: &ecr.RepositoryImageScanningConfigurationArgs{
/// 				ScanOnPush: pulumi.Bool(true),
/// 			},
/// 			Name:               pulumi.String("bar"),
/// 			ImageTagMutability: pulumi.String("MUTABLE"),
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
/// resource "aws_ecr_repository" "foo" {
///   image_scanning_configuration = {
///     scan_on_push = true
///   }
///   name                 = "bar"
///   image_tag_mutability = "MUTABLE"
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
///         var foo = new Repository("foo", RepositoryArgs.builder()
///             .imageScanningConfiguration(RepositoryImageScanningConfigurationArgs.builder()
///                 .scanOnPush(true)
///                 .build())
///             .name("bar")
///             .imageTagMutability("MUTABLE")
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
///       imageScanningConfiguration:
///         scanOnPush: true
///       name: bar
///       imageTagMutability: MUTABLE
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
///     name: "example-repo",
///     imageTagMutability: "IMMUTABLE_WITH_EXCLUSION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.Repository("example",
///     image_tag_mutability_exclusion_filters=[
///         {
///             "filter": "latest*",
///             "filter_type": "WILDCARD",
///         },
///         {
///             "filter": "dev-*",
///             "filter_type": "WILDCARD",
///         },
///     ],
///     name="example-repo",
///     image_tag_mutability="IMMUTABLE_WITH_EXCLUSION")
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
///         Name = "example-repo",
///         ImageTagMutability = "IMMUTABLE_WITH_EXCLUSION",
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
/// 			Name:               pulumi.String("example-repo"),
/// 			ImageTagMutability: pulumi.String("IMMUTABLE_WITH_EXCLUSION"),
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
/// resource "aws_ecr_repository" "example" {
///   image_tag_mutability_exclusion_filters {
///     filter      = "latest*"
///     filter_type = "WILDCARD"
///   }
///   image_tag_mutability_exclusion_filters {
///     filter      = "dev-*"
///     filter_type = "WILDCARD"
///   }
///   name                 = "example-repo"
///   image_tag_mutability = "IMMUTABLE_WITH_EXCLUSION"
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
///         var example = new Repository("example", RepositoryArgs.builder()
///             .imageTagMutabilityExclusionFilters(
///                 RepositoryImageTagMutabilityExclusionFilterArgs.builder()
///                     .filter("latest*")
///                     .filterType("WILDCARD")
///                     .build(),
///                 RepositoryImageTagMutabilityExclusionFilterArgs.builder()
///                     .filter("dev-*")
///                     .filterType("WILDCARD")
///                     .build())
///             .name("example-repo")
///             .imageTagMutability("IMMUTABLE_WITH_EXCLUSION")
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
///       imageTagMutabilityExclusionFilters:
///         - filter: latest*
///           filterType: WILDCARD
///         - filter: dev-*
///           filterType: WILDCARD
///       name: example-repo
///       imageTagMutability: IMMUTABLE_WITH_EXCLUSION
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
/// * `accountId` (String) AWS Account where this resource is managed.
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
  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `imageTagMutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  late final pulumi.Output<List<RepositoryImageTagMutabilityExclusionFilter>?> imageTagMutabilityExclusionFilters;
  /// Name of the repository.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The registry ID where the repository was created.
  late final pulumi.Output<String> registryId;
  /// The URL of the repository (in the form `aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName`).
  late final pulumi.Output<String> repositoryUrl;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    encryptionConfigurations = registerOutput<List<RepositoryEncryptionConfiguration>?>('encryptionConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RepositoryEncryptionConfiguration>(guardedValue, (value) => RepositoryEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    forceDelete = registerOutput<bool?>('forceDelete');
    imageScanningConfiguration = registerOutput<RepositoryImageScanningConfiguration?>('imageScanningConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryImageScanningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageTagMutability = registerOutput<String?>('imageTagMutability');
    imageTagMutabilityExclusionFilters = registerOutput<List<RepositoryImageTagMutabilityExclusionFilter>?>('imageTagMutabilityExclusionFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RepositoryImageTagMutabilityExclusionFilter>(guardedValue, (value) => RepositoryImageTagMutabilityExclusionFilter.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryId = registerOutput<String>('registryId');
    repositoryUrl = registerOutput<String>('repositoryUrl');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Repository] resource's state with the given [name] and [id].
  static Repository get(
    String name,
    pulumi.Input<String> id, {
    RepositoryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Repository._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    arn = registerOutput<String>('arn');
    encryptionConfigurations = registerOutput<List<RepositoryEncryptionConfiguration>?>('encryptionConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RepositoryEncryptionConfiguration>(guardedValue, (value) => RepositoryEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    forceDelete = registerOutput<bool?>('forceDelete');
    imageScanningConfiguration = registerOutput<RepositoryImageScanningConfiguration?>('imageScanningConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryImageScanningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageTagMutability = registerOutput<String?>('imageTagMutability');
    imageTagMutabilityExclusionFilters = registerOutput<List<RepositoryImageTagMutabilityExclusionFilter>?>('imageTagMutabilityExclusionFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RepositoryImageTagMutabilityExclusionFilter>(guardedValue, (value) => RepositoryImageTagMutabilityExclusionFilter.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryId = registerOutput<String>('registryId');
    repositoryUrl = registerOutput<String>('repositoryUrl');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Repository] resource.
  Repository.reference(String urn)
    : super(
        'aws:ecr/repository:Repository',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    encryptionConfigurations = registerOutput<List<RepositoryEncryptionConfiguration>?>('encryptionConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RepositoryEncryptionConfiguration>(guardedValue, (value) => RepositoryEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    forceDelete = registerOutput<bool?>('forceDelete');
    imageScanningConfiguration = registerOutput<RepositoryImageScanningConfiguration?>('imageScanningConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryImageScanningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageTagMutability = registerOutput<String?>('imageTagMutability');
    imageTagMutabilityExclusionFilters = registerOutput<List<RepositoryImageTagMutabilityExclusionFilter>?>('imageTagMutabilityExclusionFilters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RepositoryImageTagMutabilityExclusionFilter>(guardedValue, (value) => RepositoryImageTagMutabilityExclusionFilter.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    registryId = registerOutput<String>('registryId');
    repositoryUrl = registerOutput<String>('repositoryUrl');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
