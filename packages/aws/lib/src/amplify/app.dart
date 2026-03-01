import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_args.dart';
import 'app_auto_branch_creation_config.dart';
import 'app_cache_config.dart';
import 'app_custom_rule.dart';
import 'app_job_config.dart';
import 'app_production_branch.dart';

/// Provides an Amplify App resource, a fullstack serverless app hosted on the [AWS Amplify Console](https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html).
///
/// > **Note:** When you create/update an Amplify App from the provider, you may end up with the error "BadRequestException: You should at least provide one valid token" because of authentication issues. See the section "Repository with Tokens" below.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
///     name: "example",
///     repository: "https://github.com/example/app",
///     buildSpec: `version: 0.1
/// frontend:
///   phases:
///     preBuild:
///       commands:
///         - yarn install
///     build:
///       commands:
///         - yarn run build
///   artifacts:
///     baseDirectory: build
///     files:
///       - '**/*'
///   cache:
///     paths:
///       - node_modules/**/*
/// `,
///     customRules: [{
///         source: "/<*>",
///         status: "404",
///         target: "/index.html",
///     }],
///     environmentVariables: {
///         ENV: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
///     name="example",
///     repository="https://github.com/example/app",
///     build_spec="""version: 0.1
/// frontend:
///   phases:
///     preBuild:
///       commands:
///         - yarn install
///     build:
///       commands:
///         - yarn run build
///   artifacts:
///     baseDirectory: build
///     files:
///       - '**/*'
///   cache:
///     paths:
///       - node_modules/**/*
/// """,
///     custom_rules=[{
///         "source": "/<*>",
///         "status": "404",
///         "target": "/index.html",
///     }],
///     environment_variables={
///         "ENV": "test",
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
///     var example = new Aws.Amplify.App("example", new()
///     {
///         Name = "example",
///         Repository = "https://github.com/example/app",
///         BuildSpec = @"version: 0.1
/// frontend:
///   phases:
///     preBuild:
///       commands:
///         - yarn install
///     build:
///       commands:
///         - yarn run build
///   artifacts:
///     baseDirectory: build
///     files:
///       - '**/*'
///   cache:
///     paths:
///       - node_modules/**/*
/// ",
///         CustomRules = new[]
///         {
///             new Aws.Amplify.Inputs.AppCustomRuleArgs
///             {
///                 Source = "/<*>",
///                 Status = "404",
///                 Target = "/index.html",
///             },
///         },
///         EnvironmentVariables =
///         {
///             { "ENV", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// 			Name:       pulumi.String("example"),
/// 			Repository: pulumi.String("https://github.com/example/app"),
/// 			BuildSpec: pulumi.String(`version: 0.1
/// frontend:
///   phases:
///     preBuild:
///       commands:
///         - yarn install
///     build:
///       commands:
///         - yarn run build
///   artifacts:
///     baseDirectory: build
///     files:
///       - '**/*'
///   cache:
///     paths:
///       - node_modules/**/*
/// `),
/// 			CustomRules: amplify.AppCustomRuleArray{
/// 				&amplify.AppCustomRuleArgs{
/// 					Source: pulumi.String("/<*>"),
/// 					Status: pulumi.String("404"),
/// 					Target: pulumi.String("/index.html"),
/// 				},
/// 			},
/// 			EnvironmentVariables: pulumi.StringMap{
/// 				"ENV": pulumi.String("test"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new App("example", AppArgs.builder()
///             .name("example")
///             .repository("https://github.com/example/app")
///             .buildSpec("""
/// version: 0.1
/// frontend:
///   phases:
///     preBuild:
///       commands:
///         - yarn install
///     build:
///       commands:
///         - yarn run build
///   artifacts:
///     baseDirectory: build
///     files:
///       - '**/*'
///   cache:
///     paths:
///       - node_modules/**/*
///             """)
///             .customRules(AppCustomRuleArgs.builder()
///                 .source("/<*>")
///                 .status("404")
///                 .target("/index.html")
///                 .build())
///             .environmentVariables(Map.of("ENV", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amplify:App
///     properties:
///       name: example
///       repository: https://github.com/example/app
///       buildSpec: |
///         version: 0.1
///         frontend:
///           phases:
///             preBuild:
///               commands:
///                 - yarn install
///             build:
///               commands:
///                 - yarn run build
///           artifacts:
///             baseDirectory: build
///             files:
///               - '**/*'
///           cache:
///             paths:
///               - node_modules/**/*
///       customRules:
///         - source: /<*>
///           status: '404'
///           target: /index.html
///       environmentVariables:
///         ENV: test
/// ```
///
///
/// ### Repository with Tokens
///
/// If you create a new Amplify App with the `repository` argument, you also need to set `oauth_token` or `access_token` for authentication. For GitHub, get a [personal access token](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line) and set `access_token` as follows:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
///     name: "example",
///     repository: "https://github.com/example/app",
///     accessToken: "...",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
///     name="example",
///     repository="https://github.com/example/app",
///     access_token="...")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amplify.App("example", new()
///     {
///         Name = "example",
///         Repository = "https://github.com/example/app",
///         AccessToken = "...",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// 			Name:        pulumi.String("example"),
/// 			Repository:  pulumi.String("https://github.com/example/app"),
/// 			AccessToken: pulumi.String("..."),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new App("example", AppArgs.builder()
///             .name("example")
///             .repository("https://github.com/example/app")
///             .accessToken("...")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amplify:App
///     properties:
///       name: example
///       repository: https://github.com/example/app
///       accessToken: '...'
/// ```
///
///
/// You can omit `access_token` if you import an existing Amplify App created by the Amplify Console (using OAuth for authentication).
///
/// ### Auto Branch Creation
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
///     name: "example",
///     enableAutoBranchCreation: true,
///     autoBranchCreationPatterns: [
///         "*",
///         "*/**",
///     ],
///     autoBranchCreationConfig: {
///         enableAutoBuild: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
///     name="example",
///     enable_auto_branch_creation=True,
///     auto_branch_creation_patterns=[
///         "*",
///         "*/**",
///     ],
///     auto_branch_creation_config={
///         "enable_auto_build": True,
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
///     var example = new Aws.Amplify.App("example", new()
///     {
///         Name = "example",
///         EnableAutoBranchCreation = true,
///         AutoBranchCreationPatterns = new[]
///         {
///             "*",
///             "*/**",
///         },
///         AutoBranchCreationConfig = new Aws.Amplify.Inputs.AppAutoBranchCreationConfigArgs
///         {
///             EnableAutoBuild = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// 			Name:                     pulumi.String("example"),
/// 			EnableAutoBranchCreation: pulumi.Bool(true),
/// 			AutoBranchCreationPatterns: pulumi.StringArray{
/// 				pulumi.String("*"),
/// 				pulumi.String("*/**"),
/// 			},
/// 			AutoBranchCreationConfig: &amplify.AppAutoBranchCreationConfigArgs{
/// 				EnableAutoBuild: pulumi.Bool(true),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new App("example", AppArgs.builder()
///             .name("example")
///             .enableAutoBranchCreation(true)
///             .autoBranchCreationPatterns(
///                 "*",
///                 "*/**")
///             .autoBranchCreationConfig(AppAutoBranchCreationConfigArgs.builder()
///                 .enableAutoBuild(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amplify:App
///     properties:
///       name: example
///       enableAutoBranchCreation: true # The default patterns added by the Amplify Console.
///       autoBranchCreationPatterns:
///         - '*'
///         - '*/**'
///       autoBranchCreationConfig:
///         enableAutoBuild: true
/// ```
///
///
/// ### Basic Authorization
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.amplify.App("example", {
///     name: "example",
///     enableBasicAuth: true,
///     basicAuthCredentials: std.base64encode({
///         input: "username1:password1",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.amplify.App("example",
///     name="example",
///     enable_basic_auth=True,
///     basic_auth_credentials=std.base64encode(input="username1:password1").result)
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
///     var example = new Aws.Amplify.App("example", new()
///     {
///         Name = "example",
///         EnableBasicAuth = true,
///         BasicAuthCredentials = Std.Base64encode.Invoke(new()
///         {
///             Input = "username1:password1",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "username1:password1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// 			Name:                 pulumi.String("example"),
/// 			EnableBasicAuth:      pulumi.Bool(true),
/// 			BasicAuthCredentials: pulumi.String(invokeBase64encode.Result),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new App("example", AppArgs.builder()
///             .name("example")
///             .enableBasicAuth(true)
///             .basicAuthCredentials(StdFunctions.base64encode(Base64encodeArgs.builder()
///                 .input("username1:password1")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amplify:App
///     properties:
///       name: example
///       enableBasicAuth: true
///       basicAuthCredentials:
///         fn::invoke:
///           function: std:base64encode
///           arguments:
///             input: username1:password1
///           return: result
/// ```
///
///
/// ### Rewrites and Redirects
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
///     name: "example",
///     customRules: [
///         {
///             source: "/api/<*>",
///             status: "200",
///             target: "https://api.example.com/api/<*>",
///         },
///         {
///             source: "</^[^.]+$|\\.(?!(css|gif|ico|jpg|js|png|txt|svg|woff|ttf|map|json)$)([^.]+$)/>",
///             status: "200",
///             target: "/index.html",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
///     name="example",
///     custom_rules=[
///         {
///             "source": "/api/<*>",
///             "status": "200",
///             "target": "https://api.example.com/api/<*>",
///         },
///         {
///             "source": "</^[^.]+$|\\.(?!(css|gif|ico|jpg|js|png|txt|svg|woff|ttf|map|json)$)([^.]+$)/>",
///             "status": "200",
///             "target": "/index.html",
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
///     var example = new Aws.Amplify.App("example", new()
///     {
///         Name = "example",
///         CustomRules = new[]
///         {
///             new Aws.Amplify.Inputs.AppCustomRuleArgs
///             {
///                 Source = "/api/<*>",
///                 Status = "200",
///                 Target = "https://api.example.com/api/<*>",
///             },
///             new Aws.Amplify.Inputs.AppCustomRuleArgs
///             {
///                 Source = "</^[^.]+$|\\.(?!(css|gif|ico|jpg|js|png|txt|svg|woff|ttf|map|json)$)([^.]+$)/>",
///                 Status = "200",
///                 Target = "/index.html",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// 			Name: pulumi.String("example"),
/// 			CustomRules: amplify.AppCustomRuleArray{
/// 				&amplify.AppCustomRuleArgs{
/// 					Source: pulumi.String("/api/<*>"),
/// 					Status: pulumi.String("200"),
/// 					Target: pulumi.String("https://api.example.com/api/<*>"),
/// 				},
/// 				&amplify.AppCustomRuleArgs{
/// 					Source: pulumi.String("</^[^.]+$|\\.(?!(css|gif|ico|jpg|js|png|txt|svg|woff|ttf|map|json)$)([^.]+$)/>"),
/// 					Status: pulumi.String("200"),
/// 					Target: pulumi.String("/index.html"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new App("example", AppArgs.builder()
///             .name("example")
///             .customRules(
///                 AppCustomRuleArgs.builder()
///                     .source("/api/<*>")
///                     .status("200")
///                     .target("https://api.example.com/api/<*>")
///                     .build(),
///                 AppCustomRuleArgs.builder()
///                     .source("</^[^.]+$|\\.(?!(css|gif|ico|jpg|js|png|txt|svg|woff|ttf|map|json)$)([^.]+$)/>")
///                     .status("200")
///                     .target("/index.html")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amplify:App
///     properties:
///       name: example
///       customRules:
///         - source: /api/<*>
///           status: '200'
///           target: https://api.example.com/api/<*>
///         - source: </^[^.]+$|\.(?!(css|gif|ico|jpg|js|png|txt|svg|woff|ttf|map|json)$)([^.]+$)/>
///           status: '200'
///           target: /index.html
/// ```
///
///
/// ### Custom Image
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
///     name: "example",
///     environmentVariables: {
///         _CUSTOM_IMAGE: "node:16",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
///     name="example",
///     environment_variables={
///         "_CUSTOM_IMAGE": "node:16",
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
///     var example = new Aws.Amplify.App("example", new()
///     {
///         Name = "example",
///         EnvironmentVariables =
///         {
///             { "_CUSTOM_IMAGE", "node:16" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// 			Name: pulumi.String("example"),
/// 			EnvironmentVariables: pulumi.StringMap{
/// 				"_CUSTOM_IMAGE": pulumi.String("node:16"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new App("example", AppArgs.builder()
///             .name("example")
///             .environmentVariables(Map.of("_CUSTOM_IMAGE", "node:16"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amplify:App
///     properties:
///       name: example
///       environmentVariables:
///         _CUSTOM_IMAGE: node:16
/// ```
///
///
/// ### Custom Headers
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
///     name: "example",
///     customHeaders: `customHeaders:
///   - pattern: '**'
///     headers:
///       - key: 'Strict-Transport-Security'
///         value: 'max-age=31536000; includeSubDomains'
///       - key: 'X-Frame-Options'
///         value: 'SAMEORIGIN'
///       - key: 'X-XSS-Protection'
///         value: '1; mode=block'
///       - key: 'X-Content-Type-Options'
///         value: 'nosniff'
///       - key: 'Content-Security-Policy'
///         value: \\"default-src 'self'\\"
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
///     name="example",
///     custom_headers="""customHeaders:
///   - pattern: '**'
///     headers:
///       - key: 'Strict-Transport-Security'
///         value: 'max-age=31536000; includeSubDomains'
///       - key: 'X-Frame-Options'
///         value: 'SAMEORIGIN'
///       - key: 'X-XSS-Protection'
///         value: '1; mode=block'
///       - key: 'X-Content-Type-Options'
///         value: 'nosniff'
///       - key: 'Content-Security-Policy'
///         value: \"default-src 'self'\"
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
///     var example = new Aws.Amplify.App("example", new()
///     {
///         Name = "example",
///         CustomHeaders = @"customHeaders:
///   - pattern: '**'
///     headers:
///       - key: 'Strict-Transport-Security'
///         value: 'max-age=31536000; includeSubDomains'
///       - key: 'X-Frame-Options'
///         value: 'SAMEORIGIN'
///       - key: 'X-XSS-Protection'
///         value: '1; mode=block'
///       - key: 'X-Content-Type-Options'
///         value: 'nosniff'
///       - key: 'Content-Security-Policy'
///         value: \""default-src 'self'\""
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// 			Name: pulumi.String("example"),
/// 			CustomHeaders: pulumi.String(`customHeaders:
///   - pattern: '**'
///     headers:
///       - key: 'Strict-Transport-Security'
///         value: 'max-age=31536000; includeSubDomains'
///       - key: 'X-Frame-Options'
///         value: 'SAMEORIGIN'
///       - key: 'X-XSS-Protection'
///         value: '1; mode=block'
///       - key: 'X-Content-Type-Options'
///         value: 'nosniff'
///       - key: 'Content-Security-Policy'
///         value: \"default-src 'self'\"
/// `),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new App("example", AppArgs.builder()
///             .name("example")
///             .customHeaders("""
/// customHeaders:
///   - pattern: '**'
///     headers:
///       - key: 'Strict-Transport-Security'
///         value: 'max-age=31536000; includeSubDomains'
///       - key: 'X-Frame-Options'
///         value: 'SAMEORIGIN'
///       - key: 'X-XSS-Protection'
///         value: '1; mode=block'
///       - key: 'X-Content-Type-Options'
///         value: 'nosniff'
///       - key: 'Content-Security-Policy'
///         value: \"default-src 'self'\"
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amplify:App
///     properties:
///       name: example
///       customHeaders: |
///         customHeaders:
///           - pattern: '**'
///             headers:
///               - key: 'Strict-Transport-Security'
///                 value: 'max-age=31536000; includeSubDomains'
///               - key: 'X-Frame-Options'
///                 value: 'SAMEORIGIN'
///               - key: 'X-XSS-Protection'
///                 value: '1; mode=block'
///               - key: 'X-Content-Type-Options'
///                 value: 'nosniff'
///               - key: 'Content-Security-Policy'
///                 value: \"default-src 'self'\"
/// ```
///
///
/// ### Job Config
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
///     name: "example",
///     jobConfig: {
///         buildComputeType: "STANDARD_8GB",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
///     name="example",
///     job_config={
///         "build_compute_type": "STANDARD_8GB",
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
///     var example = new Aws.Amplify.App("example", new()
///     {
///         Name = "example",
///         JobConfig = new Aws.Amplify.Inputs.AppJobConfigArgs
///         {
///             BuildComputeType = "STANDARD_8GB",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// 			Name: pulumi.String("example"),
/// 			JobConfig: &amplify.AppJobConfigArgs{
/// 				BuildComputeType: pulumi.String("STANDARD_8GB"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new App("example", AppArgs.builder()
///             .name("example")
///             .jobConfig(AppJobConfigArgs.builder()
///                 .buildComputeType("STANDARD_8GB")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amplify:App
///     properties:
///       name: example
///       jobConfig:
///         buildComputeType: STANDARD_8GB
/// ```
///
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
class App extends pulumi.CustomResource {
  /// Personal access token for a third-party source control system for an Amplify app. This token must have write access to the relevant repo to create a webhook and a read-only deploy key for the Amplify project. The token is not stored, so after applying this attribute can be removed and the setup token deleted.
  late final pulumi.Output<String?> accessToken;
  /// ARN of the Amplify app.
  late final pulumi.Output<String> arn;
  /// Automated branch creation configuration for an Amplify app. See `auto_branch_creation_config` Block for details.
  late final pulumi.Output<AppAutoBranchCreationConfig> autoBranchCreationConfig;
  /// Automated branch creation glob patterns for an Amplify app.
  late final pulumi.Output<List<String>?> autoBranchCreationPatterns;
  /// Credentials for basic authorization for an Amplify app.
  late final pulumi.Output<String?> basicAuthCredentials;
  /// The [build specification](https://docs.aws.amazon.com/amplify/latest/userguide/build-settings.html) (build spec) for an Amplify app.
  late final pulumi.Output<String> buildSpec;
  /// Cache configuration for the Amplify app. See `cache_config` Block for details.
  late final pulumi.Output<AppCacheConfig> cacheConfig;
  /// AWS Identity and Access Management (IAM) SSR compute role for an Amplify app.
  late final pulumi.Output<String?> computeRoleArn;
  /// The [custom HTTP headers](https://docs.aws.amazon.com/amplify/latest/userguide/custom-headers.html) for an Amplify app.
  late final pulumi.Output<String> customHeaders;
  /// Custom rewrite and redirect rules for an Amplify app. See `custom_rule` Block for details.
  late final pulumi.Output<List<AppCustomRule>?> customRules;
  /// Default domain for the Amplify app.
  late final pulumi.Output<String> defaultDomain;
  /// Description for an Amplify app.
  late final pulumi.Output<String?> description;
  /// Enables automated branch creation for an Amplify app.
  late final pulumi.Output<bool?> enableAutoBranchCreation;
  /// Enables basic authorization for an Amplify app. This will apply to all branches that are part of this app.
  late final pulumi.Output<bool?> enableBasicAuth;
  /// Enables auto-building of branches for the Amplify App.
  late final pulumi.Output<bool?> enableBranchAutoBuild;
  /// Automatically disconnects a branch in the Amplify Console when you delete a branch from your Git repository.
  late final pulumi.Output<bool?> enableBranchAutoDeletion;
  /// Environment variables map for an Amplify app.
  late final pulumi.Output<Map<String, String>?> environmentVariables;
  /// AWS Identity and Access Management (IAM) service role for an Amplify app.
  late final pulumi.Output<String?> iamServiceRoleArn;
  /// Used to configure the [Amplify Application build instance compute type](https://docs.aws.amazon.com/amplify/latest/APIReference/API_JobConfig.html#amplify-Type-JobConfig-buildComputeType). See `job_config` Block for details.
  late final pulumi.Output<AppJobConfig> jobConfig;
  /// Name for an Amplify app.
  late final pulumi.Output<String> name;
  /// OAuth token for a third-party source control system for an Amplify app. The OAuth token is used to create a webhook and a read-only deploy key. The OAuth token is not stored.
  late final pulumi.Output<String?> oauthToken;
  /// Platform or framework for an Amplify app. Valid values: `WEB`, `WEB_COMPUTE`. Default value: `WEB`.
  late final pulumi.Output<String?> platform;
  /// Describes the information about a production branch for an Amplify app. A `production_branch` block is documented below.
  late final pulumi.Output<List<AppProductionBranch>> productionBranches;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Repository for an Amplify app.
  late final pulumi.Output<String?> repository;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [App].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [App]. {@macro pulumi_amplify_app_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  App(
    String name, {
    AppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amplify/app:App',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessToken = registerOutput<String?>('accessToken');
    this.arn = registerOutput<String>('arn');
    this.autoBranchCreationConfig = registerOutput<AppAutoBranchCreationConfig>('autoBranchCreationConfig');
    this.autoBranchCreationPatterns = registerOutput<List<String>?>('autoBranchCreationPatterns');
    this.basicAuthCredentials = registerOutput<String?>('basicAuthCredentials');
    this.buildSpec = registerOutput<String>('buildSpec');
    this.cacheConfig = registerOutput<AppCacheConfig>('cacheConfig');
    this.computeRoleArn = registerOutput<String?>('computeRoleArn');
    this.customHeaders = registerOutput<String>('customHeaders');
    this.customRules = registerOutput<List<AppCustomRule>?>('customRules');
    this.defaultDomain = registerOutput<String>('defaultDomain');
    this.description = registerOutput<String?>('description');
    this.enableAutoBranchCreation = registerOutput<bool?>('enableAutoBranchCreation');
    this.enableBasicAuth = registerOutput<bool?>('enableBasicAuth');
    this.enableBranchAutoBuild = registerOutput<bool?>('enableBranchAutoBuild');
    this.enableBranchAutoDeletion = registerOutput<bool?>('enableBranchAutoDeletion');
    this.environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    this.iamServiceRoleArn = registerOutput<String?>('iamServiceRoleArn');
    this.jobConfig = registerOutput<AppJobConfig>('jobConfig');
    this.name = registerOutput<String>('name');
    this.oauthToken = registerOutput<String?>('oauthToken');
    this.platform = registerOutput<String?>('platform');
    this.productionBranches = registerOutput<List<AppProductionBranch>>('productionBranches');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<String?>('repository');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
