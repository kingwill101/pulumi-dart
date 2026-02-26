import 'package:pulumi/pulumi.dart';
import '../app_auto_branch_creation_config/app_auto_branch_creation_config.dart';
import '../app_cache_config/app_cache_config.dart';
import '../app_custom_rule/app_custom_rule.dart';
import '../app_job_config/app_job_config.dart';
import '../app_production_branch/app_production_branch.dart';
import 'app_args.dart';

/// Provides an Amplify App resource, a fullstack serverless app hosted on the [AWS Amplify Console](https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html).
///
/// > **Note:** When you create/update an Amplify App from the provider, you may end up with the error "BadRequestException: You should at least provide one valid token" because of authentication issues. See the section "Repository with Tokens" below.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
/// name: "example",
/// repository: "https://github.com/example/app",
/// buildSpec: `version: 0.1
/// frontend:
/// phases:
/// preBuild:
/// commands:
/// - yarn install
/// build:
/// commands:
/// - yarn run build
/// artifacts:
/// baseDirectory: build
/// files:
/// - '**/*'
/// cache:
/// paths:
/// - node_modules/**/*
/// `,
/// customRules: [{
/// source: "/<*>",
/// status: "404",
/// target: "/index.html",
/// }],
/// environmentVariables: {
/// ENV: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
/// name="example",
/// repository="https://github.com/example/app",
/// build_spec="""version: 0.1
/// frontend:
/// phases:
/// preBuild:
/// commands:
/// - yarn install
/// build:
/// commands:
/// - yarn run build
/// artifacts:
/// baseDirectory: build
/// files:
/// - '**/*'
/// cache:
/// paths:
/// - node_modules/**/*
/// """,
/// custom_rules=[{
/// "source": "/<*>",
/// "status": "404",
/// "target": "/index.html",
/// }],
/// environment_variables={
/// "ENV": "test",
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
/// var example = new Aws.Amplify.App("example", new()
/// {
/// Name = "example",
/// Repository = "https://github.com/example/app",
/// BuildSpec = @"version: 0.1
/// frontend:
/// phases:
/// preBuild:
/// commands:
/// - yarn install
/// build:
/// commands:
/// - yarn run build
/// artifacts:
/// baseDirectory: build
/// files:
/// - '**/*'
/// cache:
/// paths:
/// - node_modules/**/*
/// ",
/// CustomRules = new[]
/// {
/// new Aws.Amplify.Inputs.AppCustomRuleArgs
/// {
/// Source = "/<*>",
/// Status = "404",
/// Target = "/index.html",
/// },
/// },
/// EnvironmentVariables =
/// {
/// { "ENV", "test" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// Name:       pulumi.String("example"),
/// Repository: pulumi.String("https://github.com/example/app"),
/// BuildSpec: pulumi.String(`version: 0.1
/// frontend:
/// phases:
/// preBuild:
/// commands:
/// - yarn install
/// build:
/// commands:
/// - yarn run build
/// artifacts:
/// baseDirectory: build
/// files:
/// - '**/*'
/// cache:
/// paths:
/// - node_modules/**/*
/// `),
/// CustomRules: amplify.AppCustomRuleArray{
/// &amplify.AppCustomRuleArgs{
/// Source: pulumi.String("/<*>"),
/// Status: pulumi.String("404"),
/// Target: pulumi.String("/index.html"),
/// },
/// },
/// EnvironmentVariables: pulumi.StringMap{
/// "ENV": pulumi.String("test"),
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
/// import com.pulumi.aws.amplify.inputs.AppCustomRuleArgs;
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
/// var example = new App("example", AppArgs.builder()
/// .name("example")
/// .repository("https://github.com/example/app")
/// .buildSpec("""
/// version: 0.1
/// frontend:
/// phases:
/// preBuild:
/// commands:
/// - yarn install
/// build:
/// commands:
/// - yarn run build
/// artifacts:
/// baseDirectory: build
/// files:
/// - '**/*'
/// cache:
/// paths:
/// - node_modules/**/*
/// """)
/// .customRules(AppCustomRuleArgs.builder()
/// .source("/<*>")
/// .status("404")
/// .target("/index.html")
/// .build())
/// .environmentVariables(Map.of("ENV", "test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:amplify:App
/// properties:
/// name: example
/// repository: https://github.com/example/app
/// buildSpec: |
/// version: 0.1
/// frontend:
/// phases:
/// preBuild:
/// commands:
/// - yarn install
/// build:
/// commands:
/// - yarn run build
/// artifacts:
/// baseDirectory: build
/// files:
/// - '**/*'
/// cache:
/// paths:
/// - node_modules/**/*
/// customRules:
/// - source: /<*>
/// status: '404'
/// target: /index.html
/// environmentVariables:
/// ENV: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Repository with Tokens
///
/// If you create a new Amplify App with the <span pulumi-lang-nodejs="`repository`" pulumi-lang-dotnet="`Repository`" pulumi-lang-go="`repository`" pulumi-lang-python="`repository`" pulumi-lang-yaml="`repository`" pulumi-lang-java="`repository`">`repository`</span> argument, you also need to set <span pulumi-lang-nodejs="`oauthToken`" pulumi-lang-dotnet="`OauthToken`" pulumi-lang-go="`oauthToken`" pulumi-lang-python="`oauth_token`" pulumi-lang-yaml="`oauthToken`" pulumi-lang-java="`oauthToken`">`oauth_token`</span> or <span pulumi-lang-nodejs="`accessToken`" pulumi-lang-dotnet="`AccessToken`" pulumi-lang-go="`accessToken`" pulumi-lang-python="`access_token`" pulumi-lang-yaml="`accessToken`" pulumi-lang-java="`accessToken`">`access_token`</span> for authentication. For GitHub, get a [personal access token](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line) and set <span pulumi-lang-nodejs="`accessToken`" pulumi-lang-dotnet="`AccessToken`" pulumi-lang-go="`accessToken`" pulumi-lang-python="`access_token`" pulumi-lang-yaml="`accessToken`" pulumi-lang-java="`accessToken`">`access_token`</span> as follows:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
/// name: "example",
/// repository: "https://github.com/example/app",
/// accessToken: "...",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
/// name="example",
/// repository="https://github.com/example/app",
/// access_token="...")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Amplify.App("example", new()
/// {
/// Name = "example",
/// Repository = "https://github.com/example/app",
/// AccessToken = "...",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// Name:        pulumi.String("example"),
/// Repository:  pulumi.String("https://github.com/example/app"),
/// AccessToken: pulumi.String("..."),
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
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
/// var example = new App("example", AppArgs.builder()
/// .name("example")
/// .repository("https://github.com/example/app")
/// .accessToken("...")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:amplify:App
/// properties:
/// name: example
/// repository: https://github.com/example/app
/// accessToken: '...'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// You can omit <span pulumi-lang-nodejs="`accessToken`" pulumi-lang-dotnet="`AccessToken`" pulumi-lang-go="`accessToken`" pulumi-lang-python="`access_token`" pulumi-lang-yaml="`accessToken`" pulumi-lang-java="`accessToken`">`access_token`</span> if you import an existing Amplify App created by the Amplify Console (using OAuth for authentication).
///
/// ### Auto Branch Creation
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
/// name: "example",
/// enableAutoBranchCreation: true,
/// autoBranchCreationPatterns: [
/// "*",
/// "*/**",
/// ],
/// autoBranchCreationConfig: {
/// enableAutoBuild: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
/// name="example",
/// enable_auto_branch_creation=True,
/// auto_branch_creation_patterns=[
/// "*",
/// "*/**",
/// ],
/// auto_branch_creation_config={
/// "enable_auto_build": True,
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
/// var example = new Aws.Amplify.App("example", new()
/// {
/// Name = "example",
/// EnableAutoBranchCreation = true,
/// AutoBranchCreationPatterns = new[]
/// {
/// "*",
/// "*/**",
/// },
/// AutoBranchCreationConfig = new Aws.Amplify.Inputs.AppAutoBranchCreationConfigArgs
/// {
/// EnableAutoBuild = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// Name:                     pulumi.String("example"),
/// EnableAutoBranchCreation: pulumi.Bool(true),
/// AutoBranchCreationPatterns: pulumi.StringArray{
/// pulumi.String("*"),
/// pulumi.String("*/**"),
/// },
/// AutoBranchCreationConfig: &amplify.AppAutoBranchCreationConfigArgs{
/// EnableAutoBuild: pulumi.Bool(true),
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
/// import com.pulumi.aws.amplify.inputs.AppAutoBranchCreationConfigArgs;
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
/// var example = new App("example", AppArgs.builder()
/// .name("example")
/// .enableAutoBranchCreation(true)
/// .autoBranchCreationPatterns(
/// "*",
/// "*/**")
/// .autoBranchCreationConfig(AppAutoBranchCreationConfigArgs.builder()
/// .enableAutoBuild(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:amplify:App
/// properties:
/// name: example
/// enableAutoBranchCreation: true # The default patterns added by the Amplify Console.
/// autoBranchCreationPatterns:
/// - '*'
/// - '*/**'
/// autoBranchCreationConfig:
/// enableAutoBuild: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Basic Authorization
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.amplify.App("example", {
/// name: "example",
/// enableBasicAuth: true,
/// basicAuthCredentials: std.base64encode({
/// input: "username1:password1",
/// }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.amplify.App("example",
/// name="example",
/// enable_basic_auth=True,
/// basic_auth_credentials=std.base64encode(input="username1:password1").result)
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
/// var example = new Aws.Amplify.App("example", new()
/// {
/// Name = "example",
/// EnableBasicAuth = true,
/// BasicAuthCredentials = Std.Base64encode.Invoke(new()
/// {
/// Input = "username1:password1",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// Input: "username1:password1",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// Name:                 pulumi.String("example"),
/// EnableBasicAuth:      pulumi.Bool(true),
/// BasicAuthCredentials: pulumi.String(invokeBase64encode.Result),
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
/// var example = new App("example", AppArgs.builder()
/// .name("example")
/// .enableBasicAuth(true)
/// .basicAuthCredentials(StdFunctions.base64encode(Base64encodeArgs.builder()
/// .input("username1:password1")
/// .build()).result())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:amplify:App
/// properties:
/// name: example
/// enableBasicAuth: true
/// basicAuthCredentials:
/// fn::invoke:
/// function: std:base64encode
/// arguments:
/// input: username1:password1
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Rewrites and Redirects
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
/// name: "example",
/// customRules: [
/// {
/// source: "/api/<*>",
/// status: "200",
/// target: "https://api.example.com/api/<*>",
/// },
/// {
/// source: "</^[^.]+$|\\.(?!(css|gif|ico|jpg|js|png|txt|svg|woff|ttf|map|json)$)([^.]+$)/>",
/// status: "200",
/// target: "/index.html",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
/// name="example",
/// custom_rules=[
/// {
/// "source": "/api/<*>",
/// "status": "200",
/// "target": "https://api.example.com/api/<*>",
/// },
/// {
/// "source": "</^[^.]+$|\\.(?!(css|gif|ico|jpg|js|png|txt|svg|woff|ttf|map|json)$)([^.]+$)/>",
/// "status": "200",
/// "target": "/index.html",
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
/// var example = new Aws.Amplify.App("example", new()
/// {
/// Name = "example",
/// CustomRules = new[]
/// {
/// new Aws.Amplify.Inputs.AppCustomRuleArgs
/// {
/// Source = "/api/<*>",
/// Status = "200",
/// Target = "https://api.example.com/api/<*>",
/// },
/// new Aws.Amplify.Inputs.AppCustomRuleArgs
/// {
/// Source = "</^[^.]+$|\\.(?!(css|gif|ico|jpg|js|png|txt|svg|woff|ttf|map|json)$)([^.]+$)/>",
/// Status = "200",
/// Target = "/index.html",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// Name: pulumi.String("example"),
/// CustomRules: amplify.AppCustomRuleArray{
/// &amplify.AppCustomRuleArgs{
/// Source: pulumi.String("/api/<*>"),
/// Status: pulumi.String("200"),
/// Target: pulumi.String("https://api.example.com/api/<*>"),
/// },
/// &amplify.AppCustomRuleArgs{
/// Source: pulumi.String("</^[^.]+$|\\.(?!(css|gif|ico|jpg|js|png|txt|svg|woff|ttf|map|json)$)([^.]+$)/>"),
/// Status: pulumi.String("200"),
/// Target: pulumi.String("/index.html"),
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
/// import com.pulumi.aws.amplify.inputs.AppCustomRuleArgs;
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
/// var example = new App("example", AppArgs.builder()
/// .name("example")
/// .customRules(
/// AppCustomRuleArgs.builder()
/// .source("/api/<*>")
/// .status("200")
/// .target("https://api.example.com/api/<*>")
/// .build(),
/// AppCustomRuleArgs.builder()
/// .source("</^[^.]+$|\\.(?!(css|gif|ico|jpg|js|png|txt|svg|woff|ttf|map|json)$)([^.]+$)/>")
/// .status("200")
/// .target("/index.html")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:amplify:App
/// properties:
/// name: example
/// customRules:
/// - source: /api/<*>
/// status: '200'
/// target: https://api.example.com/api/<*>
/// - source: </^[^.]+$|\.(?!(css|gif|ico|jpg|js|png|txt|svg|woff|ttf|map|json)$)([^.]+$)/>
/// status: '200'
/// target: /index.html
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Custom Image
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
/// name: "example",
/// environmentVariables: {
/// _CUSTOM_IMAGE: "node:16",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
/// name="example",
/// environment_variables={
/// "_CUSTOM_IMAGE": "node:16",
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
/// var example = new Aws.Amplify.App("example", new()
/// {
/// Name = "example",
/// EnvironmentVariables =
/// {
/// { "_CUSTOM_IMAGE", "node:16" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// Name: pulumi.String("example"),
/// EnvironmentVariables: pulumi.StringMap{
/// "_CUSTOM_IMAGE": pulumi.String("node:16"),
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
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
/// var example = new App("example", AppArgs.builder()
/// .name("example")
/// .environmentVariables(Map.of("_CUSTOM_IMAGE", "node:16"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:amplify:App
/// properties:
/// name: example
/// environmentVariables:
/// _CUSTOM_IMAGE: node:16
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Custom Headers
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
/// name: "example",
/// customHeaders: `customHeaders:
/// - pattern: '**'
/// headers:
/// - key: 'Strict-Transport-Security'
/// value: 'max-age=31536000; includeSubDomains'
/// - key: 'X-Frame-Options'
/// value: 'SAMEORIGIN'
/// - key: 'X-XSS-Protection'
/// value: '1; mode=block'
/// - key: 'X-Content-Type-Options'
/// value: 'nosniff'
/// - key: 'Content-Security-Policy'
/// value: \\"default-src 'self'\\"
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
/// name="example",
/// custom_headers="""customHeaders:
/// - pattern: '**'
/// headers:
/// - key: 'Strict-Transport-Security'
/// value: 'max-age=31536000; includeSubDomains'
/// - key: 'X-Frame-Options'
/// value: 'SAMEORIGIN'
/// - key: 'X-XSS-Protection'
/// value: '1; mode=block'
/// - key: 'X-Content-Type-Options'
/// value: 'nosniff'
/// - key: 'Content-Security-Policy'
/// value: \"default-src 'self'\"
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
/// var example = new Aws.Amplify.App("example", new()
/// {
/// Name = "example",
/// CustomHeaders = @"customHeaders:
/// - pattern: '**'
/// headers:
/// - key: 'Strict-Transport-Security'
/// value: 'max-age=31536000; includeSubDomains'
/// - key: 'X-Frame-Options'
/// value: 'SAMEORIGIN'
/// - key: 'X-XSS-Protection'
/// value: '1; mode=block'
/// - key: 'X-Content-Type-Options'
/// value: 'nosniff'
/// - key: 'Content-Security-Policy'
/// value: \""default-src 'self'\""
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// Name: pulumi.String("example"),
/// CustomHeaders: pulumi.String(`customHeaders:
/// - pattern: '**'
/// headers:
/// - key: 'Strict-Transport-Security'
/// value: 'max-age=31536000; includeSubDomains'
/// - key: 'X-Frame-Options'
/// value: 'SAMEORIGIN'
/// - key: 'X-XSS-Protection'
/// value: '1; mode=block'
/// - key: 'X-Content-Type-Options'
/// value: 'nosniff'
/// - key: 'Content-Security-Policy'
/// value: \"default-src 'self'\"
/// `),
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
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
/// var example = new App("example", AppArgs.builder()
/// .name("example")
/// .customHeaders("""
/// customHeaders:
/// - pattern: '**'
/// headers:
/// - key: 'Strict-Transport-Security'
/// value: 'max-age=31536000; includeSubDomains'
/// - key: 'X-Frame-Options'
/// value: 'SAMEORIGIN'
/// - key: 'X-XSS-Protection'
/// value: '1; mode=block'
/// - key: 'X-Content-Type-Options'
/// value: 'nosniff'
/// - key: 'Content-Security-Policy'
/// value: \"default-src 'self'\"
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:amplify:App
/// properties:
/// name: example
/// customHeaders: |
/// customHeaders:
/// - pattern: '**'
/// headers:
/// - key: 'Strict-Transport-Security'
/// value: 'max-age=31536000; includeSubDomains'
/// - key: 'X-Frame-Options'
/// value: 'SAMEORIGIN'
/// - key: 'X-XSS-Protection'
/// value: '1; mode=block'
/// - key: 'X-Content-Type-Options'
/// value: 'nosniff'
/// - key: 'Content-Security-Policy'
/// value: \"default-src 'self'\"
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Job Config
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
/// name: "example",
/// jobConfig: {
/// buildComputeType: "STANDARD_8GB",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
/// name="example",
/// job_config={
/// "build_compute_type": "STANDARD_8GB",
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
/// var example = new Aws.Amplify.App("example", new()
/// {
/// Name = "example",
/// JobConfig = new Aws.Amplify.Inputs.AppJobConfigArgs
/// {
/// BuildComputeType = "STANDARD_8GB",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// Name: pulumi.String("example"),
/// JobConfig: &amplify.AppJobConfigArgs{
/// BuildComputeType: pulumi.String("STANDARD_8GB"),
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
/// import com.pulumi.aws.amplify.inputs.AppJobConfigArgs;
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
/// var example = new App("example", AppArgs.builder()
/// .name("example")
/// .jobConfig(AppJobConfigArgs.builder()
/// .buildComputeType("STANDARD_8GB")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:amplify:App
/// properties:
/// name: example
/// jobConfig:
/// buildComputeType: STANDARD_8GB
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Amplify App using Amplify App ID (appId). For example:
///
/// ```sh
/// $ pulumi import aws:amplify/app:App example d2ypk4k47z8u6
/// ```
///
/// App ID can be obtained from App ARN (e.g., `arn:aws:amplify:us-east-1:12345678:apps/d2ypk4k47z8u6`).
class App extends CustomResource {
  /// Personal access token for a third-party source control system for an Amplify app. This token must have write access to the relevant repo to create a webhook and a read-only deploy key for the Amplify project. The token is not stored, so after applying this attribute can be removed and the setup token deleted.
  late final Output<String?> accessToken;

  /// ARN of the Amplify app.
  late final Output<String> arn;

  /// Automated branch creation configuration for an Amplify app. See <span pulumi-lang-nodejs="`autoBranchCreationConfig`" pulumi-lang-dotnet="`AutoBranchCreationConfig`" pulumi-lang-go="`autoBranchCreationConfig`" pulumi-lang-python="`auto_branch_creation_config`" pulumi-lang-yaml="`autoBranchCreationConfig`" pulumi-lang-java="`autoBranchCreationConfig`">`auto_branch_creation_config`</span> Block for details.
  late final Output<AppAutoBranchCreationConfig> autoBranchCreationConfig;

  /// Automated branch creation glob patterns for an Amplify app.
  late final Output<List<String>?> autoBranchCreationPatterns;

  /// Credentials for basic authorization for an Amplify app.
  late final Output<String?> basicAuthCredentials;

  /// The [build specification](https://docs.aws.amazon.com/amplify/latest/userguide/build-settings.html) (build spec) for an Amplify app.
  late final Output<String> buildSpec;

  /// Cache configuration for the Amplify app. See <span pulumi-lang-nodejs="`cacheConfig`" pulumi-lang-dotnet="`CacheConfig`" pulumi-lang-go="`cacheConfig`" pulumi-lang-python="`cache_config`" pulumi-lang-yaml="`cacheConfig`" pulumi-lang-java="`cacheConfig`">`cache_config`</span> Block for details.
  late final Output<AppCacheConfig> cacheConfig;

  /// AWS Identity and Access Management (IAM) SSR compute role for an Amplify app.
  late final Output<String?> computeRoleArn;

  /// The [custom HTTP headers](https://docs.aws.amazon.com/amplify/latest/userguide/custom-headers.html) for an Amplify app.
  late final Output<String> customHeaders;

  /// Custom rewrite and redirect rules for an Amplify app. See <span pulumi-lang-nodejs="`customRule`" pulumi-lang-dotnet="`CustomRule`" pulumi-lang-go="`customRule`" pulumi-lang-python="`custom_rule`" pulumi-lang-yaml="`customRule`" pulumi-lang-java="`customRule`">`custom_rule`</span> Block for details.
  late final Output<List<AppCustomRule>?> customRules;

  /// Default domain for the Amplify app.
  late final Output<String> defaultDomain;

  /// Description for an Amplify app.
  late final Output<String?> description;

  /// Enables automated branch creation for an Amplify app.
  late final Output<bool?> enableAutoBranchCreation;

  /// Enables basic authorization for an Amplify app. This will apply to all branches that are part of this app.
  late final Output<bool?> enableBasicAuth;

  /// Enables auto-building of branches for the Amplify App.
  late final Output<bool?> enableBranchAutoBuild;

  /// Automatically disconnects a branch in the Amplify Console when you delete a branch from your Git repository.
  late final Output<bool?> enableBranchAutoDeletion;

  /// Environment variables map for an Amplify app.
  late final Output<Map<String, String>?> environmentVariables;

  /// AWS Identity and Access Management (IAM) service role for an Amplify app.
  late final Output<String?> iamServiceRoleArn;

  /// Used to configure the [Amplify Application build instance compute type](https://docs.aws.amazon.com/amplify/latest/APIReference/API_JobConfig.html#amplify-Type-JobConfig-buildComputeType). See <span pulumi-lang-nodejs="`jobConfig`" pulumi-lang-dotnet="`JobConfig`" pulumi-lang-go="`jobConfig`" pulumi-lang-python="`job_config`" pulumi-lang-yaml="`jobConfig`" pulumi-lang-java="`jobConfig`">`job_config`</span> Block for details.
  late final Output<AppJobConfig> jobConfig;

  /// Name for an Amplify app.
  late final Output<String> name;

  /// OAuth token for a third-party source control system for an Amplify app. The OAuth token is used to create a webhook and a read-only deploy key. The OAuth token is not stored.
  late final Output<String?> oauthToken;

  /// Platform or framework for an Amplify app. Valid values: `WEB`, `WEB_COMPUTE`. Default value: `WEB`.
  late final Output<String?> platform;

  /// Describes the information about a production branch for an Amplify app. A <span pulumi-lang-nodejs="`productionBranch`" pulumi-lang-dotnet="`ProductionBranch`" pulumi-lang-go="`productionBranch`" pulumi-lang-python="`production_branch`" pulumi-lang-yaml="`productionBranch`" pulumi-lang-java="`productionBranch`">`production_branch`</span> block is documented below.
  late final Output<List<AppProductionBranch>> productionBranches;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Repository for an Amplify app.
  late final Output<String?> repository;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  App(
    String name, {
    AppArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amplify/app:App',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessToken = registerOutput<String?>('accessToken');
    this.arn = registerOutput<String>('arn');
    this.autoBranchCreationConfig =
        registerOutput<AppAutoBranchCreationConfig>('autoBranchCreationConfig');
    this.autoBranchCreationPatterns =
        registerOutput<List<String>?>('autoBranchCreationPatterns');
    this.basicAuthCredentials = registerOutput<String?>('basicAuthCredentials');
    this.buildSpec = registerOutput<String>('buildSpec');
    this.cacheConfig = registerOutput<AppCacheConfig>('cacheConfig');
    this.computeRoleArn = registerOutput<String?>('computeRoleArn');
    this.customHeaders = registerOutput<String>('customHeaders');
    this.customRules = registerOutput<List<AppCustomRule>?>('customRules');
    this.defaultDomain = registerOutput<String>('defaultDomain');
    this.description = registerOutput<String?>('description');
    this.enableAutoBranchCreation =
        registerOutput<bool?>('enableAutoBranchCreation');
    this.enableBasicAuth = registerOutput<bool?>('enableBasicAuth');
    this.enableBranchAutoBuild = registerOutput<bool?>('enableBranchAutoBuild');
    this.enableBranchAutoDeletion =
        registerOutput<bool?>('enableBranchAutoDeletion');
    this.environmentVariables =
        registerOutput<Map<String, String>?>('environmentVariables');
    this.iamServiceRoleArn = registerOutput<String?>('iamServiceRoleArn');
    this.jobConfig = registerOutput<AppJobConfig>('jobConfig');
    this.name = registerOutput<String>('name');
    this.oauthToken = registerOutput<String?>('oauthToken');
    this.platform = registerOutput<String?>('platform');
    this.productionBranches =
        registerOutput<List<AppProductionBranch>>('productionBranches');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<String?>('repository');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
