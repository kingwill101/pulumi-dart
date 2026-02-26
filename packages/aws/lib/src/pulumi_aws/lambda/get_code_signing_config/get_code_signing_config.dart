import 'package:pulumi/pulumi.dart';
import 'get_code_signing_config_args.dart';
import 'get_code_signing_config_result.dart';

/// Provides details about an AWS Lambda Code Signing Config. Use this data source to retrieve information about an existing code signing configuration for Lambda functions to ensure code integrity and authenticity.
///
/// For information about Lambda code signing configurations and how to use them, see [configuring code signing for Lambda functions](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getCodeSigningConfig({
/// arn: "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b",
/// });
/// export const configDetails = {
/// configId: example.then(example => example.configId),
/// description: example.then(example => example.description),
/// policy: example.then(example => example.policies?.[0]?.untrustedArtifactOnDeployment),
/// };
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda.get_code_signing_config(arn="arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b")
/// pulumi.export("configDetails", {
/// "configId": example.config_id,
/// "description": example.description,
/// "policy": example.policies[0].untrusted_artifact_on_deployment,
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
/// var example = Aws.Lambda.GetCodeSigningConfig.Invoke(new()
/// {
/// Arn = "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["configDetails"] =
/// {
/// { "configId", example.Apply(getCodeSigningConfigResult => getCodeSigningConfigResult.ConfigId) },
/// { "description", example.Apply(getCodeSigningConfigResult => getCodeSigningConfigResult.Description) },
/// { "policy", example.Apply(getCodeSigningConfigResult => getCodeSigningConfigResult.Policies[0]?.UntrustedArtifactOnDeployment) },
/// },
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lambda.LookupCodeSigningConfig(ctx, &lambda.LookupCodeSigningConfigArgs{
/// Arn: "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("configDetails", pulumi.StringMap{
/// "configId":    example.ConfigId,
/// "description": example.Description,
/// "policy":      example.Policies[0].UntrustedArtifactOnDeployment,
/// })
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
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetCodeSigningConfigArgs;
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
/// final var example = LambdaFunctions.getCodeSigningConfig(GetCodeSigningConfigArgs.builder()
/// .arn("arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b")
/// .build());
///
/// ctx.export("configDetails", Map.ofEntries(
/// Map.entry("configId", example.configId()),
/// Map.entry("description", example.description()),
/// Map.entry("policy", example.policies()[0].untrustedArtifactOnDeployment())
/// ));
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:lambda:getCodeSigningConfig
/// arguments:
/// arn: arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b
/// outputs:
/// configDetails:
/// configId: ${example.configId}
/// description: ${example.description}
/// policy: ${example.policies[0].untrustedArtifactOnDeployment}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Use in Lambda Function
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Get existing code signing configuration
/// const securityConfig = aws.lambda.getCodeSigningConfig({
/// arn: codeSigningConfigArn,
/// });
/// // Create Lambda function with code signing
/// const example = new aws.lambda.Function("example", {
/// code: new pulumi.asset.FileArchive("function.zip"),
/// name: "secure-function",
/// role: lambdaRole.arn,
/// handler: "index.handler",
/// runtime: aws.lambda.Runtime.NodeJS20dX,
/// codeSigningConfigArn: securityConfig.then(securityConfig => securityConfig.arn),
/// tags: {
/// Environment: "production",
/// Security: "code-signed",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Get existing code signing configuration
/// security_config = aws.lambda.get_code_signing_config(arn=code_signing_config_arn)
/// # Create Lambda function with code signing
/// example = aws.lambda_.Function("example",
/// code=pulumi.FileArchive("function.zip"),
/// name="secure-function",
/// role=lambda_role["arn"],
/// handler="index.handler",
/// runtime=aws.lambda_.Runtime.NODE_JS20D_X,
/// code_signing_config_arn=security_config.arn,
/// tags={
/// "Environment": "production",
/// "Security": "code-signed",
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
/// // Get existing code signing configuration
/// var securityConfig = Aws.Lambda.GetCodeSigningConfig.Invoke(new()
/// {
/// Arn = codeSigningConfigArn,
/// });
///
/// // Create Lambda function with code signing
/// var example = new Aws.Lambda.Function("example", new()
/// {
/// Code = new FileArchive("function.zip"),
/// Name = "secure-function",
/// Role = lambdaRole.Arn,
/// Handler = "index.handler",
/// Runtime = Aws.Lambda.Runtime.NodeJS20dX,
/// CodeSigningConfigArn = securityConfig.Apply(getCodeSigningConfigResult => getCodeSigningConfigResult.Arn),
/// Tags =
/// {
/// { "Environment", "production" },
/// { "Security", "code-signed" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Get existing code signing configuration
/// securityConfig, err := lambda.LookupCodeSigningConfig(ctx, &lambda.LookupCodeSigningConfigArgs{
/// Arn: codeSigningConfigArn,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Create Lambda function with code signing
/// _, err = lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// Code:                 pulumi.NewFileArchive("function.zip"),
/// Name:                 pulumi.String("secure-function"),
/// Role:                 pulumi.Any(lambdaRole.Arn),
/// Handler:              pulumi.String("index.handler"),
/// Runtime:              pulumi.String(lambda.RuntimeNodeJS20dX),
/// CodeSigningConfigArn: pulumi.String(securityConfig.Arn),
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("production"),
/// "Security":    pulumi.String("code-signed"),
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
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetCodeSigningConfigArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.asset.FileArchive;
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
/// // Get existing code signing configuration
/// final var securityConfig = LambdaFunctions.getCodeSigningConfig(GetCodeSigningConfigArgs.builder()
/// .arn(codeSigningConfigArn)
/// .build());
///
/// // Create Lambda function with code signing
/// var example = new Function("example", FunctionArgs.builder()
/// .code(new FileArchive("function.zip"))
/// .name("secure-function")
/// .role(lambdaRole.arn())
/// .handler("index.handler")
/// .runtime("nodejs20.x")
/// .codeSigningConfigArn(securityConfig.arn())
/// .tags(Map.ofEntries(
/// Map.entry("Environment", "production"),
/// Map.entry("Security", "code-signed")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Create Lambda function with code signing
/// example:
/// type: aws:lambda:Function
/// properties:
/// code:
/// fn::FileArchive: function.zip
/// name: secure-function
/// role: ${lambdaRole.arn}
/// handler: index.handler
/// runtime: nodejs20.x
/// codeSigningConfigArn: ${securityConfig.arn}
/// tags:
/// Environment: production
/// Security: code-signed
/// variables:
/// # Get existing code signing configuration
/// securityConfig:
/// fn::invoke:
/// function: aws:lambda:getCodeSigningConfig
/// arguments:
/// arn: ${codeSigningConfigArn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Validate Signing Profiles
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// export = async () => {
/// const example = await aws.lambda.getCodeSigningConfig({
/// arn: codeSigningConfigArn,
/// });
/// const allowedProfiles = example.allowedPublishers?.[0]?.signingProfileVersionArns;
/// const requiredProfile = "arn:aws:signer:us-west-2:123456789012:/signing-profiles/MyProfile";
/// const profileAllowed = (await std.contains({
/// input: allowedProfiles,
/// element: requiredProfile,
/// })).result;
/// // Conditional resource creation based on signing profile validation
/// const conditional: aws.lambda.Function[] = [];
/// for (const range = {value: 0}; range.value < (profileAllowed ? 1 : 0); range.value++) {
/// conditional.push(new aws.lambda.Function(`conditional-${range.value}`, {
/// code: new pulumi.asset.FileArchive("function.zip"),
/// name: "conditional-function",
/// role: lambdaRole.arn,
/// handler: "index.handler",
/// runtime: aws.lambda.Runtime.Python3d12,
/// codeSigningConfigArn: example.arn,
/// }));
/// }
/// return {
/// deploymentStatus: {
/// profileAllowed: profileAllowed,
/// functionCreated: profileAllowed,
/// message: profileAllowed ? "Function deployed with valid signing profile" : "Deployment blocked - signing profile not allowed",
/// },
/// };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.lambda.get_code_signing_config(arn=code_signing_config_arn)
/// allowed_profiles = example.allowed_publishers[0].signing_profile_version_arns
/// required_profile = "arn:aws:signer:us-west-2:123456789012:/signing-profiles/MyProfile"
/// profile_allowed = std.contains(input=allowed_profiles,
/// element=required_profile).result
/// # Conditional resource creation based on signing profile validation
/// conditional = []
/// for range in [{"value": i} for i in range(0, 1 if profile_allowed else 0)]:
/// conditional.append(aws.lambda_.Function(f"conditional-{range['value']}",
/// code=pulumi.FileArchive("function.zip"),
/// name="conditional-function",
/// role=lambda_role["arn"],
/// handler="index.handler",
/// runtime=aws.lambda_.Runtime.PYTHON3D12,
/// code_signing_config_arn=example.arn))
/// pulumi.export("deploymentStatus", {
/// "profileAllowed": profile_allowed,
/// "functionCreated": profile_allowed,
/// "message": "Function deployed with valid signing profile" if profile_allowed else "Deployment blocked - signing profile not allowed",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Threading.Tasks;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(async() =>
/// {
/// var example = await Aws.Lambda.GetCodeSigningConfig.InvokeAsync(new()
/// {
/// Arn = codeSigningConfigArn,
/// });
///
/// var allowedProfiles = example.AllowedPublishers[0]?.SigningProfileVersionArns;
///
/// var requiredProfile = "arn:aws:signer:us-west-2:123456789012:/signing-profiles/MyProfile";
///
/// var profileAllowed = (await Std.Contains.InvokeAsync(new()
/// {
/// Input = allowedProfiles,
/// Element = requiredProfile,
/// })).Result;
///
/// // Conditional resource creation based on signing profile validation
/// var conditional = new List<Aws.Lambda.Function>();
/// for (var rangeIndex = 0; rangeIndex < profileAllowed ? 1 : 0; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// conditional.Add(new Aws.Lambda.Function($"conditional-{range.Value}", new()
/// {
/// Code = new FileArchive("function.zip"),
/// Name = "conditional-function",
/// Role = lambdaRole.Arn,
/// Handler = "index.handler",
/// Runtime = Aws.Lambda.Runtime.Python3d12,
/// CodeSigningConfigArn = example.Arn,
/// }));
/// }
/// return new Dictionary<string, object?>
/// {
/// ["deploymentStatus"] =
/// {
/// { "profileAllowed", profileAllowed },
/// { "functionCreated", profileAllowed },
/// { "message", profileAllowed ? "Function deployed with valid signing profile" : "Deployment blocked - signing profile not allowed" },
/// },
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lambda.LookupCodeSigningConfig(ctx, &lambda.LookupCodeSigningConfigArgs{
/// Arn: codeSigningConfigArn,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// allowedProfiles := example.AllowedPublishers[0].SigningProfileVersionArns
/// requiredProfile := "arn:aws:signer:us-west-2:123456789012:/signing-profiles/MyProfile"
/// profileAllowed := std.Contains(ctx, &std.ContainsArgs{
/// Input:   allowedProfiles,
/// Element: requiredProfile,
/// }, nil).Result
/// // Conditional resource creation based on signing profile validation
/// var tmp0 float64
/// if profileAllowed {
/// tmp0 = 1
/// } else {
/// tmp0 = 0
/// }
/// var conditional []*lambda.Function
/// for index := 0; index < tmp0; index++ {
/// key0 := index
/// _ := index
/// __res, err := lambda.NewFunction(ctx, fmt.Sprintf("conditional-%v", key0), &lambda.FunctionArgs{
/// Code:                 pulumi.NewFileArchive("function.zip"),
/// Name:                 pulumi.String("conditional-function"),
/// Role:                 pulumi.Any(lambdaRole.Arn),
/// Handler:              pulumi.String("index.handler"),
/// Runtime:              pulumi.String(lambda.RuntimePython3d12),
/// CodeSigningConfigArn: pulumi.String(example.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// conditional = append(conditional, __res)
/// }
/// var tmp1 string
/// if profileAllowed {
/// tmp1 = "Function deployed with valid signing profile"
/// } else {
/// tmp1 = "Deployment blocked - signing profile not allowed"
/// }
/// ctx.Export("deploymentStatus", pulumi.Map{
/// "profileAllowed":  profileAllowed,
/// "functionCreated": profileAllowed,
/// "message":         tmp1,
/// })
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
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetCodeSigningConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ContainsArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.asset.FileArchive;
/// import com.pulumi.codegen.internal.KeyedValue;
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
/// final var example = LambdaFunctions.getCodeSigningConfig(GetCodeSigningConfigArgs.builder()
/// .arn(codeSigningConfigArn)
/// .build());
///
/// final var allowedProfiles = example.allowedPublishers()[0].signingProfileVersionArns();
///
/// final var requiredProfile = "arn:aws:signer:us-west-2:123456789012:/signing-profiles/MyProfile";
///
/// final var profileAllowed = StdFunctions.contains(ContainsArgs.builder()
/// .input(allowedProfiles)
/// .element(requiredProfile)
/// .build()).result();
///
/// // Conditional resource creation based on signing profile validation
/// for (var i = 0; i < profileAllowed ? 1 : 0; i++) {
/// new Function("conditional-" + i, FunctionArgs.builder()
/// .code(new FileArchive("function.zip"))
/// .name("conditional-function")
/// .role(lambdaRole.arn())
/// .handler("index.handler")
/// .runtime("python3.12")
/// .codeSigningConfigArn(example.arn())
/// .build());
///
///
/// }
/// ctx.export("deploymentStatus", Map.ofEntries(
/// Map.entry("profileAllowed", profileAllowed),
/// Map.entry("functionCreated", profileAllowed),
/// Map.entry("message", profileAllowed ? "Function deployed with valid signing profile" : "Deployment blocked - signing profile not allowed")
/// ));
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Multi-Environment Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Production code signing config
/// const prod = aws.lambda.getCodeSigningConfig({
/// arn: "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-prod-123",
/// });
/// // Development code signing config
/// const dev = aws.lambda.getCodeSigningConfig({
/// arn: "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-dev-456",
/// });
/// const prodPolicy = prod.then(prod => prod.policies?.[0]?.untrustedArtifactOnDeployment);
/// const devPolicy = dev.then(dev => dev.policies?.[0]?.untrustedArtifactOnDeployment);
/// const configComparison = {
/// prodEnforcement: prodPolicy,
/// devEnforcement: devPolicy,
/// policiesMatch: Promise.all([prodPolicy, devPolicy]).then(([prodPolicy, devPolicy]) => prodPolicy == devPolicy),
/// };
/// export const environmentComparison = configComparison;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Production code signing config
/// prod = aws.lambda.get_code_signing_config(arn="arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-prod-123")
/// # Development code signing config
/// dev = aws.lambda.get_code_signing_config(arn="arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-dev-456")
/// prod_policy = prod.policies[0].untrusted_artifact_on_deployment
/// dev_policy = dev.policies[0].untrusted_artifact_on_deployment
/// config_comparison = {
/// "prodEnforcement": prod_policy,
/// "devEnforcement": dev_policy,
/// "policiesMatch": prod_policy == dev_policy,
/// }
/// pulumi.export("environmentComparison", config_comparison)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Production code signing config
/// var prod = Aws.Lambda.GetCodeSigningConfig.Invoke(new()
/// {
/// Arn = "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-prod-123",
/// });
///
/// // Development code signing config
/// var dev = Aws.Lambda.GetCodeSigningConfig.Invoke(new()
/// {
/// Arn = "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-dev-456",
/// });
///
/// var prodPolicy = prod.Apply(getCodeSigningConfigResult => getCodeSigningConfigResult.Policies[0]?.UntrustedArtifactOnDeployment);
///
/// var devPolicy = dev.Apply(getCodeSigningConfigResult => getCodeSigningConfigResult.Policies[0]?.UntrustedArtifactOnDeployment);
///
/// var configComparison =
/// {
/// { "prodEnforcement", prodPolicy },
/// { "devEnforcement", devPolicy },
/// { "policiesMatch", Output.Tuple(prodPolicy, devPolicy).Apply(values =>
/// {
/// var prodPolicy = values.Item1;
/// var devPolicy = values.Item2;
/// return prodPolicy == devPolicy;
/// }) },
/// };
///
/// return new Dictionary<string, object?>
/// {
/// ["environmentComparison"] = configComparison,
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Production code signing config
/// prod, err := lambda.LookupCodeSigningConfig(ctx, &lambda.LookupCodeSigningConfigArgs{
/// Arn: "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-prod-123",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Development code signing config
/// dev, err := lambda.LookupCodeSigningConfig(ctx, &lambda.LookupCodeSigningConfigArgs{
/// Arn: "arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-dev-456",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// prodPolicy := prod.Policies[0].UntrustedArtifactOnDeployment
/// devPolicy := dev.Policies[0].UntrustedArtifactOnDeployment
/// configComparison := map[string]interface{}{
/// "prodEnforcement": prodPolicy,
/// "devEnforcement":  devPolicy,
/// "policiesMatch":   prodPolicy == devPolicy,
/// }
/// ctx.Export("environmentComparison", configComparison)
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
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetCodeSigningConfigArgs;
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
/// // Production code signing config
/// final var prod = LambdaFunctions.getCodeSigningConfig(GetCodeSigningConfigArgs.builder()
/// .arn("arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-prod-123")
/// .build());
///
/// // Development code signing config
/// final var dev = LambdaFunctions.getCodeSigningConfig(GetCodeSigningConfigArgs.builder()
/// .arn("arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-dev-456")
/// .build());
///
/// final var prodPolicy = prod.policies()[0].untrustedArtifactOnDeployment();
///
/// final var devPolicy = dev.policies()[0].untrustedArtifactOnDeployment();
///
/// final var configComparison = Map.ofEntries(
/// Map.entry("prodEnforcement", prodPolicy),
/// Map.entry("devEnforcement", devPolicy),
/// Map.entry("policiesMatch", prodPolicy == devPolicy)
/// );
///
/// ctx.export("environmentComparison", configComparison);
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCodeSigningConfigResult> getCodeSigningConfig(
  GetCodeSigningConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getCodeSigningConfig:getCodeSigningConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCodeSigningConfigResult.fromMap(result);
}
