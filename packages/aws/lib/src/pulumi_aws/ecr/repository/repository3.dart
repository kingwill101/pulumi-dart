import 'package:pulumi/pulumi.dart';
import '../repository_encryption_configuration/repository_encryption_configuration.dart';
import '../repository_image_scanning_configuration/repository_image_scanning_configuration.dart';
import '../repository_image_tag_mutability_exclusion_filter/repository_image_tag_mutability_exclusion_filter.dart';
import 'repository_args3.dart';

/// Provides an Elastic Container Registry Repository.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ecr.Repository("foo", {
/// name: "bar",
/// imageTagMutability: "MUTABLE",
/// imageScanningConfiguration: {
/// scanOnPush: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ecr.Repository("foo",
/// name="bar",
/// image_tag_mutability="MUTABLE",
/// image_scanning_configuration={
/// "scan_on_push": True,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = new Aws.Ecr.Repository("foo", new()
/// {
/// Name = "bar",
/// ImageTagMutability = "MUTABLE",
/// ImageScanningConfiguration = new Aws.Ecr.Inputs.RepositoryImageScanningConfigurationArgs
/// {
/// ScanOnPush = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecr.NewRepository(ctx, "foo", &ecr.RepositoryArgs{
/// Name:               pulumi.String("bar"),
/// ImageTagMutability: pulumi.String("MUTABLE"),
/// ImageScanningConfiguration: &ecr.RepositoryImageScanningConfigurationArgs{
/// ScanOnPush: pulumi.Bool(true),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var foo = new Repository("foo", RepositoryArgs.builder()
/// .name("bar")
/// .imageTagMutability("MUTABLE")
/// .imageScanningConfiguration(RepositoryImageScanningConfigurationArgs.builder()
/// .scanOnPush(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:ecr:Repository
/// properties:
/// name: bar
/// imageTagMutability: MUTABLE
/// imageScanningConfiguration:
/// scanOnPush: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Image Tag Mutability Exclusion
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecr.Repository("example", {
/// name: "example-repo",
/// imageTagMutability: "IMMUTABLE_WITH_EXCLUSION",
/// imageTagMutabilityExclusionFilters: [
/// {
/// filter: "latest*",
/// filterType: "WILDCARD",
/// },
/// {
/// filter: "dev-*",
/// filterType: "WILDCARD",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.Repository("example",
/// name="example-repo",
/// image_tag_mutability="IMMUTABLE_WITH_EXCLUSION",
/// image_tag_mutability_exclusion_filters=[
/// {
/// "filter": "latest*",
/// "filter_type": "WILDCARD",
/// },
/// {
/// "filter": "dev-*",
/// "filter_type": "WILDCARD",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ecr.Repository("example", new()
/// {
/// Name = "example-repo",
/// ImageTagMutability = "IMMUTABLE_WITH_EXCLUSION",
/// ImageTagMutabilityExclusionFilters = new[]
/// {
/// new Aws.Ecr.Inputs.RepositoryImageTagMutabilityExclusionFilterArgs
/// {
/// Filter = "latest*",
/// FilterType = "WILDCARD",
/// },
/// new Aws.Ecr.Inputs.RepositoryImageTagMutabilityExclusionFilterArgs
/// {
/// Filter = "dev-*",
/// FilterType = "WILDCARD",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecr.NewRepository(ctx, "example", &ecr.RepositoryArgs{
/// Name:               pulumi.String("example-repo"),
/// ImageTagMutability: pulumi.String("IMMUTABLE_WITH_EXCLUSION"),
/// ImageTagMutabilityExclusionFilters: ecr.RepositoryImageTagMutabilityExclusionFilterArray{
/// &ecr.RepositoryImageTagMutabilityExclusionFilterArgs{
/// Filter:     pulumi.String("latest*"),
/// FilterType: pulumi.String("WILDCARD"),
/// },
/// &ecr.RepositoryImageTagMutabilityExclusionFilterArgs{
/// Filter:     pulumi.String("dev-*"),
/// FilterType: pulumi.String("WILDCARD"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Repository("example", RepositoryArgs.builder()
/// .name("example-repo")
/// .imageTagMutability("IMMUTABLE_WITH_EXCLUSION")
/// .imageTagMutabilityExclusionFilters(
/// RepositoryImageTagMutabilityExclusionFilterArgs.builder()
/// .filter("latest*")
/// .filterType("WILDCARD")
/// .build(),
/// RepositoryImageTagMutabilityExclusionFilterArgs.builder()
/// .filter("dev-*")
/// .filterType("WILDCARD")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecr:Repository
/// properties:
/// name: example-repo
/// imageTagMutability: IMMUTABLE_WITH_EXCLUSION
/// imageTagMutabilityExclusionFilters:
/// - filter: latest*
/// filterType: WILDCARD
/// - filter: dev-*
/// filterType: WILDCARD
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> - (String) Name of the ECR repository.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ECR Repositories using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/repository:Repository service test-service
/// ```
class Repository3 extends CustomResource {
  /// Full ARN of the repository.
  late final Output<String> arn;

  /// Encryption configuration for the repository. See below for schema.
  late final Output<List<RepositoryEncryptionConfiguration>?>
      encryptionConfigurations;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, will delete the repository even if it contains images.
  /// Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> forceDelete;

  /// Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the [ECR User Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html) for more information about image scanning.
  late final Output<RepositoryImageScanningConfiguration?>
      imageScanningConfiguration;

  /// The tag mutability setting for the repository. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  late final Output<String?> imageTagMutability;

  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when <span pulumi-lang-nodejs="`imageTagMutability`" pulumi-lang-dotnet="`ImageTagMutability`" pulumi-lang-go="`imageTagMutability`" pulumi-lang-python="`image_tag_mutability`" pulumi-lang-yaml="`imageTagMutability`" pulumi-lang-java="`imageTagMutability`">`image_tag_mutability`</span> is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  late final Output<List<RepositoryImageTagMutabilityExclusionFilter>?>
      imageTagMutabilityExclusionFilters;

  /// Name of the repository.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The registry ID where the repository was created.
  late final Output<String> registryId;

  /// The URL of the repository (in the form `aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName`).
  late final Output<String> repositoryUrl;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Repository3(
    String name, {
    RepositoryArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecr/repository:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.encryptionConfigurations =
        Output.createUnknown<List<RepositoryEncryptionConfiguration>?>();
    this.forceDelete = Output.createUnknown<bool?>();
    this.imageScanningConfiguration =
        Output.createUnknown<RepositoryImageScanningConfiguration?>();
    this.imageTagMutability = Output.createUnknown<String?>();
    this.imageTagMutabilityExclusionFilters = Output.createUnknown<
        List<RepositoryImageTagMutabilityExclusionFilter>?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.registryId = Output.createUnknown<String>();
    this.repositoryUrl = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
