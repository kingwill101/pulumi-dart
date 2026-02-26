import 'package:pulumi/pulumi.dart';
import '../fsx_open_zfs_file_system_protocol/fsx_open_zfs_file_system_protocol.dart';
import 'fsx_open_zfs_file_system_args.dart';

/// Manages an AWS DataSync FSx OpenZfs Location.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.FsxOpenZfsFileSystem("example", {
/// fsxFilesystemArn: exampleAwsFsxOpenzfsFileSystem.arn,
/// securityGroupArns: [exampleAwsSecurityGroup.arn],
/// protocol: {
/// nfs: {
/// mountOptions: {
/// version: "AUTOMATIC",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.FsxOpenZfsFileSystem("example",
/// fsx_filesystem_arn=example_aws_fsx_openzfs_file_system["arn"],
/// security_group_arns=[example_aws_security_group["arn"]],
/// protocol={
/// "nfs": {
/// "mount_options": {
/// "version": "AUTOMATIC",
/// },
/// },
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
/// var example = new Aws.DataSync.FsxOpenZfsFileSystem("example", new()
/// {
/// FsxFilesystemArn = exampleAwsFsxOpenzfsFileSystem.Arn,
/// SecurityGroupArns = new[]
/// {
/// exampleAwsSecurityGroup.Arn,
/// },
/// Protocol = new Aws.DataSync.Inputs.FsxOpenZfsFileSystemProtocolArgs
/// {
/// Nfs = new Aws.DataSync.Inputs.FsxOpenZfsFileSystemProtocolNfsArgs
/// {
/// MountOptions = new Aws.DataSync.Inputs.FsxOpenZfsFileSystemProtocolNfsMountOptionsArgs
/// {
/// Version = "AUTOMATIC",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datasync.NewFsxOpenZfsFileSystem(ctx, "example", &datasync.FsxOpenZfsFileSystemArgs{
/// FsxFilesystemArn: pulumi.Any(exampleAwsFsxOpenzfsFileSystem.Arn),
/// SecurityGroupArns: pulumi.StringArray{
/// exampleAwsSecurityGroup.Arn,
/// },
/// Protocol: &datasync.FsxOpenZfsFileSystemProtocolArgs{
/// Nfs: &datasync.FsxOpenZfsFileSystemProtocolNfsArgs{
/// MountOptions: &datasync.FsxOpenZfsFileSystemProtocolNfsMountOptionsArgs{
/// Version: pulumi.String("AUTOMATIC"),
/// },
/// },
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
/// import com.pulumi.aws.datasync.FsxOpenZfsFileSystem;
/// import com.pulumi.aws.datasync.FsxOpenZfsFileSystemArgs;
/// import com.pulumi.aws.datasync.inputs.FsxOpenZfsFileSystemProtocolArgs;
/// import com.pulumi.aws.datasync.inputs.FsxOpenZfsFileSystemProtocolNfsArgs;
/// import com.pulumi.aws.datasync.inputs.FsxOpenZfsFileSystemProtocolNfsMountOptionsArgs;
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
/// var example = new FsxOpenZfsFileSystem("example", FsxOpenZfsFileSystemArgs.builder()
/// .fsxFilesystemArn(exampleAwsFsxOpenzfsFileSystem.arn())
/// .securityGroupArns(exampleAwsSecurityGroup.arn())
/// .protocol(FsxOpenZfsFileSystemProtocolArgs.builder()
/// .nfs(FsxOpenZfsFileSystemProtocolNfsArgs.builder()
/// .mountOptions(FsxOpenZfsFileSystemProtocolNfsMountOptionsArgs.builder()
/// .version("AUTOMATIC")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:datasync:FsxOpenZfsFileSystem
/// properties:
/// fsxFilesystemArn: ${exampleAwsFsxOpenzfsFileSystem.arn}
/// securityGroupArns:
/// - ${exampleAwsSecurityGroup.arn}
/// protocol:
/// nfs:
/// mountOptions:
/// version: AUTOMATIC
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.datasync.FsxOpenZfsFileSystem`" pulumi-lang-dotnet="`aws.datasync.FsxOpenZfsFileSystem`" pulumi-lang-go="`datasync.FsxOpenZfsFileSystem`" pulumi-lang-python="`datasync.FsxOpenZfsFileSystem`" pulumi-lang-yaml="`aws.datasync.FsxOpenZfsFileSystem`" pulumi-lang-java="`aws.datasync.FsxOpenZfsFileSystem`">`aws.datasync.FsxOpenZfsFileSystem`</span> using the `DataSync-ARN#FSx-openzfs-ARN`. For example:
///
/// ```sh
/// $ pulumi import aws:datasync/fsxOpenZfsFileSystem:FsxOpenZfsFileSystem example arn:aws:datasync:us-west-2:123456789012:location/loc-12345678901234567#arn:aws:fsx:us-west-2:123456789012:file-system/fs-08e04cd442c1bb94a
/// ```
class FsxOpenZfsFileSystem extends CustomResource {
  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final Output<String> arn;

  /// The time that the FSx for openzfs location was created.
  late final Output<String> creationTime;

  /// The Amazon Resource Name (ARN) for the FSx for OpenZfs file system.
  late final Output<String> fsxFilesystemArn;

  /// The type of protocol that DataSync uses to access your file system. See below.
  late final Output<FsxOpenZfsFileSystemProtocol> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for openzfs file system.
  late final Output<List<String>> securityGroupArns;

  /// Subdirectory to perform actions as source or destination. Must start with `/fsx`.
  late final Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The URL of the FSx for openzfs location that was described.
  late final Output<String> uri;

  FsxOpenZfsFileSystem(
    String name, {
    FsxOpenZfsFileSystemArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datasync/fsxOpenZfsFileSystem:FsxOpenZfsFileSystem',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.creationTime = Output.createUnknown<String>();
    this.fsxFilesystemArn = Output.createUnknown<String>();
    this.protocol = Output.createUnknown<FsxOpenZfsFileSystemProtocol>();
    this.region = Output.createUnknown<String>();
    this.securityGroupArns = Output.createUnknown<List<String>>();
    this.subdirectory = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.uri = Output.createUnknown<String>();
  }
}
