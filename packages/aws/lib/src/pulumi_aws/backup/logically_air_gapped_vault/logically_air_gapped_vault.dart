import 'package:pulumi/pulumi.dart';
import '../logically_air_gapped_vault_timeouts/logically_air_gapped_vault_timeouts.dart';
import 'logically_air_gapped_vault_args.dart';

/// Resource for managing an AWS Backup Logically Air Gapped Vault.
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
/// const example = new aws.backup.LogicallyAirGappedVault("example", {
/// name: "lag-example-vault",
/// maxRetentionDays: 7,
/// minRetentionDays: 7,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.LogicallyAirGappedVault("example",
/// name="lag-example-vault",
/// max_retention_days=7,
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
/// var example = new Aws.Backup.LogicallyAirGappedVault("example", new()
/// {
/// Name = "lag-example-vault",
/// MaxRetentionDays = 7,
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
/// _, err := backup.NewLogicallyAirGappedVault(ctx, "example", &backup.LogicallyAirGappedVaultArgs{
/// Name:             pulumi.String("lag-example-vault"),
/// MaxRetentionDays: pulumi.Int(7),
/// MinRetentionDays: pulumi.Int(7),
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
/// import com.pulumi.aws.backup.LogicallyAirGappedVault;
/// import com.pulumi.aws.backup.LogicallyAirGappedVaultArgs;
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
/// var example = new LogicallyAirGappedVault("example", LogicallyAirGappedVaultArgs.builder()
/// .name("lag-example-vault")
/// .maxRetentionDays(7)
/// .minRetentionDays(7)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:backup:LogicallyAirGappedVault
/// properties:
/// name: lag-example-vault
/// maxRetentionDays: 7
/// minRetentionDays: 7
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Backup Logically Air Gapped Vault using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:backup/logicallyAirGappedVault:LogicallyAirGappedVault example lag-example-vault
/// ```
class LogicallyAirGappedVault extends CustomResource {
  /// The ARN of the Logically Air Gapped Backup Vault.
  late final Output<String> arn;

  /// The AWS KMS key identifier (ARN) used to encrypt the backups in the logically air-gapped vault.
  late final Output<String> encryptionKeyArn;

  /// Maximum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  late final Output<int> maxRetentionDays;

  /// Minimum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  late final Output<int> minRetentionDays;

  /// Name of the Logically Air Gapped Backup Vault to create.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Metadata that you can assign to help organize the resources that you create. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<LogicallyAirGappedVaultTimeouts?> timeouts;

  LogicallyAirGappedVault(
    String name, {
    LogicallyAirGappedVaultArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:backup/logicallyAirGappedVault:LogicallyAirGappedVault',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.encryptionKeyArn = Output.createUnknown<String>();
    this.maxRetentionDays = Output.createUnknown<int>();
    this.minRetentionDays = Output.createUnknown<int>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<LogicallyAirGappedVaultTimeouts?>();
  }
}
