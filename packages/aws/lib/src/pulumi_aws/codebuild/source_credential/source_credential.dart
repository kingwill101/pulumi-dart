import 'package:pulumi/pulumi.dart';
import 'source_credential_args.dart';

/// Provides a CodeBuild Source Credentials Resource.
///
/// > **NOTE:
/// ** [Codebuild only allows a single credential per given server type in a given region](https://docs.aws.amazon.com/cdk/api/v2/docs/aws-cdk-lib.aws_codebuild.GitHubSourceCredentials.html).
/// Therefore, when you define <span pulumi-lang-nodejs="`aws.codebuild.SourceCredential`" pulumi-lang-dotnet="`aws.codebuild.SourceCredential`" pulumi-lang-go="`codebuild.SourceCredential`" pulumi-lang-python="`codebuild.SourceCredential`" pulumi-lang-yaml="`aws.codebuild.SourceCredential`" pulumi-lang-java="`aws.codebuild.SourceCredential`">`aws.codebuild.SourceCredential`</span>,
/// <span pulumi-lang-nodejs="`aws.codebuild.Project`" pulumi-lang-dotnet="`aws.codebuild.Project`" pulumi-lang-go="`codebuild.Project`" pulumi-lang-python="`codebuild.Project`" pulumi-lang-yaml="`aws.codebuild.Project`" pulumi-lang-java="`aws.codebuild.Project`">`aws.codebuild.Project`</span> resource defined in the same module will use it.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codebuild.SourceCredential("example", {
/// authType: "PERSONAL_ACCESS_TOKEN",
/// serverType: "GITHUB",
/// token: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codebuild.SourceCredential("example",
/// auth_type="PERSONAL_ACCESS_TOKEN",
/// server_type="GITHUB",
/// token="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CodeBuild.SourceCredential("example", new()
/// {
/// AuthType = "PERSONAL_ACCESS_TOKEN",
/// ServerType = "GITHUB",
/// Token = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codebuild.NewSourceCredential(ctx, "example", &codebuild.SourceCredentialArgs{
/// AuthType:   pulumi.String("PERSONAL_ACCESS_TOKEN"),
/// ServerType: pulumi.String("GITHUB"),
/// Token:      pulumi.String("example"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new SourceCredential("example", SourceCredentialArgs.builder()
/// .authType("PERSONAL_ACCESS_TOKEN")
/// .serverType("GITHUB")
/// .token("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:codebuild:SourceCredential
/// properties:
/// authType: PERSONAL_ACCESS_TOKEN
/// serverType: GITHUB
/// token: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Bitbucket Server Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codebuild.SourceCredential("example", {
/// authType: "BASIC_AUTH",
/// serverType: "BITBUCKET",
/// token: "example",
/// userName: "test-user",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codebuild.SourceCredential("example",
/// auth_type="BASIC_AUTH",
/// server_type="BITBUCKET",
/// token="example",
/// user_name="test-user")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CodeBuild.SourceCredential("example", new()
/// {
/// AuthType = "BASIC_AUTH",
/// ServerType = "BITBUCKET",
/// Token = "example",
/// UserName = "test-user",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codebuild.NewSourceCredential(ctx, "example", &codebuild.SourceCredentialArgs{
/// AuthType:   pulumi.String("BASIC_AUTH"),
/// ServerType: pulumi.String("BITBUCKET"),
/// Token:      pulumi.String("example"),
/// UserName:   pulumi.String("test-user"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new SourceCredential("example", SourceCredentialArgs.builder()
/// .authType("BASIC_AUTH")
/// .serverType("BITBUCKET")
/// .token("example")
/// .userName("test-user")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:codebuild:SourceCredential
/// properties:
/// authType: BASIC_AUTH
/// serverType: BITBUCKET
/// token: example
/// userName: test-user
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### AWS CodeStar Connection Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codebuild.SourceCredential("example", {
/// authType: "CODECONNECTIONS",
/// serverType: "GITHUB",
/// token: "arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codebuild.SourceCredential("example",
/// auth_type="CODECONNECTIONS",
/// server_type="GITHUB",
/// token="arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CodeBuild.SourceCredential("example", new()
/// {
/// AuthType = "CODECONNECTIONS",
/// ServerType = "GITHUB",
/// Token = "arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codebuild.NewSourceCredential(ctx, "example", &codebuild.SourceCredentialArgs{
/// AuthType:   pulumi.String("CODECONNECTIONS"),
/// ServerType: pulumi.String("GITHUB"),
/// Token:      pulumi.String("arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new SourceCredential("example", SourceCredentialArgs.builder()
/// .authType("CODECONNECTIONS")
/// .serverType("GITHUB")
/// .token("arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:codebuild:SourceCredential
/// properties:
/// authType: CODECONNECTIONS
/// serverType: GITHUB
/// token: arn:aws:codestar-connections:us-east-1:123456789012:connection/guid-string
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the CodeBuild source credential.
///
///
/// Using `pulumi import`, import CodeBuild Source Credential using the CodeBuild Source Credential arn. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/sourceCredential:SourceCredential example arn:aws:codebuild:us-west-2:123456789:token:github
/// ```
class SourceCredential extends CustomResource {
  /// The ARN of Source Credential.
  late final Output<String> arn;

  /// The type of authentication used to connect to a GitHub, GitHub Enterprise, or Bitbucket
  /// repository. Valid values are `BASIC_AUTH`,
  /// `PERSONAL_ACCESS_TOKEN`, `CODECONNECTIONS`, and `SECRETS_MANAGER`. An OAUTH connection is not supported by the API.
  late final Output<String> authType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The source provider used for this project.
  late final Output<String> serverType;

  /// For a GitHub and GitHub Enterprise, this is the personal access token. For Bitbucket, this is the
  /// app password. When using an AWS CodeStar connection (<span pulumi-lang-nodejs="`authType " pulumi-lang-dotnet="`AuthType " pulumi-lang-go="`authType " pulumi-lang-python="`auth_type " pulumi-lang-yaml="`authType " pulumi-lang-java="`authType ">`auth_type </span>= "CODECONNECTIONS")`, this is an AWS CodeStar
  /// Connection ARN.
  late final Output<String> token;

  /// The Bitbucket username when the authType is `BASIC_AUTH`. This parameter is not valid for
  /// other types of source providers or connections.
  late final Output<String?> userName;

  SourceCredential(
    String name, {
    SourceCredentialArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/sourceCredential:SourceCredential',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.authType = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.serverType = Output.createUnknown<String>();
    this.token = Output.createUnknown<String>();
    this.userName = Output.createUnknown<String?>();
  }
}
