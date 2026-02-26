import 'package:pulumi/pulumi.dart';
import '../repository_catalog_data/repository_catalog_data.dart';
import 'repository_args4.dart';

/// Provides a Public Elastic Container Registry Repository.
///
/// > **NOTE:** This resource can only be used in the `us-east-1` region.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const foo = new aws.ecrpublic.Repository("foo", {
/// repositoryName: "bar",
/// catalogData: {
/// aboutText: "About Text",
/// architectures: ["ARM"],
/// description: "Description",
/// logoImageBlob: std.filebase64({
/// input: png,
/// }).then(invoke => invoke.result),
/// operatingSystems: ["Linux"],
/// usageText: "Usage Text",
/// },
/// tags: {
/// env: "production",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// foo = aws.ecrpublic.Repository("foo",
/// repository_name="bar",
/// catalog_data={
/// "about_text": "About Text",
/// "architectures": ["ARM"],
/// "description": "Description",
/// "logo_image_blob": std.filebase64(input=png).result,
/// "operating_systems": ["Linux"],
/// "usage_text": "Usage Text",
/// },
/// tags={
/// "env": "production",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = new Aws.EcrPublic.Repository("foo", new()
/// {
/// RepositoryName = "bar",
/// CatalogData = new Aws.EcrPublic.Inputs.RepositoryCatalogDataArgs
/// {
/// AboutText = "About Text",
/// Architectures = new[]
/// {
/// "ARM",
/// },
/// Description = "Description",
/// LogoImageBlob = Std.Filebase64.Invoke(new()
/// {
/// Input = png,
/// }).Apply(invoke => invoke.Result),
/// OperatingSystems = new[]
/// {
/// "Linux",
/// },
/// UsageText = "Usage Text",
/// },
/// Tags =
/// {
/// { "env", "production" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecrpublic"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// Input: png,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ecrpublic.NewRepository(ctx, "foo", &ecrpublic.RepositoryArgs{
/// RepositoryName: pulumi.String("bar"),
/// CatalogData: &ecrpublic.RepositoryCatalogDataArgs{
/// AboutText: pulumi.String("About Text"),
/// Architectures: pulumi.StringArray{
/// pulumi.String("ARM"),
/// },
/// Description:   pulumi.String("Description"),
/// LogoImageBlob: pulumi.String(invokeFilebase64.Result),
/// OperatingSystems: pulumi.StringArray{
/// pulumi.String("Linux"),
/// },
/// UsageText: pulumi.String("Usage Text"),
/// },
/// Tags: pulumi.StringMap{
/// "env": pulumi.String("production"),
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
/// import com.pulumi.aws.ecrpublic.Repository;
/// import com.pulumi.aws.ecrpublic.RepositoryArgs;
/// import com.pulumi.aws.ecrpublic.inputs.RepositoryCatalogDataArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
/// .repositoryName("bar")
/// .catalogData(RepositoryCatalogDataArgs.builder()
/// .aboutText("About Text")
/// .architectures("ARM")
/// .description("Description")
/// .logoImageBlob(StdFunctions.filebase64(Filebase64Args.builder()
/// .input(png)
/// .build()).result())
/// .operatingSystems("Linux")
/// .usageText("Usage Text")
/// .build())
/// .tags(Map.of("env", "production"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:ecrpublic:Repository
/// properties:
/// repositoryName: bar
/// catalogData:
/// aboutText: About Text
/// architectures:
/// - ARM
/// description: Description
/// logoImageBlob:
/// fn::invoke:
/// function: std:filebase64
/// arguments:
/// input: ${png}
/// return: result
/// operatingSystems:
/// - Linux
/// usageText: Usage Text
/// tags:
/// env: production
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import ECR Public Repositories using the <span pulumi-lang-nodejs="`repositoryName`" pulumi-lang-dotnet="`RepositoryName`" pulumi-lang-go="`repositoryName`" pulumi-lang-python="`repository_name`" pulumi-lang-yaml="`repositoryName`" pulumi-lang-java="`repositoryName`">`repository_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ecrpublic/repository:Repository example example
/// ```
class Repository4 extends CustomResource {
  /// Full ARN of the repository.
  late final Output<String> arn;

  /// Catalog data configuration for the repository. See below for schema.
  late final Output<RepositoryCatalogData?> catalogData;
  late final Output<bool?> forceDestroy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The registry ID where the repository was created.
  late final Output<String> registryId;

  /// Name of the repository.
  late final Output<String> repositoryName;

  /// The URI of the repository.
  late final Output<String> repositoryUri;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Repository4(
    String name, {
    RepositoryArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecrpublic/repository:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.catalogData = Output.createUnknown<RepositoryCatalogData?>();
    this.forceDestroy = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.registryId = Output.createUnknown<String>();
    this.repositoryName = Output.createUnknown<String>();
    this.repositoryUri = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
