import 'package:pulumi/pulumi.dart' as pulumi;
import 'layer_version_permission_args.dart';
import 'layer_version_permission_state.dart';

/// Manages an AWS Lambda Layer Version Permission. Use this resource to share Lambda Layers with other AWS accounts, organizations, or make them publicly accessible.
///
/// For information about Lambda Layer Permissions and how to use them, see [Using Resource-based Policies for AWS Lambda](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountlayer).
///
/// &gt; **Note:** Setting `skip_destroy` to `true` means that the AWS Provider will not destroy any layer version permission, even when running `pulumi destroy`. Layer version permissions are thus intentional dangling resources that are not managed by Pulumi and may incur extra expense in your AWS account.
///
/// ## Example Usage
///
/// ### Share Layer with Specific Account
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Lambda layer to share
/// const example = new aws.lambda.LayerVersion("example", {
///     code: new pulumi.asset.FileArchive("layer.zip"),
///     layerName: "shared_utilities",
///     description: "Common utilities for Lambda functions",
///     compatibleRuntimes: [
///         "nodejs20.x",
///         "python3.12",
///     ],
/// });
/// // Grant permission to specific AWS account
/// const exampleLayerVersionPermission = new aws.lambda.LayerVersionPermission("example", {
///     layerName: example.layerName,
///     versionNumber: example.version,
///     principal: "123456789012",
///     action: "lambda:GetLayerVersion",
///     statementId: "dev-account-access",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Lambda layer to share
/// example = aws.lambda_.LayerVersion("example",
///     code=pulumi.FileArchive("layer.zip"),
///     layer_name="shared_utilities",
///     description="Common utilities for Lambda functions",
///     compatible_runtimes=[
///         "nodejs20.x",
///         "python3.12",
///     ])
/// # Grant permission to specific AWS account
/// example_layer_version_permission = aws.lambda_.LayerVersionPermission("example",
///     layer_name=example.layer_name,
///     version_number=example.version,
///     principal="123456789012",
///     action="lambda:GetLayerVersion",
///     statement_id="dev-account-access")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Lambda layer to share
///     var example = new Aws.Lambda.LayerVersion("example", new()
///     {
///         Code = new FileArchive("layer.zip"),
///         LayerName = "shared_utilities",
///         Description = "Common utilities for Lambda functions",
///         CompatibleRuntimes = new[]
///         {
///             "nodejs20.x",
///             "python3.12",
///         },
///     });
///
///     // Grant permission to specific AWS account
///     var exampleLayerVersionPermission = new Aws.Lambda.LayerVersionPermission("example", new()
///     {
///         LayerName = example.LayerName,
///         VersionNumber = example.Version,
///         Principal = "123456789012",
///         Action = "lambda:GetLayerVersion",
///         StatementId = "dev-account-access",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Lambda layer to share
/// 		example, err := lambda.NewLayerVersion(ctx, "example", &lambda.LayerVersionArgs{
/// 			Code:        pulumi.NewFileArchive("layer.zip"),
/// 			LayerName:   pulumi.String("shared_utilities"),
/// 			Description: pulumi.String("Common utilities for Lambda functions"),
/// 			CompatibleRuntimes: pulumi.StringArray{
/// 				pulumi.String("nodejs20.x"),
/// 				pulumi.String("python3.12"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Grant permission to specific AWS account
/// 		_, err = lambda.NewLayerVersionPermission(ctx, "example", &lambda.LayerVersionPermissionArgs{
/// 			LayerName:     example.LayerName,
/// 			VersionNumber: example.Version,
/// 			Principal:     pulumi.String("123456789012"),
/// 			Action:        pulumi.String("lambda:GetLayerVersion"),
/// 			StatementId:   pulumi.String("dev-account-access"),
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
/// import com.pulumi.aws.lambda.LayerVersion;
/// import com.pulumi.aws.lambda.LayerVersionArgs;
/// import com.pulumi.aws.lambda.LayerVersionPermission;
/// import com.pulumi.aws.lambda.LayerVersionPermissionArgs;
/// import com.pulumi.asset.FileArchive;
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
///         // Lambda layer to share
///         var example = new LayerVersion("example", LayerVersionArgs.builder()
///             .code(new FileArchive("layer.zip"))
///             .layerName("shared_utilities")
///             .description("Common utilities for Lambda functions")
///             .compatibleRuntimes(
///                 "nodejs20.x",
///                 "python3.12")
///             .build());
///
///         // Grant permission to specific AWS account
///         var exampleLayerVersionPermission = new LayerVersionPermission("exampleLayerVersionPermission", LayerVersionPermissionArgs.builder()
///             .layerName(example.layerName())
///             .versionNumber(example.version())
///             .principal("123456789012")
///             .action("lambda:GetLayerVersion")
///             .statementId("dev-account-access")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Lambda layer to share
///   example:
///     type: aws:lambda:LayerVersion
///     properties:
///       code:
///         fn::FileArchive: layer.zip
///       layerName: shared_utilities
///       description: Common utilities for Lambda functions
///       compatibleRuntimes:
///         - nodejs20.x
///         - python3.12
///   # Grant permission to specific AWS account
///   exampleLayerVersionPermission:
///     type: aws:lambda:LayerVersionPermission
///     name: example
///     properties:
///       layerName: ${example.layerName}
///       versionNumber: ${example.version}
///       principal: '123456789012'
///       action: lambda:GetLayerVersion
///       statementId: dev-account-access
/// ```
///
///
/// ### Share Layer with Organization
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.LayerVersionPermission("example", {
///     layerName: exampleAwsLambdaLayerVersion.layerName,
///     versionNumber: exampleAwsLambdaLayerVersion.version,
///     principal: "*",
///     organizationId: "o-1234567890",
///     action: "lambda:GetLayerVersion",
///     statementId: "org-wide-access",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.LayerVersionPermission("example",
///     layer_name=example_aws_lambda_layer_version["layerName"],
///     version_number=example_aws_lambda_layer_version["version"],
///     principal="*",
///     organization_id="o-1234567890",
///     action="lambda:GetLayerVersion",
///     statement_id="org-wide-access")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.LayerVersionPermission("example", new()
///     {
///         LayerName = exampleAwsLambdaLayerVersion.LayerName,
///         VersionNumber = exampleAwsLambdaLayerVersion.Version,
///         Principal = "*",
///         OrganizationId = "o-1234567890",
///         Action = "lambda:GetLayerVersion",
///         StatementId = "org-wide-access",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewLayerVersionPermission(ctx, "example", &lambda.LayerVersionPermissionArgs{
/// 			LayerName:      pulumi.Any(exampleAwsLambdaLayerVersion.LayerName),
/// 			VersionNumber:  pulumi.Any(exampleAwsLambdaLayerVersion.Version),
/// 			Principal:      pulumi.String("*"),
/// 			OrganizationId: pulumi.String("o-1234567890"),
/// 			Action:         pulumi.String("lambda:GetLayerVersion"),
/// 			StatementId:    pulumi.String("org-wide-access"),
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
/// import com.pulumi.aws.lambda.LayerVersionPermission;
/// import com.pulumi.aws.lambda.LayerVersionPermissionArgs;
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
///         var example = new LayerVersionPermission("example", LayerVersionPermissionArgs.builder()
///             .layerName(exampleAwsLambdaLayerVersion.layerName())
///             .versionNumber(exampleAwsLambdaLayerVersion.version())
///             .principal("*")
///             .organizationId("o-1234567890")
///             .action("lambda:GetLayerVersion")
///             .statementId("org-wide-access")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:LayerVersionPermission
///     properties:
///       layerName: ${exampleAwsLambdaLayerVersion.layerName}
///       versionNumber: ${exampleAwsLambdaLayerVersion.version}
///       principal: '*'
///       organizationId: o-1234567890
///       action: lambda:GetLayerVersion
///       statementId: org-wide-access
/// ```
///
///
/// ### Share Layer Publicly
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.LayerVersionPermission("example", {
///     layerName: exampleAwsLambdaLayerVersion.layerName,
///     versionNumber: exampleAwsLambdaLayerVersion.version,
///     principal: "*",
///     action: "lambda:GetLayerVersion",
///     statementId: "public-access",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.LayerVersionPermission("example",
///     layer_name=example_aws_lambda_layer_version["layerName"],
///     version_number=example_aws_lambda_layer_version["version"],
///     principal="*",
///     action="lambda:GetLayerVersion",
///     statement_id="public-access")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.LayerVersionPermission("example", new()
///     {
///         LayerName = exampleAwsLambdaLayerVersion.LayerName,
///         VersionNumber = exampleAwsLambdaLayerVersion.Version,
///         Principal = "*",
///         Action = "lambda:GetLayerVersion",
///         StatementId = "public-access",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewLayerVersionPermission(ctx, "example", &lambda.LayerVersionPermissionArgs{
/// 			LayerName:     pulumi.Any(exampleAwsLambdaLayerVersion.LayerName),
/// 			VersionNumber: pulumi.Any(exampleAwsLambdaLayerVersion.Version),
/// 			Principal:     pulumi.String("*"),
/// 			Action:        pulumi.String("lambda:GetLayerVersion"),
/// 			StatementId:   pulumi.String("public-access"),
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
/// import com.pulumi.aws.lambda.LayerVersionPermission;
/// import com.pulumi.aws.lambda.LayerVersionPermissionArgs;
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
///         var example = new LayerVersionPermission("example", LayerVersionPermissionArgs.builder()
///             .layerName(exampleAwsLambdaLayerVersion.layerName())
///             .versionNumber(exampleAwsLambdaLayerVersion.version())
///             .principal("*")
///             .action("lambda:GetLayerVersion")
///             .statementId("public-access")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:LayerVersionPermission
///     properties:
///       layerName: ${exampleAwsLambdaLayerVersion.layerName}
///       versionNumber: ${exampleAwsLambdaLayerVersion.version}
///       principal: '*'
///       action: lambda:GetLayerVersion
///       statementId: public-access
/// ```
///
///
/// ### Multiple Account Access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Share with multiple specific accounts
/// const devAccount = new aws.lambda.LayerVersionPermission("dev_account", {
///     layerName: example.layerName,
///     versionNumber: example.version,
///     principal: "111111111111",
///     action: "lambda:GetLayerVersion",
///     statementId: "dev-account",
/// });
/// const stagingAccount = new aws.lambda.LayerVersionPermission("staging_account", {
///     layerName: example.layerName,
///     versionNumber: example.version,
///     principal: "222222222222",
///     action: "lambda:GetLayerVersion",
///     statementId: "staging-account",
/// });
/// const prodAccount = new aws.lambda.LayerVersionPermission("prod_account", {
///     layerName: example.layerName,
///     versionNumber: example.version,
///     principal: "333333333333",
///     action: "lambda:GetLayerVersion",
///     statementId: "prod-account",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Share with multiple specific accounts
/// dev_account = aws.lambda_.LayerVersionPermission("dev_account",
///     layer_name=example["layerName"],
///     version_number=example["version"],
///     principal="111111111111",
///     action="lambda:GetLayerVersion",
///     statement_id="dev-account")
/// staging_account = aws.lambda_.LayerVersionPermission("staging_account",
///     layer_name=example["layerName"],
///     version_number=example["version"],
///     principal="222222222222",
///     action="lambda:GetLayerVersion",
///     statement_id="staging-account")
/// prod_account = aws.lambda_.LayerVersionPermission("prod_account",
///     layer_name=example["layerName"],
///     version_number=example["version"],
///     principal="333333333333",
///     action="lambda:GetLayerVersion",
///     statement_id="prod-account")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Share with multiple specific accounts
///     var devAccount = new Aws.Lambda.LayerVersionPermission("dev_account", new()
///     {
///         LayerName = example.LayerName,
///         VersionNumber = example.Version,
///         Principal = "111111111111",
///         Action = "lambda:GetLayerVersion",
///         StatementId = "dev-account",
///     });
///
///     var stagingAccount = new Aws.Lambda.LayerVersionPermission("staging_account", new()
///     {
///         LayerName = example.LayerName,
///         VersionNumber = example.Version,
///         Principal = "222222222222",
///         Action = "lambda:GetLayerVersion",
///         StatementId = "staging-account",
///     });
///
///     var prodAccount = new Aws.Lambda.LayerVersionPermission("prod_account", new()
///     {
///         LayerName = example.LayerName,
///         VersionNumber = example.Version,
///         Principal = "333333333333",
///         Action = "lambda:GetLayerVersion",
///         StatementId = "prod-account",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Share with multiple specific accounts
/// 		_, err := lambda.NewLayerVersionPermission(ctx, "dev_account", &lambda.LayerVersionPermissionArgs{
/// 			LayerName:     pulumi.Any(example.LayerName),
/// 			VersionNumber: pulumi.Any(example.Version),
/// 			Principal:     pulumi.String("111111111111"),
/// 			Action:        pulumi.String("lambda:GetLayerVersion"),
/// 			StatementId:   pulumi.String("dev-account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewLayerVersionPermission(ctx, "staging_account", &lambda.LayerVersionPermissionArgs{
/// 			LayerName:     pulumi.Any(example.LayerName),
/// 			VersionNumber: pulumi.Any(example.Version),
/// 			Principal:     pulumi.String("222222222222"),
/// 			Action:        pulumi.String("lambda:GetLayerVersion"),
/// 			StatementId:   pulumi.String("staging-account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewLayerVersionPermission(ctx, "prod_account", &lambda.LayerVersionPermissionArgs{
/// 			LayerName:     pulumi.Any(example.LayerName),
/// 			VersionNumber: pulumi.Any(example.Version),
/// 			Principal:     pulumi.String("333333333333"),
/// 			Action:        pulumi.String("lambda:GetLayerVersion"),
/// 			StatementId:   pulumi.String("prod-account"),
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
/// import com.pulumi.aws.lambda.LayerVersionPermission;
/// import com.pulumi.aws.lambda.LayerVersionPermissionArgs;
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
///         // Share with multiple specific accounts
///         var devAccount = new LayerVersionPermission("devAccount", LayerVersionPermissionArgs.builder()
///             .layerName(example.layerName())
///             .versionNumber(example.version())
///             .principal("111111111111")
///             .action("lambda:GetLayerVersion")
///             .statementId("dev-account")
///             .build());
///
///         var stagingAccount = new LayerVersionPermission("stagingAccount", LayerVersionPermissionArgs.builder()
///             .layerName(example.layerName())
///             .versionNumber(example.version())
///             .principal("222222222222")
///             .action("lambda:GetLayerVersion")
///             .statementId("staging-account")
///             .build());
///
///         var prodAccount = new LayerVersionPermission("prodAccount", LayerVersionPermissionArgs.builder()
///             .layerName(example.layerName())
///             .versionNumber(example.version())
///             .principal("333333333333")
///             .action("lambda:GetLayerVersion")
///             .statementId("prod-account")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Share with multiple specific accounts
///   devAccount:
///     type: aws:lambda:LayerVersionPermission
///     name: dev_account
///     properties:
///       layerName: ${example.layerName}
///       versionNumber: ${example.version}
///       principal: '111111111111'
///       action: lambda:GetLayerVersion
///       statementId: dev-account
///   stagingAccount:
///     type: aws:lambda:LayerVersionPermission
///     name: staging_account
///     properties:
///       layerName: ${example.layerName}
///       versionNumber: ${example.version}
///       principal: '222222222222'
///       action: lambda:GetLayerVersion
///       statementId: staging-account
///   prodAccount:
///     type: aws:lambda:LayerVersionPermission
///     name: prod_account
///     properties:
///       layerName: ${example.layerName}
///       versionNumber: ${example.version}
///       principal: '333333333333'
///       action: lambda:GetLayerVersion
///       statementId: prod-account
/// ```
///
///
/// ## Import
///
/// For backwards compatibility, the following legacy `pulumi import` command is also supported:
///
/// ```sh
/// $ pulumi import aws:lambda/layerVersionPermission:LayerVersionPermission example arn:aws:lambda:us-west-2:123456789012:layer:shared_utilities,1
/// ```
class LayerVersionPermission extends pulumi.CustomResource {
  /// Action that will be allowed. `lambda:GetLayerVersion` is the standard value for layer access.
  late final pulumi.Output<String> action;

  /// Name or ARN of the Lambda Layer.
  late final pulumi.Output<String> layerName;

  /// AWS Organization ID that should be able to use your Lambda Layer. `principal` should be set to `*` when `organization_id` is provided.
  late final pulumi.Output<String?> organizationId;

  /// Full Lambda Layer Permission policy.
  late final pulumi.Output<String> policy;

  /// AWS account ID that should be able to use your Lambda Layer. Use `*` to share with all AWS accounts.
  late final pulumi.Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Unique identifier for the current revision of the policy.
  late final pulumi.Output<String> revisionId;

  /// Whether to retain the permission when the resource is destroyed. Default is `false`.
  late final pulumi.Output<bool?> skipDestroy;

  /// Unique identifier for the permission statement.
  late final pulumi.Output<String> statementId;

  /// Version of Lambda Layer to grant access to. Note: permissions only apply to a single version of a layer.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> versionNumber;

  /// Creates a new [LayerVersionPermission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LayerVersionPermission]. {@macro pulumi_lambda_layer_version_permission_layer_version_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LayerVersionPermission(
    String name, {
    LayerVersionPermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:lambda/layerVersionPermission:LayerVersionPermission',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    layerName = registerOutput<String>('layerName');
    organizationId = registerOutput<String?>('organizationId');
    policy = registerOutput<String>('policy');
    principal = registerOutput<String>('principal');
    region = registerOutput<String>('region');
    revisionId = registerOutput<String>('revisionId');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    statementId = registerOutput<String>('statementId');
    versionNumber = registerOutput<int>('versionNumber');
  }

  /// Gets an existing [LayerVersionPermission] resource's state with the given [name] and [id].
  static LayerVersionPermission get(
    String name,
    pulumi.Input<String> id, {
    LayerVersionPermissionState? state,
  }) {
    return LayerVersionPermission._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LayerVersionPermission._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:lambda/layerVersionPermission:LayerVersionPermission',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    layerName = registerOutput<String>('layerName');
    organizationId = registerOutput<String?>('organizationId');
    policy = registerOutput<String>('policy');
    principal = registerOutput<String>('principal');
    region = registerOutput<String>('region');
    revisionId = registerOutput<String>('revisionId');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    statementId = registerOutput<String>('statementId');
    versionNumber = registerOutput<int>('versionNumber');
  }
}
