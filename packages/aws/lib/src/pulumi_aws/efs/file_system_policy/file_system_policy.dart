import 'package:pulumi/pulumi.dart';
import 'file_system_policy_args.dart';

/// Provides an Elastic File System (EFS) File System Policy resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fs = new aws.efs.FileSystem("fs", {creationToken: "my-product"});
/// const policy = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// sid: "ExampleStatement01",
/// effect: "Allow",
/// principals: [{
/// type: "AWS",
/// identifiers: ["*"],
/// }],
/// actions: [
/// "elasticfilesystem:ClientMount",
/// "elasticfilesystem:ClientWrite",
/// ],
/// resources: [fs.arn],
/// conditions: [{
/// test: "Bool",
/// variable: "aws:SecureTransport",
/// values: ["true"],
/// }],
/// }],
/// });
/// const policyFileSystemPolicy = new aws.efs.FileSystemPolicy("policy", {
/// fileSystemId: fs.id,
/// policy: policy.apply(policy => policy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// fs = aws.efs.FileSystem("fs", creation_token="my-product")
/// policy = aws.iam.get_policy_document_output(statements=[{
/// "sid": "ExampleStatement01",
/// "effect": "Allow",
/// "principals": [{
/// "type": "AWS",
/// "identifiers": ["*"],
/// }],
/// "actions": [
/// "elasticfilesystem:ClientMount",
/// "elasticfilesystem:ClientWrite",
/// ],
/// "resources": [fs.arn],
/// "conditions": [{
/// "test": "Bool",
/// "variable": "aws:SecureTransport",
/// "values": ["true"],
/// }],
/// }])
/// policy_file_system_policy = aws.efs.FileSystemPolicy("policy",
/// file_system_id=fs.id,
/// policy=policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var fs = new Aws.Efs.FileSystem("fs", new()
/// {
/// CreationToken = "my-product",
/// });
///
/// var policy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "ExampleStatement01",
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// "*",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "elasticfilesystem:ClientMount",
/// "elasticfilesystem:ClientWrite",
/// },
/// Resources = new[]
/// {
/// fs.Arn,
/// },
/// Conditions = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
/// {
/// Test = "Bool",
/// Variable = "aws:SecureTransport",
/// Values = new[]
/// {
/// "true",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var policyFileSystemPolicy = new Aws.Efs.FileSystemPolicy("policy", new()
/// {
/// FileSystemId = fs.Id,
/// Policy = policy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// fs, err := efs.NewFileSystem(ctx, "fs", &efs.FileSystemArgs{
/// CreationToken: pulumi.String("my-product"),
/// })
/// if err != nil {
/// return err
/// }
/// policy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Sid:    pulumi.String("ExampleStatement01"),
/// Effect: pulumi.String("Allow"),
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Type: pulumi.String("AWS"),
/// Identifiers: pulumi.StringArray{
/// pulumi.String("*"),
/// },
/// },
/// },
/// Actions: pulumi.StringArray{
/// pulumi.String("elasticfilesystem:ClientMount"),
/// pulumi.String("elasticfilesystem:ClientWrite"),
/// },
/// Resources: pulumi.StringArray{
/// fs.Arn,
/// },
/// Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// &iam.GetPolicyDocumentStatementConditionArgs{
/// Test:     pulumi.String("Bool"),
/// Variable: pulumi.String("aws:SecureTransport"),
/// Values: pulumi.StringArray{
/// pulumi.String("true"),
/// },
/// },
/// },
/// },
/// },
/// }, nil)
/// _, err = efs.NewFileSystemPolicy(ctx, "policy", &efs.FileSystemPolicyArgs{
/// FileSystemId: fs.ID(),
/// Policy: pulumi.String(policy.ApplyT(func(policy iam.GetPolicyDocumentResult) (*string, error) {
/// return &policy.Json, nil
/// }).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.aws.efs.FileSystem;
/// import com.pulumi.aws.efs.FileSystemArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.efs.FileSystemPolicy;
/// import com.pulumi.aws.efs.FileSystemPolicyArgs;
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
/// var fs = new FileSystem("fs", FileSystemArgs.builder()
/// .creationToken("my-product")
/// .build());
///
/// final var policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("ExampleStatement01")
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers("*")
/// .build())
/// .actions(
/// "elasticfilesystem:ClientMount",
/// "elasticfilesystem:ClientWrite")
/// .resources(fs.arn())
/// .conditions(GetPolicyDocumentStatementConditionArgs.builder()
/// .test("Bool")
/// .variable("aws:SecureTransport")
/// .values("true")
/// .build())
/// .build())
/// .build());
///
/// var policyFileSystemPolicy = new FileSystemPolicy("policyFileSystemPolicy", FileSystemPolicyArgs.builder()
/// .fileSystemId(fs.id())
/// .policy(policy.applyValue(_policy -> _policy.json()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// fs:
/// type: aws:efs:FileSystem
/// properties:
/// creationToken: my-product
/// policyFileSystemPolicy:
/// type: aws:efs:FileSystemPolicy
/// name: policy
/// properties:
/// fileSystemId: ${fs.id}
/// policy: ${policy.json}
/// variables:
/// policy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: ExampleStatement01
/// effect: Allow
/// principals:
/// - type: AWS
/// identifiers:
/// - '*'
/// actions:
/// - elasticfilesystem:ClientMount
/// - elasticfilesystem:ClientWrite
/// resources:
/// - ${fs.arn}
/// conditions:
/// - test: Bool
/// variable: aws:SecureTransport
/// values:
/// - 'true'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import the EFS file system policies using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:efs/fileSystemPolicy:FileSystemPolicy foo fs-6fa144c6
/// ```
class FileSystemPolicy extends CustomResource {
  /// A flag to indicate whether to bypass the <span pulumi-lang-nodejs="`aws.efs.FileSystemPolicy`" pulumi-lang-dotnet="`aws.efs.FileSystemPolicy`" pulumi-lang-go="`efs.FileSystemPolicy`" pulumi-lang-python="`efs.FileSystemPolicy`" pulumi-lang-yaml="`aws.efs.FileSystemPolicy`" pulumi-lang-java="`aws.efs.FileSystemPolicy`">`aws.efs.FileSystemPolicy`</span> lockout safety check. The policy lockout safety check determines whether the policy in the request will prevent the principal making the request will be locked out from making future `PutFileSystemPolicy` requests on the file system. Set <span pulumi-lang-nodejs="`bypassPolicyLockoutSafetyCheck`" pulumi-lang-dotnet="`BypassPolicyLockoutSafetyCheck`" pulumi-lang-go="`bypassPolicyLockoutSafetyCheck`" pulumi-lang-python="`bypass_policy_lockout_safety_check`" pulumi-lang-yaml="`bypassPolicyLockoutSafetyCheck`" pulumi-lang-java="`bypassPolicyLockoutSafetyCheck`">`bypass_policy_lockout_safety_check`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> only when you intend to prevent the principal that is making the request from making a subsequent `PutFileSystemPolicy` request on the file system. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> bypassPolicyLockoutSafetyCheck;

  /// The ID of the EFS file system.
  late final Output<String> fileSystemId;

  /// The JSON formatted file system policy for the EFS file system. see [Docs](https://docs.aws.amazon.com/efs/latest/ug/access-control-overview.html#access-control-manage-access-intro-resource-policies) for more info.
  ///
  /// The following arguments are optional:
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  FileSystemPolicy(
    String name, {
    FileSystemPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:efs/fileSystemPolicy:FileSystemPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bypassPolicyLockoutSafetyCheck = Output.createUnknown<bool?>();
    this.fileSystemId = Output.createUnknown<String>();
    this.policy = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
