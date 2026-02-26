import 'package:pulumi/pulumi.dart';
import '../backup_policy_backup_policy/backup_policy_backup_policy.dart';
import 'backup_policy_args.dart';

/// Provides an Elastic File System (EFS) Backup Policy resource.
/// Backup policies turn automatic backups on or off for an existing file system.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fs = new aws.efs.FileSystem("fs", {creationToken: "my-product"});
/// const policy = new aws.efs.BackupPolicy("policy", {
/// fileSystemId: fs.id,
/// backupPolicy: {
/// status: "ENABLED",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// fs = aws.efs.FileSystem("fs", creation_token="my-product")
/// policy = aws.efs.BackupPolicy("policy",
/// file_system_id=fs.id,
/// backup_policy={
/// "status": "ENABLED",
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
/// var fs = new Aws.Efs.FileSystem("fs", new()
/// {
/// CreationToken = "my-product",
/// });
///
/// var policy = new Aws.Efs.BackupPolicy("policy", new()
/// {
/// FileSystemId = fs.Id,
/// BackupPolicyDetails = new Aws.Efs.Inputs.BackupPolicyBackupPolicyArgs
/// {
/// Status = "ENABLED",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
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
/// _, err = efs.NewBackupPolicy(ctx, "policy", &efs.BackupPolicyArgs{
/// FileSystemId: fs.ID(),
/// BackupPolicy: &efs.BackupPolicyBackupPolicyArgs{
/// Status: pulumi.String("ENABLED"),
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
/// import com.pulumi.aws.efs.FileSystem;
/// import com.pulumi.aws.efs.FileSystemArgs;
/// import com.pulumi.aws.efs.BackupPolicy;
/// import com.pulumi.aws.efs.BackupPolicyArgs;
/// import com.pulumi.aws.efs.inputs.BackupPolicyBackupPolicyArgs;
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
/// var policy = new BackupPolicy("policy", BackupPolicyArgs.builder()
/// .fileSystemId(fs.id())
/// .backupPolicy(BackupPolicyBackupPolicyArgs.builder()
/// .status("ENABLED")
/// .build())
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
/// policy:
/// type: aws:efs:BackupPolicy
/// properties:
/// fileSystemId: ${fs.id}
/// backupPolicy:
/// status: ENABLED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import the EFS backup policies using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:efs/backupPolicy:BackupPolicy example fs-6fa144c6
/// ```
class BackupPolicy extends CustomResource {
  /// A<span pulumi-lang-nodejs=" backupPolicy " pulumi-lang-dotnet=" BackupPolicy " pulumi-lang-go=" backupPolicy " pulumi-lang-python=" backup_policy " pulumi-lang-yaml=" backupPolicy " pulumi-lang-java=" backupPolicy "> backup_policy </span>object (documented below).
  late final Output<BackupPolicyBackupPolicy> backupPolicy;

  /// The ID of the EFS file system.
  late final Output<String> fileSystemId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:efs/backupPolicy:BackupPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupPolicy = Output.createUnknown<BackupPolicyBackupPolicy>();
    this.fileSystemId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
