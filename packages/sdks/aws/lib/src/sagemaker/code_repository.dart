import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_repository_args.dart';
import 'code_repository_git_config.dart';
import 'code_repository_state.dart';

/// Provides a SageMaker AI Code Repository resource.
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
/// const example = new aws.sagemaker.CodeRepository("example", {
///     codeRepositoryName: "example",
///     gitConfig: {
///         repositoryUrl: "https://github.com/github/docs.git",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.CodeRepository("example",
///     code_repository_name="example",
///     git_config={
///         "repository_url": "https://github.com/github/docs.git",
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
///     var example = new Aws.Sagemaker.CodeRepository("example", new()
///     {
///         CodeRepositoryName = "example",
///         GitConfig = new Aws.Sagemaker.Inputs.CodeRepositoryGitConfigArgs
///         {
///             RepositoryUrl = "https://github.com/github/docs.git",
///         },
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
/// 		_, err := sagemaker.NewCodeRepository(ctx, "example", &sagemaker.CodeRepositoryArgs{
/// 			CodeRepositoryName: pulumi.String("example"),
/// 			GitConfig: &sagemaker.CodeRepositoryGitConfigArgs{
/// 				RepositoryUrl: pulumi.String("https://github.com/github/docs.git"),
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
/// import com.pulumi.aws.sagemaker.CodeRepository;
/// import com.pulumi.aws.sagemaker.CodeRepositoryArgs;
/// import com.pulumi.aws.sagemaker.inputs.CodeRepositoryGitConfigArgs;
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
///         var example = new CodeRepository("example", CodeRepositoryArgs.builder()
///             .codeRepositoryName("example")
///             .gitConfig(CodeRepositoryGitConfigArgs.builder()
///                 .repositoryUrl("https://github.com/github/docs.git")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:CodeRepository
///     properties:
///       codeRepositoryName: example
///       gitConfig:
///         repositoryUrl: https://github.com/github/docs.git
/// ```
///
///
/// ### Example with Secret
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.secretsmanager.Secret("example", {name: "example"});
/// const exampleSecretVersion = new aws.secretsmanager.SecretVersion("example", {
///     secretId: example.id,
///     secretString: JSON.stringify({
///         username: "example",
///         password: "example",
///     }),
/// });
/// const exampleCodeRepository = new aws.sagemaker.CodeRepository("example", {
///     codeRepositoryName: "example",
///     gitConfig: {
///         repositoryUrl: "https://github.com/github/docs.git",
///         secretArn: example.arn,
///     },
/// }, {
///     dependsOn: [exampleSecretVersion],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.Secret("example", name="example")
/// example_secret_version = aws.secretsmanager.SecretVersion("example",
///     secret_id=example.id,
///     secret_string=json.dumps({
///         "username": "example",
///         "password": "example",
///     }))
/// example_code_repository = aws.sagemaker.CodeRepository("example",
///     code_repository_name="example",
///     git_config={
///         "repository_url": "https://github.com/github/docs.git",
///         "secret_arn": example.arn,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_secret_version]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecretsManager.Secret("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleSecretVersion = new Aws.SecretsManager.SecretVersion("example", new()
///     {
///         SecretId = example.Id,
///         SecretString = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["username"] = "example",
///             ["password"] = "example",
///         }),
///     });
///
///     var exampleCodeRepository = new Aws.Sagemaker.CodeRepository("example", new()
///     {
///         CodeRepositoryName = "example",
///         GitConfig = new Aws.Sagemaker.Inputs.CodeRepositoryGitConfigArgs
///         {
///             RepositoryUrl = "https://github.com/github/docs.git",
///             SecretArn = example.Arn,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleSecretVersion,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := secretsmanager.NewSecret(ctx, "example", &secretsmanager.SecretArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"username": "example",
/// 			"password": "example",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleSecretVersion, err := secretsmanager.NewSecretVersion(ctx, "example", &secretsmanager.SecretVersionArgs{
/// 			SecretId:     example.ID(),
/// 			SecretString: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sagemaker.NewCodeRepository(ctx, "example", &sagemaker.CodeRepositoryArgs{
/// 			CodeRepositoryName: pulumi.String("example"),
/// 			GitConfig: &sagemaker.CodeRepositoryGitConfigArgs{
/// 				RepositoryUrl: pulumi.String("https://github.com/github/docs.git"),
/// 				SecretArn:     example.Arn,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleSecretVersion,
/// 		}))
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
/// import com.pulumi.aws.secretsmanager.Secret;
/// import com.pulumi.aws.secretsmanager.SecretArgs;
/// import com.pulumi.aws.secretsmanager.SecretVersion;
/// import com.pulumi.aws.secretsmanager.SecretVersionArgs;
/// import com.pulumi.aws.sagemaker.CodeRepository;
/// import com.pulumi.aws.sagemaker.CodeRepositoryArgs;
/// import com.pulumi.aws.sagemaker.inputs.CodeRepositoryGitConfigArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Secret("example", SecretArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleSecretVersion = new SecretVersion("exampleSecretVersion", SecretVersionArgs.builder()
///             .secretId(example.id())
///             .secretString(serializeJson(
///                 jsonObject(
///                     jsonProperty("username", "example"),
///                     jsonProperty("password", "example")
///                 )))
///             .build());
///
///         var exampleCodeRepository = new CodeRepository("exampleCodeRepository", CodeRepositoryArgs.builder()
///             .codeRepositoryName("example")
///             .gitConfig(CodeRepositoryGitConfigArgs.builder()
///                 .repositoryUrl("https://github.com/github/docs.git")
///                 .secretArn(example.arn())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleSecretVersion)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:secretsmanager:Secret
///     properties:
///       name: example
///   exampleSecretVersion:
///     type: aws:secretsmanager:SecretVersion
///     name: example
///     properties:
///       secretId: ${example.id}
///       secretString:
///         fn::toJSON:
///           username: example
///           password: example
///   exampleCodeRepository:
///     type: aws:sagemaker:CodeRepository
///     name: example
///     properties:
///       codeRepositoryName: example
///       gitConfig:
///         repositoryUrl: https://github.com/github/docs.git
///         secretArn: ${example.arn}
///     options:
///       dependsOn:
///         - ${exampleSecretVersion}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Code Repositories using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/codeRepository:CodeRepository test_code_repository my-code-repo
/// ```
class CodeRepository extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Code Repository.
  late final pulumi.Output<String> arn;

  /// The name of the Code Repository (must be unique).
  late final pulumi.Output<String> codeRepositoryName;

  /// Specifies details about the repository. see Git Config details below.
  late final pulumi.Output<CodeRepositoryGitConfig> gitConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [CodeRepository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CodeRepository]. {@macro pulumi_sagemaker_code_repository_code_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CodeRepository(
    String name, {
    CodeRepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sagemaker/codeRepository:CodeRepository',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    codeRepositoryName = registerOutput<String>('codeRepositoryName');
    gitConfig = registerOutput<CodeRepositoryGitConfig>(
      'gitConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CodeRepositoryGitConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [CodeRepository] resource's state with the given [name] and [id].
  static CodeRepository get(
    String name,
    pulumi.Input<String> id, {
    CodeRepositoryState? state,
  }) {
    return CodeRepository._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CodeRepository._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sagemaker/codeRepository:CodeRepository',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    codeRepositoryName = registerOutput<String>('codeRepositoryName');
    gitConfig = registerOutput<CodeRepositoryGitConfig>(
      'gitConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CodeRepositoryGitConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
