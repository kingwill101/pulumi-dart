import 'package:pulumi/pulumi.dart' as pulumi;
import 'logically_air_gapped_vault_args.dart';
import 'logically_air_gapped_vault_timeouts.dart';

/// Resource for managing an AWS Backup Logically Air Gapped Vault.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.backup.LogicallyAirGappedVault("example", {
///     name: "lag-example-vault",
///     maxRetentionDays: 7,
///     minRetentionDays: 7,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.LogicallyAirGappedVault("example",
///     name="lag-example-vault",
///     max_retention_days=7,
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
///     var example = new Aws.Backup.LogicallyAirGappedVault("example", new()
///     {
///         Name = "lag-example-vault",
///         MaxRetentionDays = 7,
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
/// 		_, err := backup.NewLogicallyAirGappedVault(ctx, "example", &backup.LogicallyAirGappedVaultArgs{
/// 			Name:             pulumi.String("lag-example-vault"),
/// 			MaxRetentionDays: pulumi.Int(7),
/// 			MinRetentionDays: pulumi.Int(7),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new LogicallyAirGappedVault("example", LogicallyAirGappedVaultArgs.builder()
///             .name("lag-example-vault")
///             .maxRetentionDays(7)
///             .minRetentionDays(7)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:backup:LogicallyAirGappedVault
///     properties:
///       name: lag-example-vault
///       maxRetentionDays: 7
///       minRetentionDays: 7
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup Logically Air Gapped Vault using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/logicallyAirGappedVault:LogicallyAirGappedVault example lag-example-vault
/// ```
class LogicallyAirGappedVault extends pulumi.CustomResource {
  /// The ARN of the Logically Air Gapped Backup Vault.
  late final pulumi.Output<String> arn;

  /// The AWS KMS key identifier (ARN) used to encrypt the backups in the logically air-gapped vault.
  late final pulumi.Output<String> encryptionKeyArn;

  /// Maximum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  late final pulumi.Output<int> maxRetentionDays;

  /// Minimum retention period that the Logically Air Gapped Backup Vault retains recovery points.
  late final pulumi.Output<int> minRetentionDays;

  /// Name of the Logically Air Gapped Backup Vault to create.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Metadata that you can assign to help organize the resources that you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<LogicallyAirGappedVaultTimeouts?> timeouts;

  /// Creates a new [LogicallyAirGappedVault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogicallyAirGappedVault]. {@macro pulumi_backup_logically_air_gapped_vault_logically_air_gapped_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogicallyAirGappedVault(
    String name, {
    LogicallyAirGappedVaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/logicallyAirGappedVault:LogicallyAirGappedVault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.encryptionKeyArn = registerOutput<String>('encryptionKeyArn');
    this.maxRetentionDays = registerOutput<int>('maxRetentionDays');
    this.minRetentionDays = registerOutput<int>('minRetentionDays');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<LogicallyAirGappedVaultTimeouts?>('timeouts');
  }
}
