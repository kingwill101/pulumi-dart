import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_args.dart';
import 'repository_catalog_data.dart';
import 'repository_state.dart';

/// Provides a Public Elastic Container Registry Repository.
///
/// > **NOTE:** This resource can only be used in the `us-east-1` region.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const foo = new aws.ecrpublic.Repository("foo", {
///     repositoryName: "bar",
///     catalogData: {
///         aboutText: "About Text",
///         architectures: ["ARM"],
///         description: "Description",
///         logoImageBlob: std.filebase64({
///             input: png,
///         }).then(invoke => invoke.result),
///         operatingSystems: ["Linux"],
///         usageText: "Usage Text",
///     },
///     tags: {
///         env: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// foo = aws.ecrpublic.Repository("foo",
///     repository_name="bar",
///     catalog_data={
///         "about_text": "About Text",
///         "architectures": ["ARM"],
///         "description": "Description",
///         "logo_image_blob": std.filebase64(input=png).result,
///         "operating_systems": ["Linux"],
///         "usage_text": "Usage Text",
///     },
///     tags={
///         "env": "production",
///     })
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
///     var foo = new Aws.EcrPublic.Repository("foo", new()
///     {
///         RepositoryName = "bar",
///         CatalogData = new Aws.EcrPublic.Inputs.RepositoryCatalogDataArgs
///         {
///             AboutText = "About Text",
///             Architectures = new[]
///             {
///                 "ARM",
///             },
///             Description = "Description",
///             LogoImageBlob = Std.Filebase64.Invoke(new()
///             {
///                 Input = png,
///             }).Apply(invoke => invoke.Result),
///             OperatingSystems = new[]
///             {
///                 "Linux",
///             },
///             UsageText = "Usage Text",
///         },
///         Tags =
///         {
///             { "env", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecrpublic"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: png,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecrpublic.NewRepository(ctx, "foo", &ecrpublic.RepositoryArgs{
/// 			RepositoryName: pulumi.String("bar"),
/// 			CatalogData: &ecrpublic.RepositoryCatalogDataArgs{
/// 				AboutText: pulumi.String("About Text"),
/// 				Architectures: pulumi.StringArray{
/// 					pulumi.String("ARM"),
/// 				},
/// 				Description:   pulumi.String("Description"),
/// 				LogoImageBlob: pulumi.String(invokeFilebase64.Result),
/// 				OperatingSystems: pulumi.StringArray{
/// 					pulumi.String("Linux"),
/// 				},
/// 				UsageText: pulumi.String("Usage Text"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("production"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var foo = new Repository("foo", RepositoryArgs.builder()
///             .repositoryName("bar")
///             .catalogData(RepositoryCatalogDataArgs.builder()
///                 .aboutText("About Text")
///                 .architectures("ARM")
///                 .description("Description")
///                 .logoImageBlob(StdFunctions.filebase64(Filebase64Args.builder()
///                     .input(png)
///                     .build()).result())
///                 .operatingSystems("Linux")
///                 .usageText("Usage Text")
///                 .build())
///             .tags(Map.of("env", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ecrpublic:Repository
///     properties:
///       repositoryName: bar
///       catalogData:
///         aboutText: About Text
///         architectures:
///           - ARM
///         description: Description
///         logoImageBlob:
///           fn::invoke:
///             function: std:filebase64
///             arguments:
///               input: ${png}
///             return: result
///         operatingSystems:
///           - Linux
///         usageText: Usage Text
///       tags:
///         env: production
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ECR Public Repositories using the `repository_name`. For example:
///
/// ```sh
/// $ pulumi import aws:ecrpublic/repository:Repository example example
/// ```
class Repository extends pulumi.CustomResource {
  /// Full ARN of the repository.
  late final pulumi.Output<String> arn;
  /// Catalog data configuration for the repository. See below for schema.
  late final pulumi.Output<RepositoryCatalogData?> catalogData;
  late final pulumi.Output<bool?> forceDestroy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The registry ID where the repository was created.
  late final pulumi.Output<String> registryId;
  /// Name of the repository.
  late final pulumi.Output<String> repositoryName;
  /// The URI of the repository.
  late final pulumi.Output<String> repositoryUri;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Repository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repository]. {@macro pulumi_ecrpublic_repository_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecrpublic/repository:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.catalogData = registerOutput<RepositoryCatalogData?>('catalogData');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.repositoryName = registerOutput<String>('repositoryName');
    this.repositoryUri = registerOutput<String>('repositoryUri');
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
          'aws:ecrpublic/repository:Repository',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.catalogData = registerOutput<RepositoryCatalogData?>('catalogData');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.repositoryName = registerOutput<String>('repositoryName');
    this.repositoryUri = registerOutput<String>('repositoryUri');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
