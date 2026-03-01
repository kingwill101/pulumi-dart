import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_credential_args.dart';

/// Provides a CodeBuild Source Credentials Resource.
///
/// > **NOTE:
/// ** [Codebuild only allows a single credential per given server type in a given region](https://docs.aws.amazon.com/cdk/api/v2/docs/aws-cdk-lib.aws_codebuild.GitHubSourceCredentials.html).
/// Therefore, when you define `aws.codebuild.SourceCredential`,
/// `aws.codebuild.Project` resource defined in the same module will use it.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codebuild.SourceCredential("example", {
///     authType: "PERSONAL_ACCESS_TOKEN",
///     serverType: "GITHUB",
///     token: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codebuild.SourceCredential("example",
///     auth_type="PERSONAL_ACCESS_TOKEN",
///     server_type="GITHUB",
///     token="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeBuild.SourceCredential("example", new()
///     {
///         AuthType = "PERSONAL_ACCESS_TOKEN",
///         ServerType = "GITHUB",
///         Token = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codebuild.NewSourceCredential(ctx, "example", &codebuild.SourceCredentialArgs{
/// 			AuthType:   pulumi.String("PERSONAL_ACCESS_TOKEN"),
/// 			ServerType: pulumi.String("GITHUB"),
/// 			Token:      pulumi.String("example"),
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
/// import com.pulumi.aws.codebuild.SourceCredential;
/// import com.pulumi.aws.codebuild.SourceCredentialArgs;
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
///         var example = new SourceCredential("example", SourceCredentialArgs.builder()
///             .authType("PERSONAL_ACCESS_TOKEN")
///             .serverType("GITHUB")
///             .token("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codebuild:SourceCredential
///     properties:
///       authType: PERSONAL_ACCESS_TOKEN
///       serverType: GITHUB
///       token: example
/// ```
///
///
/// ### Bitbucket Server Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codebuild.SourceCredential("example", {
///     authType: "BASIC_AUTH",
///     serverType: "BITBUCKET",
///     token: "example",
///     userName: "test-user",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codebuild.SourceCredential("example",
///     auth_type="BASIC_AUTH",
///     server_type="BITBUCKET",
///     token="example",
///     user_name="test-user")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeBuild.SourceCredential("example", new()
///     {
///         AuthType = "BASIC_AUTH",
///         ServerType = "BITBUCKET",
///         Token = "example",
///         UserName = "test-user",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codebuild.NewSourceCredential(ctx, "example", &codebuild.SourceCredentialArgs{
/// 			AuthType:   pulumi.String("BASIC_AUTH"),
/// 			ServerType: pulumi.String("BITBUCKET"),
/// 			Token:      pulumi.String("example"),
/// 			UserName:   pulumi.String("test-user"),
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
/// import com.pulumi.aws.codebuild.SourceCredential;
/// import com.pulumi.aws.codebuild.SourceCredentialArgs;
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
///         var example = new SourceCredential("example", SourceCredentialArgs.builder()
///             .authType("BASIC_AUTH")
///             .serverType("BITBUCKET")
///             .token("example")
///             .userName("test-user")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codebuild:SourceCredential
///     properties:
///       authType: BASIC_AUTH
///       serverType: BITBUCKET
///       token: example
///       userName: test-user
/// ```
///
///
/// ### AWS CodeStar Connection Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codebuild.SourceCredential("example", {
///     authType: "CODECONNECTIONS",
///     serverType: "GITHUB",
///     token: "arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codebuild.SourceCredential("example",
///     auth_type="CODECONNECTIONS",
///     server_type="GITHUB",
///     token="arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeBuild.SourceCredential("example", new()
///     {
///         AuthType = "CODECONNECTIONS",
///         ServerType = "GITHUB",
///         Token = "arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codebuild.NewSourceCredential(ctx, "example", &codebuild.SourceCredentialArgs{
/// 			AuthType:   pulumi.String("CODECONNECTIONS"),
/// 			ServerType: pulumi.String("GITHUB"),
/// 			Token:      pulumi.String("arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string"),
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
/// import com.pulumi.aws.codebuild.SourceCredential;
/// import com.pulumi.aws.codebuild.SourceCredentialArgs;
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
///         var example = new SourceCredential("example", SourceCredentialArgs.builder()
///             .authType("CODECONNECTIONS")
///             .serverType("GITHUB")
///             .token("arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codebuild:SourceCredential
///     properties:
///       authType: CODECONNECTIONS
///       serverType: GITHUB
///       token: arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeBuild source credential.
///
///
/// Using `pulumi import`, import CodeBuild Source Credential using the CodeBuild Source Credential arn. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/sourceCredential:SourceCredential example arn:aws:codebuild:us-west-2:123456789:token:github
/// ```
class SourceCredential extends pulumi.CustomResource {
  /// The ARN of Source Credential.
  late final pulumi.Output<String> arn;

  /// The type of authentication used to connect to a GitHub, GitHub Enterprise, or Bitbucket
  /// repository. Valid values are `BASIC_AUTH`,
  /// `PERSONAL_ACCESS_TOKEN`, `CODECONNECTIONS`, and `SECRETS_MANAGER`. An OAUTH connection is not supported by the API.
  late final pulumi.Output<String> authType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The source provider used for this project.
  late final pulumi.Output<String> serverType;

  /// For a GitHub and GitHub Enterprise, this is the personal access token. For Bitbucket, this is the
  /// app password. When using an AWS CodeStar connection (`auth_type = "CODECONNECTIONS")`, this is an AWS CodeStar
  /// Connection ARN.
  late final pulumi.Output<String> token;

  /// The Bitbucket username when the authType is `BASIC_AUTH`. This parameter is not valid for
  /// other types of source providers or connections.
  late final pulumi.Output<String?> userName;

  /// Creates a new [SourceCredential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceCredential]. {@macro pulumi_codebuild_source_credential_source_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceCredential(
    String name, {
    SourceCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:codebuild/sourceCredential:SourceCredential',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.authType = registerOutput<String>('authType');
    this.region = registerOutput<String>('region');
    this.serverType = registerOutput<String>('serverType');
    this.token = registerOutput<String>('token');
    this.userName = registerOutput<String?>('userName');
  }
}
