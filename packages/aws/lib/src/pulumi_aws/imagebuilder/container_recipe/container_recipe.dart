import 'package:pulumi/pulumi.dart';
import '../container_recipe_component/container_recipe_component.dart';
import '../container_recipe_instance_configuration/container_recipe_instance_configuration.dart';
import '../container_recipe_target_repository/container_recipe_target_repository.dart';
import 'container_recipe_args.dart';

/// Manages an Image Builder Container Recipe.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.imagebuilder.ContainerRecipe("example", {
/// name: "example",
/// version: "1.0.0",
/// containerType: "DOCKER",
/// parentImage: "arn:aws:imagebuilder:eu-central-1:aws:image/amazon-linux-x86-latest/x.x.x",
/// targetRepository: {
/// repositoryName: exampleAwsEcrRepository.name,
/// service: "ECR",
/// },
/// components: [{
/// componentArn: exampleAwsImagebuilderComponent.arn,
/// parameters: [
/// {
/// name: "Parameter1",
/// value: "Value1",
/// },
/// {
/// name: "Parameter2",
/// value: "Value2",
/// },
/// ],
/// }],
/// dockerfileTemplateData: `FROM {{{ imagebuilder:parentImage }}}
/// {{{ imagebuilder:environments }}}
/// {{{ imagebuilder:components }}}
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.ContainerRecipe("example",
/// name="example",
/// version="1.0.0",
/// container_type="DOCKER",
/// parent_image="arn:aws:imagebuilder:eu-central-1:aws:image/amazon-linux-x86-latest/x.x.x",
/// target_repository={
/// "repository_name": example_aws_ecr_repository["name"],
/// "service": "ECR",
/// },
/// components=[{
/// "component_arn": example_aws_imagebuilder_component["arn"],
/// "parameters": [
/// {
/// "name": "Parameter1",
/// "value": "Value1",
/// },
/// {
/// "name": "Parameter2",
/// "value": "Value2",
/// },
/// ],
/// }],
/// dockerfile_template_data="""FROM {{{ imagebuilder:parentImage }}}
/// {{{ imagebuilder:environments }}}
/// {{{ imagebuilder:components }}}
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ImageBuilder.ContainerRecipe("example", new()
/// {
/// Name = "example",
/// Version = "1.0.0",
/// ContainerType = "DOCKER",
/// ParentImage = "arn:aws:imagebuilder:eu-central-1:aws:image/amazon-linux-x86-latest/x.x.x",
/// TargetRepository = new Aws.ImageBuilder.Inputs.ContainerRecipeTargetRepositoryArgs
/// {
/// RepositoryName = exampleAwsEcrRepository.Name,
/// Service = "ECR",
/// },
/// Components = new[]
/// {
/// new Aws.ImageBuilder.Inputs.ContainerRecipeComponentArgs
/// {
/// ComponentArn = exampleAwsImagebuilderComponent.Arn,
/// Parameters = new[]
/// {
/// new Aws.ImageBuilder.Inputs.ContainerRecipeComponentParameterArgs
/// {
/// Name = "Parameter1",
/// Value = "Value1",
/// },
/// new Aws.ImageBuilder.Inputs.ContainerRecipeComponentParameterArgs
/// {
/// Name = "Parameter2",
/// Value = "Value2",
/// },
/// },
/// },
/// },
/// DockerfileTemplateData = @"FROM {{{ imagebuilder:parentImage }}}
/// {{{ imagebuilder:environments }}}
/// {{{ imagebuilder:components }}}
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := imagebuilder.NewContainerRecipe(ctx, "example", &imagebuilder.ContainerRecipeArgs{
/// Name:          pulumi.String("example"),
/// Version:       pulumi.String("1.0.0"),
/// ContainerType: pulumi.String("DOCKER"),
/// ParentImage:   pulumi.String("arn:aws:imagebuilder:eu-central-1:aws:image/amazon-linux-x86-latest/x.x.x"),
/// TargetRepository: &imagebuilder.ContainerRecipeTargetRepositoryArgs{
/// RepositoryName: pulumi.Any(exampleAwsEcrRepository.Name),
/// Service:        pulumi.String("ECR"),
/// },
/// Components: imagebuilder.ContainerRecipeComponentArray{
/// &imagebuilder.ContainerRecipeComponentArgs{
/// ComponentArn: pulumi.Any(exampleAwsImagebuilderComponent.Arn),
/// Parameters: imagebuilder.ContainerRecipeComponentParameterArray{
/// &imagebuilder.ContainerRecipeComponentParameterArgs{
/// Name:  pulumi.String("Parameter1"),
/// Value: pulumi.String("Value1"),
/// },
/// &imagebuilder.ContainerRecipeComponentParameterArgs{
/// Name:  pulumi.String("Parameter2"),
/// Value: pulumi.String("Value2"),
/// },
/// },
/// },
/// },
/// DockerfileTemplateData: pulumi.String("FROM {{{ imagebuilder:parentImage }}}\n{{{ imagebuilder:environments }}}\n{{{ imagebuilder:components }}}\n"),
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
/// import com.pulumi.aws.imagebuilder.ContainerRecipe;
/// import com.pulumi.aws.imagebuilder.ContainerRecipeArgs;
/// import com.pulumi.aws.imagebuilder.inputs.ContainerRecipeTargetRepositoryArgs;
/// import com.pulumi.aws.imagebuilder.inputs.ContainerRecipeComponentArgs;
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
/// var example = new ContainerRecipe("example", ContainerRecipeArgs.builder()
/// .name("example")
/// .version("1.0.0")
/// .containerType("DOCKER")
/// .parentImage("arn:aws:imagebuilder:eu-central-1:aws:image/amazon-linux-x86-latest/x.x.x")
/// .targetRepository(ContainerRecipeTargetRepositoryArgs.builder()
/// .repositoryName(exampleAwsEcrRepository.name())
/// .service("ECR")
/// .build())
/// .components(ContainerRecipeComponentArgs.builder()
/// .componentArn(exampleAwsImagebuilderComponent.arn())
/// .parameters(
/// ContainerRecipeComponentParameterArgs.builder()
/// .name("Parameter1")
/// .value("Value1")
/// .build(),
/// ContainerRecipeComponentParameterArgs.builder()
/// .name("Parameter2")
/// .value("Value2")
/// .build())
/// .build())
/// .dockerfileTemplateData("""
/// FROM {{{ imagebuilder:parentImage }}}
/// {{{ imagebuilder:environments }}}
/// {{{ imagebuilder:components }}}
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:imagebuilder:ContainerRecipe
/// properties:
/// name: example
/// version: 1.0.0
/// containerType: DOCKER
/// parentImage: arn:aws:imagebuilder:eu-central-1:aws:image/amazon-linux-x86-latest/x.x.x
/// targetRepository:
/// repositoryName: ${exampleAwsEcrRepository.name}
/// service: ECR
/// components:
/// - componentArn: ${exampleAwsImagebuilderComponent.arn}
/// parameters:
/// - name: Parameter1
/// value: Value1
/// - name: Parameter2
/// value: Value2
/// dockerfileTemplateData: |
/// FROM {{{ imagebuilder:parentImage }}}
/// {{{ imagebuilder:environments }}}
/// {{{ imagebuilder:components }}}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the Image Builder container recipe.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.imagebuilder.ContainerRecipe`" pulumi-lang-dotnet="`aws.imagebuilder.ContainerRecipe`" pulumi-lang-go="`imagebuilder.ContainerRecipe`" pulumi-lang-python="`imagebuilder.ContainerRecipe`" pulumi-lang-yaml="`aws.imagebuilder.ContainerRecipe`" pulumi-lang-java="`aws.imagebuilder.ContainerRecipe`">`aws.imagebuilder.ContainerRecipe`</span> resources using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/containerRecipe:ContainerRecipe example arn:aws:imagebuilder:us-east-1:123456789012:container-recipe/example/1.0.0
/// ```
class ContainerRecipe extends CustomResource {
  /// (Required) Amazon Resource Name (ARN) of the container recipe.
  late final Output<String> arn;

  /// Ordered configuration block(s) with components for the container recipe. Detailed below.
  late final Output<List<ContainerRecipeComponent>> components;

  /// The type of the container to create. Valid values: `DOCKER`.
  late final Output<String> containerType;

  /// Date the container recipe was created.
  late final Output<String> dateCreated;

  /// The description of the container recipe.
  late final Output<String?> description;

  /// The Dockerfile template used to build the image as an inline data blob.
  late final Output<String> dockerfileTemplateData;

  /// The Amazon S3 URI for the Dockerfile that will be used to build the container image.
  late final Output<String?> dockerfileTemplateUri;

  /// A flag that indicates if the target container is encrypted.
  late final Output<bool> encrypted;

  /// Configuration block used to configure an instance for building and testing container images. Detailed below.
  late final Output<ContainerRecipeInstanceConfiguration?>
      instanceConfiguration;

  /// The KMS key used to encrypt the container image.
  late final Output<String?> kmsKeyId;

  /// The name of the container recipe.
  late final Output<String> name;

  /// Owner of the container recipe.
  late final Output<String> owner;

  /// The base image for the container recipe.
  late final Output<String> parentImage;

  /// Platform of the container recipe.
  late final Output<String> platform;

  /// Specifies the operating system platform when you use a custom base image.
  late final Output<String?> platformOverride;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags for the container recipe. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The destination repository for the container image. Detailed below.
  late final Output<ContainerRecipeTargetRepository> targetRepository;

  /// Version of the container recipe.
  ///
  /// The following arguments are optional:
  late final Output<String> version;

  /// The working directory to be used during build and test workflows.
  late final Output<String?> workingDirectory;

  ContainerRecipe(
    String name, {
    ContainerRecipeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/containerRecipe:ContainerRecipe',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.components =
        registerOutput<List<ContainerRecipeComponent>>('components');
    this.containerType = registerOutput<String>('containerType');
    this.dateCreated = registerOutput<String>('dateCreated');
    this.description = registerOutput<String?>('description');
    this.dockerfileTemplateData =
        registerOutput<String>('dockerfileTemplateData');
    this.dockerfileTemplateUri =
        registerOutput<String?>('dockerfileTemplateUri');
    this.encrypted = registerOutput<bool>('encrypted');
    this.instanceConfiguration =
        registerOutput<ContainerRecipeInstanceConfiguration?>(
            'instanceConfiguration');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<String>('owner');
    this.parentImage = registerOutput<String>('parentImage');
    this.platform = registerOutput<String>('platform');
    this.platformOverride = registerOutput<String?>('platformOverride');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetRepository =
        registerOutput<ContainerRecipeTargetRepository>('targetRepository');
    this.version = registerOutput<String>('version');
    this.workingDirectory = registerOutput<String?>('workingDirectory');
  }
}
