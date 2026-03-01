import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_lock_configuration_args.dart';

/// Provides an AWS Backup vault lock configuration resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.backup.VaultLockConfiguration("test", {
///     backupVaultName: "example_backup_vault",
///     changeableForDays: 3,
///     maxRetentionDays: 1200,
///     minRetentionDays: 7,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.backup.VaultLockConfiguration("test",
///     backup_vault_name="example_backup_vault",
///     changeable_for_days=3,
///     max_retention_days=1200,
///     min_retention_days=7)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Backup.VaultLockConfiguration("test", new()
///     {
///         BackupVaultName = "example_backup_vault",
///         ChangeableForDays = 3,
///         MaxRetentionDays = 1200,
///         MinRetentionDays = 7,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.NewVaultLockConfiguration(ctx, "test", &backup.VaultLockConfigurationArgs{
/// 			BackupVaultName:   pulumi.String("example_backup_vault"),
/// 			ChangeableForDays: pulumi.Int(3),
/// 			MaxRetentionDays:  pulumi.Int(1200),
/// 			MinRetentionDays:  pulumi.Int(7),
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
/// import com.pulumi.aws.backup.VaultLockConfiguration;
/// import com.pulumi.aws.backup.VaultLockConfigurationArgs;
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
///         var test = new VaultLockConfiguration("test", VaultLockConfigurationArgs.builder()
///             .backupVaultName("example_backup_vault")
///             .changeableForDays(3)
///             .maxRetentionDays(1200)
///             .minRetentionDays(7)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:backup:VaultLockConfiguration
///     properties:
///       backupVaultName: example_backup_vault
///       changeableForDays: 3
///       maxRetentionDays: 1200
///       minRetentionDays: 7
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup vault lock configuration using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/vaultLockConfiguration:VaultLockConfiguration test TestVault
/// ```
class VaultLockConfiguration extends pulumi.CustomResource {
  /// The ARN of the vault.
  late final pulumi.Output<String> backupVaultArn;

  /// Name of the backup vault to add a lock configuration for.
  late final pulumi.Output<String> backupVaultName;

  /// The number of days before the lock date. If omitted creates a vault lock in `governance` mode, otherwise it will create a vault lock in `compliance` mode.
  late final pulumi.Output<int?> changeableForDays;

  /// The maximum retention period that the vault retains its recovery points.
  late final pulumi.Output<int?> maxRetentionDays;

  /// The minimum retention period that the vault retains its recovery points.
  late final pulumi.Output<int?> minRetentionDays;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [VaultLockConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VaultLockConfiguration]. {@macro pulumi_backup_vault_lock_configuration_vault_lock_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VaultLockConfiguration(
    String name, {
    VaultLockConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:backup/vaultLockConfiguration:VaultLockConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.backupVaultArn = registerOutput<String>('backupVaultArn');
    this.backupVaultName = registerOutput<String>('backupVaultName');
    this.changeableForDays = registerOutput<int?>('changeableForDays');
    this.maxRetentionDays = registerOutput<int?>('maxRetentionDays');
    this.minRetentionDays = registerOutput<int?>('minRetentionDays');
    this.region = registerOutput<String>('region');
  }
}
