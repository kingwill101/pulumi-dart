import 'package:pulumi/pulumi.dart';
import 'vault_args.dart';

/// Provides an AWS Backup vault resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.backup.Vault("example", {
/// name: "example_backup_vault",
/// kmsKeyArn: exampleAwsKmsKey.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.Vault("example",
/// name="example_backup_vault",
/// kms_key_arn=example_aws_kms_key["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Backup.Vault("example", new()
/// {
/// Name = "example_backup_vault",
/// KmsKeyArn = exampleAwsKmsKey.Arn,
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
/// _, err := backup.NewVault(ctx, "example", &backup.VaultArgs{
/// Name:      pulumi.String("example_backup_vault"),
/// KmsKeyArn: pulumi.Any(exampleAwsKmsKey.Arn),
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
/// import com.pulumi.aws.backup.Vault;
/// import com.pulumi.aws.backup.VaultArgs;
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
/// var example = new Vault("example", VaultArgs.builder()
/// .name("example_backup_vault")
/// .kmsKeyArn(exampleAwsKmsKey.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:backup:Vault
/// properties:
/// name: example_backup_vault
/// kmsKeyArn: ${exampleAwsKmsKey.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Backup vault using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:backup/vault:Vault test-vault TestVault
/// ```
class Vault extends CustomResource {
  /// The ARN of the vault.
  late final Output<String> arn;

  /// A boolean that indicates that all recovery points stored in the vault are deleted so that the vault can be destroyed without error.
  late final Output<bool?> forceDestroy;

  /// The server-side encryption key that is used to protect your backups.
  late final Output<String> kmsKeyArn;

  /// Name of the backup vault to create.
  late final Output<String> name;

  /// The number of recovery points that are stored in a backup vault.
  late final Output<int> recoveryPoints;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Metadata that you can assign to help organize the resources that you create. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Vault(
    String name, {
    VaultArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:backup/vault:Vault',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.recoveryPoints = registerOutput<int>('recoveryPoints');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
