import 'package:pulumi/pulumi.dart';
import 'vault_lock_configuration_args.dart';

/// Provides an AWS Backup vault lock configuration resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.backup.VaultLockConfiguration("test", {
/// backupVaultName: "example_backup_vault",
/// changeableForDays: 3,
/// maxRetentionDays: 1200,
/// minRetentionDays: 7,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.backup.VaultLockConfiguration("test",
/// backup_vault_name="example_backup_vault",
/// changeable_for_days=3,
/// max_retention_days=1200,
/// min_retention_days=7)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Backup.VaultLockConfiguration("test", new()
/// {
/// BackupVaultName = "example_backup_vault",
/// ChangeableForDays = 3,
/// MaxRetentionDays = 1200,
/// MinRetentionDays = 7,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := backup.NewVaultLockConfiguration(ctx, "test", &backup.VaultLockConfigurationArgs{
/// BackupVaultName:   pulumi.String("example_backup_vault"),
/// ChangeableForDays: pulumi.Int(3),
/// MaxRetentionDays:  pulumi.Int(1200),
/// MinRetentionDays:  pulumi.Int(7),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new VaultLockConfiguration("test", VaultLockConfigurationArgs.builder()
/// .backupVaultName("example_backup_vault")
/// .changeableForDays(3)
/// .maxRetentionDays(1200)
/// .minRetentionDays(7)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:backup:VaultLockConfiguration
/// properties:
/// backupVaultName: example_backup_vault
/// changeableForDays: 3
/// maxRetentionDays: 1200
/// minRetentionDays: 7
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Backup vault lock configuration using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:backup/vaultLockConfiguration:VaultLockConfiguration test TestVault
/// ```
class VaultLockConfiguration extends CustomResource {
  /// The ARN of the vault.
  late final Output<String> backupVaultArn;

  /// Name of the backup vault to add a lock configuration for.
  late final Output<String> backupVaultName;

  /// The number of days before the lock date. If omitted creates a vault lock in <span pulumi-lang-nodejs="`governance`" pulumi-lang-dotnet="`Governance`" pulumi-lang-go="`governance`" pulumi-lang-python="`governance`" pulumi-lang-yaml="`governance`" pulumi-lang-java="`governance`">`governance`</span> mode, otherwise it will create a vault lock in <span pulumi-lang-nodejs="`compliance`" pulumi-lang-dotnet="`Compliance`" pulumi-lang-go="`compliance`" pulumi-lang-python="`compliance`" pulumi-lang-yaml="`compliance`" pulumi-lang-java="`compliance`">`compliance`</span> mode.
  late final Output<int?> changeableForDays;

  /// The maximum retention period that the vault retains its recovery points.
  late final Output<int?> maxRetentionDays;

  /// The minimum retention period that the vault retains its recovery points.
  late final Output<int?> minRetentionDays;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  VaultLockConfiguration(
    String name, {
    VaultLockConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:backup/vaultLockConfiguration:VaultLockConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupVaultArn = Output.createUnknown<String>();
    this.backupVaultName = Output.createUnknown<String>();
    this.changeableForDays = Output.createUnknown<int?>();
    this.maxRetentionDays = Output.createUnknown<int?>();
    this.minRetentionDays = Output.createUnknown<int?>();
    this.region = Output.createUnknown<String>();
  }
}
