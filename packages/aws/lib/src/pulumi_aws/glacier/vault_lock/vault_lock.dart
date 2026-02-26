import 'package:pulumi/pulumi.dart';
import 'vault_lock_args.dart';

/// Manages a Glacier Vault Lock. You can refer to the [Glacier Developer Guide](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html) for a full explanation of the Glacier Vault Lock functionality.
///
/// > **NOTE:** This resource allows you to test Glacier Vault Lock policies by setting the <span pulumi-lang-nodejs="`completeLock`" pulumi-lang-dotnet="`CompleteLock`" pulumi-lang-go="`completeLock`" pulumi-lang-python="`complete_lock`" pulumi-lang-yaml="`completeLock`" pulumi-lang-java="`completeLock`">`complete_lock`</span> argument to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. When testing policies in this manner, the Glacier Vault Lock automatically expires after 24 hours and this provider will show this resource as needing recreation after that time. To permanently apply the policy, set the <span pulumi-lang-nodejs="`completeLock`" pulumi-lang-dotnet="`CompleteLock`" pulumi-lang-go="`completeLock`" pulumi-lang-python="`complete_lock`" pulumi-lang-yaml="`completeLock`" pulumi-lang-java="`completeLock`">`complete_lock`</span> argument to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. When changing <span pulumi-lang-nodejs="`completeLock`" pulumi-lang-dotnet="`CompleteLock`" pulumi-lang-go="`completeLock`" pulumi-lang-python="`complete_lock`" pulumi-lang-yaml="`completeLock`" pulumi-lang-java="`completeLock`">`complete_lock`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, it is expected the resource will show as recreating.
///
/// > **NOTE:** We suggest using `jsonencode()` or <span pulumi-lang-nodejs="`aws.iam.getPolicyDocument`" pulumi-lang-dotnet="`aws.iam.getPolicyDocument`" pulumi-lang-go="`iam.getPolicyDocument`" pulumi-lang-python="`iam_get_policy_document`" pulumi-lang-yaml="`aws.iam.getPolicyDocument`" pulumi-lang-java="`aws.iam.getPolicyDocument`">`aws.iam.getPolicyDocument`</span> when assigning a value to <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span>. They seamlessly translate Terraform language into JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// !> **WARNING:** Once a Glacier Vault Lock is completed, it is immutable. The deletion of the Glacier Vault Lock is not be possible and attempting to remove it from this provider will return an error. Set the <span pulumi-lang-nodejs="`ignoreDeletionError`" pulumi-lang-dotnet="`IgnoreDeletionError`" pulumi-lang-go="`ignoreDeletionError`" pulumi-lang-python="`ignore_deletion_error`" pulumi-lang-yaml="`ignoreDeletionError`" pulumi-lang-java="`ignoreDeletionError`">`ignore_deletion_error`</span> argument to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> and apply this configuration before attempting to delete this resource via this provider or remove this resource from this provider's management.
///
/// ## Example Usage
///
/// ### Testing Glacier Vault Lock Policy
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleVault = new aws.glacier.Vault("example", {name: "example"});
/// const example = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// actions: ["glacier:DeleteArchive"],
/// effect: "Deny",
/// resources: [exampleVault.arn],
/// conditions: [{
/// test: "NumericLessThanEquals",
/// variable: "glacier:ArchiveAgeinDays",
/// values: ["365"],
/// }],
/// }],
/// });
/// const exampleVaultLock = new aws.glacier.VaultLock("example", {
/// completeLock: false,
/// policy: example.apply(example => example.json),
/// vaultName: exampleVault.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_vault = aws.glacier.Vault("example", name="example")
/// example = aws.iam.get_policy_document_output(statements=[{
/// "actions": ["glacier:DeleteArchive"],
/// "effect": "Deny",
/// "resources": [example_vault.arn],
/// "conditions": [{
/// "test": "NumericLessThanEquals",
/// "variable": "glacier:ArchiveAgeinDays",
/// "values": ["365"],
/// }],
/// }])
/// example_vault_lock = aws.glacier.VaultLock("example",
/// complete_lock=False,
/// policy=example.json,
/// vault_name=example_vault.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleVault = new Aws.Glacier.Vault("example", new()
/// {
/// Name = "example",
/// });
///
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "glacier:DeleteArchive",
/// },
/// Effect = "Deny",
/// Resources = new[]
/// {
/// exampleVault.Arn,
/// },
/// Conditions = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
/// {
/// Test = "NumericLessThanEquals",
/// Variable = "glacier:ArchiveAgeinDays",
/// Values = new[]
/// {
/// "365",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var exampleVaultLock = new Aws.Glacier.VaultLock("example", new()
/// {
/// CompleteLock = false,
/// Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// VaultName = exampleVault.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glacier"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleVault, err := glacier.NewVault(ctx, "example", &glacier.VaultArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Actions: pulumi.StringArray{
/// pulumi.String("glacier:DeleteArchive"),
/// },
/// Effect: pulumi.String("Deny"),
/// Resources: pulumi.StringArray{
/// exampleVault.Arn,
/// },
/// Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// &iam.GetPolicyDocumentStatementConditionArgs{
/// Test:     pulumi.String("NumericLessThanEquals"),
/// Variable: pulumi.String("glacier:ArchiveAgeinDays"),
/// Values: pulumi.StringArray{
/// pulumi.String("365"),
/// },
/// },
/// },
/// },
/// },
/// }, nil)
/// _, err = glacier.NewVaultLock(ctx, "example", &glacier.VaultLockArgs{
/// CompleteLock: pulumi.Bool(false),
/// Policy: pulumi.String(example.ApplyT(func(example iam.GetPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// VaultName: exampleVault.Name,
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
/// import com.pulumi.aws.glacier.Vault;
/// import com.pulumi.aws.glacier.VaultArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.glacier.VaultLock;
/// import com.pulumi.aws.glacier.VaultLockArgs;
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
/// var exampleVault = new Vault("exampleVault", VaultArgs.builder()
/// .name("example")
/// .build());
///
/// final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("glacier:DeleteArchive")
/// .effect("Deny")
/// .resources(exampleVault.arn())
/// .conditions(GetPolicyDocumentStatementConditionArgs.builder()
/// .test("NumericLessThanEquals")
/// .variable("glacier:ArchiveAgeinDays")
/// .values("365")
/// .build())
/// .build())
/// .build());
///
/// var exampleVaultLock = new VaultLock("exampleVaultLock", VaultLockArgs.builder()
/// .completeLock(false)
/// .policy(example.applyValue(_example -> _example.json()))
/// .vaultName(exampleVault.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleVault:
/// type: aws:glacier:Vault
/// name: example
/// properties:
/// name: example
/// exampleVaultLock:
/// type: aws:glacier:VaultLock
/// name: example
/// properties:
/// completeLock: false
/// policy: ${example.json}
/// vaultName: ${exampleVault.name}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - glacier:DeleteArchive
/// effect: Deny
/// resources:
/// - ${exampleVault.arn}
/// conditions:
/// - test: NumericLessThanEquals
/// variable: glacier:ArchiveAgeinDays
/// values:
/// - '365'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Permanently Applying Glacier Vault Lock Policy
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glacier.VaultLock("example", {
/// completeLock: true,
/// policy: exampleAwsIamPolicyDocument.json,
/// vaultName: exampleAwsGlacierVault.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glacier.VaultLock("example",
/// complete_lock=True,
/// policy=example_aws_iam_policy_document["json"],
/// vault_name=example_aws_glacier_vault["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Glacier.VaultLock("example", new()
/// {
/// CompleteLock = true,
/// Policy = exampleAwsIamPolicyDocument.Json,
/// VaultName = exampleAwsGlacierVault.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glacier"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glacier.NewVaultLock(ctx, "example", &glacier.VaultLockArgs{
/// CompleteLock: pulumi.Bool(true),
/// Policy:       pulumi.Any(exampleAwsIamPolicyDocument.Json),
/// VaultName:    pulumi.Any(exampleAwsGlacierVault.Name),
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
/// import com.pulumi.aws.glacier.VaultLock;
/// import com.pulumi.aws.glacier.VaultLockArgs;
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
/// var example = new VaultLock("example", VaultLockArgs.builder()
/// .completeLock(true)
/// .policy(exampleAwsIamPolicyDocument.json())
/// .vaultName(exampleAwsGlacierVault.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glacier:VaultLock
/// properties:
/// completeLock: true
/// policy: ${exampleAwsIamPolicyDocument.json}
/// vaultName: ${exampleAwsGlacierVault.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Glacier Vault Locks using the Glacier Vault name. For example:
///
/// ```sh
/// $ pulumi import aws:glacier/vaultLock:VaultLock example example-vault
/// ```
class VaultLock extends CustomResource {
  /// Boolean whether to permanently apply this Glacier Lock Policy. Once completed, this cannot be undone. If set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, the Glacier Lock Policy remains in a testing mode for 24 hours. After that time, the Glacier Lock Policy is automatically removed by Glacier and the this provider resource will show as needing recreation. Changing this from <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> will show as resource recreation, which is expected. Changing this from <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> is not possible unless the Glacier Vault is recreated at the same time.
  late final Output<bool> completeLock;

  /// Allow this provider to ignore the error returned when attempting to delete the Glacier Lock Policy. This can be used to delete or recreate the Glacier Vault via this provider, for example, if the Glacier Vault Lock policy permits that action. This should only be used in conjunction with <span pulumi-lang-nodejs="`completeLock`" pulumi-lang-dotnet="`CompleteLock`" pulumi-lang-go="`completeLock`" pulumi-lang-python="`complete_lock`" pulumi-lang-yaml="`completeLock`" pulumi-lang-java="`completeLock`">`complete_lock`</span> being set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> ignoreDeletionError;

  /// JSON string containing the IAM policy to apply as the Glacier Vault Lock policy.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the Glacier Vault.
  late final Output<String> vaultName;

  VaultLock(
    String name, {
    VaultLockArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glacier/vaultLock:VaultLock',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.completeLock = Output.createUnknown<bool>();
    this.ignoreDeletionError = Output.createUnknown<bool?>();
    this.policy = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.vaultName = Output.createUnknown<String>();
  }
}
