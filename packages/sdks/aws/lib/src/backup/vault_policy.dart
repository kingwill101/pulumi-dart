import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_policy_args.dart';
import 'vault_policy_state.dart';

/// Provides an AWS Backup vault policy resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const exampleVault = new aws.backup.Vault("example", {name: "example"});
/// const example = pulumi.all([current, exampleVault.arn]).apply(([current, arn]) => aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "AWS",
///             identifiers: [current.accountId],
///         }],
///         actions: [
///             "backup:DescribeBackupVault",
///             "backup:DeleteBackupVault",
///             "backup:PutBackupVaultAccessPolicy",
///             "backup:DeleteBackupVaultAccessPolicy",
///             "backup:GetBackupVaultAccessPolicy",
///             "backup:StartBackupJob",
///             "backup:GetBackupVaultNotifications",
///             "backup:PutBackupVaultNotifications",
///         ],
///         resources: [arn],
///     }],
/// }));
/// const exampleVaultPolicy = new aws.backup.VaultPolicy("example", {
///     backupVaultName: exampleVault.name,
///     policy: example.apply(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example_vault = aws.backup.Vault("example", name="example")
/// example = example_vault.arn.apply(lambda arn: aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "AWS",
///         "identifiers": [current.account_id],
///     }],
///     "actions": [
///         "backup:DescribeBackupVault",
///         "backup:DeleteBackupVault",
///         "backup:PutBackupVaultAccessPolicy",
///         "backup:DeleteBackupVaultAccessPolicy",
///         "backup:GetBackupVaultAccessPolicy",
///         "backup:StartBackupJob",
///         "backup:GetBackupVaultNotifications",
///         "backup:PutBackupVaultNotifications",
///     ],
///     "resources": [arn],
/// }]))
/// example_vault_policy = aws.backup.VaultPolicy("example",
///     backup_vault_name=example_vault.name,
///     policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var exampleVault = new Aws.Backup.Vault("example", new()
///     {
///         Name = "example",
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "backup:DescribeBackupVault",
///                     "backup:DeleteBackupVault",
///                     "backup:PutBackupVaultAccessPolicy",
///                     "backup:DeleteBackupVaultAccessPolicy",
///                     "backup:GetBackupVaultAccessPolicy",
///                     "backup:StartBackupJob",
///                     "backup:GetBackupVaultNotifications",
///                     "backup:PutBackupVaultNotifications",
///                 },
///                 Resources = new[]
///                 {
///                     exampleVault.Arn,
///                 },
///             },
///         },
///     });
///
///     var exampleVaultPolicy = new Aws.Backup.VaultPolicy("example", new()
///     {
///         BackupVaultName = exampleVault.Name,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleVault, err := backup.NewVault(ctx, "example", &backup.VaultArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// example := exampleVault.Arn.ApplyT(func(arn string) (iam.GetPolicyDocumentResult, error) {
/// return iam.GetPolicyDocumentResult(interface{}(iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement([]iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef(pulumi.String(pulumi.StringRef("Allow"))),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: interface{}{
/// current.AccountId,
/// },
/// },
/// },
/// Actions: []string{
/// "backup:DescribeBackupVault",
/// "backup:DeleteBackupVault",
/// "backup:PutBackupVaultAccessPolicy",
/// "backup:DeleteBackupVaultAccessPolicy",
/// "backup:GetBackupVaultAccessPolicy",
/// "backup:StartBackupJob",
/// "backup:GetBackupVaultNotifications",
/// "backup:PutBackupVaultNotifications",
/// },
/// Resources: []string{
/// arn,
/// },
/// },
/// }),
/// }, nil))), nil
/// }).(iam.GetPolicyDocumentResultOutput)
/// _, err = backup.NewVaultPolicy(ctx, "example", &backup.VaultPolicyArgs{
/// BackupVaultName: exampleVault.Name,
/// Policy: pulumi.String(example.ApplyT(func(example iam.GetPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.backup.Vault;
/// import com.pulumi.aws.backup.VaultArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.backup.VaultPolicy;
/// import com.pulumi.aws.backup.VaultPolicyArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var exampleVault = new Vault("exampleVault", VaultArgs.builder()
///             .name("example")
///             .build());
///
///         final var example = exampleVault.arn().applyValue(_arn -> IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers(current.accountId())
///                     .build())
///                 .actions(
///                     "backup:DescribeBackupVault",
///                     "backup:DeleteBackupVault",
///                     "backup:PutBackupVaultAccessPolicy",
///                     "backup:DeleteBackupVaultAccessPolicy",
///                     "backup:GetBackupVaultAccessPolicy",
///                     "backup:StartBackupJob",
///                     "backup:GetBackupVaultNotifications",
///                     "backup:PutBackupVaultNotifications")
///                 .resources(_arn)
///                 .build())
///             .build()));
///
///         var exampleVaultPolicy = new VaultPolicy("exampleVaultPolicy", VaultPolicyArgs.builder()
///             .backupVaultName(exampleVault.name())
///             .policy(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleVault:
///     type: aws:backup:Vault
///     name: example
///     properties:
///       name: example
///   exampleVaultPolicy:
///     type: aws:backup:VaultPolicy
///     name: example
///     properties:
///       backupVaultName: ${exampleVault.name}
///       policy: ${example.json}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: AWS
///                 identifiers:
///                   - ${current.accountId}
///             actions:
///               - backup:DescribeBackupVault
///               - backup:DeleteBackupVault
///               - backup:PutBackupVaultAccessPolicy
///               - backup:DeleteBackupVaultAccessPolicy
///               - backup:GetBackupVaultAccessPolicy
///               - backup:StartBackupJob
///               - backup:GetBackupVaultNotifications
///               - backup:PutBackupVaultNotifications
///             resources:
///               - ${exampleVault.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup vault policy using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/vaultPolicy:VaultPolicy test TestVault
/// ```
class VaultPolicy extends pulumi.CustomResource {
  /// The ARN of the vault.
  late final pulumi.Output<String> backupVaultArn;
  /// Name of the backup vault to add policy for.
  late final pulumi.Output<String> backupVaultName;
  /// The backup vault access policy document in JSON format.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [VaultPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VaultPolicy]. {@macro pulumi_backup_vault_policy_vault_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VaultPolicy(
    String name, {
    VaultPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/vaultPolicy:VaultPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupVaultArn = registerOutput<String>('backupVaultArn');
    backupVaultName = registerOutput<String>('backupVaultName');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [VaultPolicy] resource's state with the given [name] and [id].
  static VaultPolicy get(
    String name,
    pulumi.Input<String> id, {
    VaultPolicyState? state,
  }) {
    return VaultPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VaultPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/vaultPolicy:VaultPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupVaultArn = registerOutput<String>('backupVaultArn');
    backupVaultName = registerOutput<String>('backupVaultName');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }
}
