import 'package:pulumi/pulumi.dart';
import 'location_fsx_windows_args.dart';

/// Manages an AWS DataSync FSx Windows Location.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.LocationFsxWindows("example", {
/// fsxFilesystemArn: exampleAwsFsxWindowsFileSystem.arn,
/// user: "SomeUser",
/// password: "SuperSecretPassw0rd",
/// securityGroupArns: [exampleAwsSecurityGroup.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.LocationFsxWindows("example",
/// fsx_filesystem_arn=example_aws_fsx_windows_file_system["arn"],
/// user="SomeUser",
/// password="SuperSecretPassw0rd",
/// security_group_arns=[example_aws_security_group["arn"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DataSync.LocationFsxWindows("example", new()
/// {
/// FsxFilesystemArn = exampleAwsFsxWindowsFileSystem.Arn,
/// User = "SomeUser",
/// Password = "SuperSecretPassw0rd",
/// SecurityGroupArns = new[]
/// {
/// exampleAwsSecurityGroup.Arn,
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
/// _, err := datasync.NewLocationFsxWindows(ctx, "example", &datasync.LocationFsxWindowsArgs{
/// FsxFilesystemArn: pulumi.Any(exampleAwsFsxWindowsFileSystem.Arn),
/// User:             pulumi.String("SomeUser"),
/// Password:         pulumi.String("SuperSecretPassw0rd"),
/// SecurityGroupArns: pulumi.StringArray{
/// exampleAwsSecurityGroup.Arn,
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
/// import com.pulumi.aws.datasync.LocationFsxWindows;
/// import com.pulumi.aws.datasync.LocationFsxWindowsArgs;
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
/// var example = new LocationFsxWindows("example", LocationFsxWindowsArgs.builder()
/// .fsxFilesystemArn(exampleAwsFsxWindowsFileSystem.arn())
/// .user("SomeUser")
/// .password("SuperSecretPassw0rd")
/// .securityGroupArns(exampleAwsSecurityGroup.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:datasync:LocationFsxWindows
/// properties:
/// fsxFilesystemArn: ${exampleAwsFsxWindowsFileSystem.arn}
/// user: SomeUser
/// password: SuperSecretPassw0rd
/// securityGroupArns:
/// - ${exampleAwsSecurityGroup.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.datasync.LocationFsxWindows`" pulumi-lang-dotnet="`aws.datasync.LocationFsxWindows`" pulumi-lang-go="`datasync.LocationFsxWindows`" pulumi-lang-python="`datasync.LocationFsxWindows`" pulumi-lang-yaml="`aws.datasync.LocationFsxWindows`" pulumi-lang-java="`aws.datasync.LocationFsxWindows`">`aws.datasync.LocationFsxWindows`</span> using the `DataSync-ARN#FSx-Windows-ARN`. For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationFsxWindows:LocationFsxWindows example arn:aws:datasync:us-west-2:123456789012:location/loc-12345678901234567#arn:aws:fsx:us-west-2:476956259333:file-system/fs-08e04cd442c1bb94a
/// ```
class LocationFsxWindows extends CustomResource {
  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final Output<String> arn;

  /// The time that the FSx for Windows location was created.
  late final Output<String> creationTime;

  /// The name of the Windows domain that the FSx for Windows server belongs to.
  late final Output<String?> domain;

  /// The Amazon Resource Name (ARN) for the FSx for Windows file system.
  late final Output<String> fsxFilesystemArn;

  /// The password of the user who has the permissions to access files and folders in the FSx for Windows file system.
  late final Output<String> password;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Windows file system.
  late final Output<List<String>> securityGroupArns;

  /// Subdirectory to perform actions as source or destination.
  late final Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The URL of the FSx for Windows location that was described.
  late final Output<String> uri;

  /// The user who has the permissions to access files and folders in the FSx for Windows file system.
  late final Output<String> user;

  LocationFsxWindows(
    String name, {
    LocationFsxWindowsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationFsxWindows:LocationFsxWindows',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationTime = registerOutput<String>('creationTime');
    this.domain = registerOutput<String?>('domain');
    this.fsxFilesystemArn = registerOutput<String>('fsxFilesystemArn');
    this.password = registerOutput<String>('password');
    this.region = registerOutput<String>('region');
    this.securityGroupArns = registerOutput<List<String>>('securityGroupArns');
    this.subdirectory = registerOutput<String>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
    this.user = registerOutput<String>('user');
  }
}
